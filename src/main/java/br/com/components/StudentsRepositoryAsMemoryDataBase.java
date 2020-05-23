package br.com.components;

import br.com.domain.Student;
import java.util.ArrayList;
import java.util.List;
import javax.enterprise.context.ApplicationScoped;

@ApplicationScoped
public class StudentsRepositoryAsMemoryDataBase implements StudentsRepository {

    private List<Student> studentsDB;

    public StudentsRepositoryAsMemoryDataBase() {
        this.studentsDB = new ArrayList<>();
        this.studentsDB.add(new Student("joao", "123", 20));

    }
   
    @Override
    public void create(Student student) {
        this.studentsDB.add(student);
    }

    @Override
    public void delete(String id) {
        studentsDB.removeIf(student -> student.getId().equals(id));
    }

    @Override
    public Student findById(String id) {
        return studentsDB.stream()
                .filter(c -> c.getId().equals(id))
                .findFirst().orElse(null);
    }

    @Override
    public List<Student> list() {
        return this.studentsDB;
    }

    @Override
    public Student update(Student student) {
        for (int i = 0; i < studentsDB.size(); i++) {
            if (studentsDB.get(i).getId().equals(student.getId())) {
                studentsDB.set(i, student);
            }
        }
        return student;
    }

}
