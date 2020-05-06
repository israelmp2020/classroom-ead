package br.com.domain;

import br.com.components.StudentsRepository;
import java.util.List;
import javax.enterprise.context.RequestScoped;
import javax.inject.Inject;

@RequestScoped
public class StudentsService {

    @Inject
    private StudentsRepository studentsRepository;

    public void create(Student student) throws Exception {
        this.isValidCPF(student.getCpf());
        this.studentsRepository.create(student);
    }

    public void delete(String id) {
        this.studentsRepository.delete(id);
    }

    public Student findById(String id) {
        return this.studentsRepository.findById(id);
    }

    public List<Student> list() {
        return this.studentsRepository.list();
    }

    public Student update(Student student) {
        return this.studentsRepository.update(student);
    }

    private void isValidCPF(String cpf) throws Exception {
        if (cpf.length() != 11) {
            throw new Exception("CPF Inválido");
        }
    }

}
