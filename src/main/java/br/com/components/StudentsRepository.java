package br.com.components;

import br.com.domain.Student;
import java.util.List;

public interface StudentsRepository {

    void create(Student student);

    void delete(String id);

    Student findById(String id);

    List<Student> list();

    Student update(Student student);

}
