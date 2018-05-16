package com.zh.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.zh.dao.TeacherDao;
import com.zh.vo.Teacher;

@Service("teacherService")
public class TeacherServiceImp implements TeacherService {
	@Resource
	private TeacherDao teacherDao;

	@Override
	public Teacher queryTeacherByTeacher(Teacher teacher) {
		// TODO Auto-generated method stub
		return teacherDao.queryTeacherByTeacher(teacher);
	}

	@Override
	public List<Teacher> queryAllTeachers() {
		// TODO Auto-generated method stub
		return teacherDao.queryAllTeachers();
	}

	@Override
	public java.lang.String  addTeacher(Teacher teacher) {
		// TODO Auto-generated method stub
		return teacherDao.addTeacher(teacher);
	}

}
