package com.zh.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.zh.vo.Teacher;

public interface TeacherDao {
	public Teacher queryTeacherByTeacher(@Param("teacher") Teacher teacher);
	public List<Teacher> queryAllTeachers();
	public java.lang.String addTeacher(@Param("teacher") Teacher teacher);
}
