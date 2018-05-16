package com.zh.service;

import java.util.List;

import com.zh.vo.Teacher;

public interface TeacherService {
	public Teacher queryTeacherByTeacher(Teacher teacher);
	public List<Teacher> queryAllTeachers();
	public java.lang.String  addTeacher(Teacher teacher);
}
