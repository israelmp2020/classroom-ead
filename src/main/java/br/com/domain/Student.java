package br.com.domain;

import java.util.Date;
import java.util.UUID;

public class Student {

    private String id;
    private String name;
    private String classTu;
    private Integer age;
    private String numberTe;
    private String email;
    private String cpf;
    private Address address;
    private Date createdAt;

    public Student(String name, String classTu, Integer age, String numberTe, String email, String cpf) {
        this.name = name;
        this.classTu = classTu;
        this.age = age;
        this.numberTe = numberTe;
        this.email = email;
        this.cpf = cpf;
        this.createdAt = new Date();
        this.id = UUID.randomUUID().toString();
    }

    public Student() {
        this.id = UUID.randomUUID().toString();
    }

    public Student(String joao, String string, int i) {
   
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getClassTu() {
        return classTu;
    }

    public void setClassTu(String classTu) {
        this.classTu = classTu;
    }

    public Integer getAge() {
        return age;
    }

    public void setAge(Integer age) {
        this.age = age;
    }

    public String getNumberTe() {
        return numberTe;
    }

    public void setNumberTe(String numberTe) {
        this.numberTe = numberTe;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public Address getAddress() {
        return address;
    }

    public void setAddress(Address address) {
        this.address = address;
    }

    public Date getCreatedAt() {
        return createdAt;
    }

    public void setCreatedAt(Date createdAt) {
        this.createdAt = createdAt;
    }

    public String getCpf() {
        return cpf;
    }

    public void setCpf(String cpf) {
        this.cpf = cpf;
    }

}
