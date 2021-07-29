package com.service;

import com.domain.Student;

import java.util.List;

public interface StudentService {

    // 添加
    int addStudent(Student student);

    // 查询
    List<Student> findStudents();
}
