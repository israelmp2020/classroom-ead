package br.com.controllers;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Get;
import br.com.caelum.vraptor.Path;
import br.com.caelum.vraptor.Post;
import br.com.caelum.vraptor.Result;
import br.com.caelum.vraptor.interceptor.IncludeParameters;
import br.com.annotations.Auth;
import br.com.domain.Student;
import br.com.domain.StudentsService;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.inject.Inject;

@Auth
@Controller
@Path("/students")
public class StudentsController {

    @Inject
    private Result result;

    @Inject
    private StudentsService studentsService;

    @Get("new")
    public void create() {

    }
    
    @Get("list")
    public void list() {

    }
    @Post("")
    @IncludeParameters
    public void store(Student student) {
        try {
            studentsService.create(student);
            result.redirectTo(this).getStudents();
        } catch (Exception ex) {
            result.include("cpfError", ex.getMessage());
            result.redirectTo(this).create();
        }
    }

    @Post("update")
    public void update(Student student) {
        studentsService.update(student);
        result.redirectTo(this).getStudents();
    }

    @Get("id/{id}")
    public void getStudentsById(String id) {
        Student student = studentsService.findById(id);
        result.include("studentToUpdate", student);
        result.of(this).update(null);
    }

    @Get("")
    public void getStudents() {
        result.include("studentList", studentsService.list());
    }

    @Post("remove")
    public void remove(String id) {
        studentsService.delete(id);
        result.redirectTo(this).getStudents();
    }
}
