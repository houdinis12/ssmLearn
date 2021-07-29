package com.dao;

import com.domain.Student;

import java.util.List;

public interface StudentDao {
    // 添加
    int insertStudent(Student student);

    // 查询
    List<Student> selectStudents();
}
