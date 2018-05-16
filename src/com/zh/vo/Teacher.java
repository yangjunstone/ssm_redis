package com.zh.vo;

import java.io.Serializable;

public class Teacher implements Serializable {
	/**
	 * 实体类实现序列化接口
	 */
	private static final long serialVersionUID = 1L;
	
	private String teacher_id;
	private String teacher_name;
	private String teacher_pwd;
	private int college_id;
	public String getTeacher_id() {
		return teacher_id;
	}
	public void setTeacher_id(String teacher_id) {
		this.teacher_id = teacher_id;
	}
	public String getTeacher_name() {
		return teacher_name;
	}
	public void setTeacher_name(String teacher_name) {
		this.teacher_name = teacher_name;
	}
	public String getTeacher_pwd() {
		return teacher_pwd;
	}
	public void setTeacher_pwd(String teacher_pwd) {
		this.teacher_pwd = teacher_pwd;
	}
	public int getCollege_id() {
		return college_id;
	}
	public void setCollege_id(int college_id) {
		this.college_id = college_id;
	}
	
	@Override
	public String toString() {
		return "Teacher [teacher_id=" + teacher_id + ", teacher_name=" + teacher_name + ", teacher_pwd=" + teacher_pwd
				+ ", college_id=" + college_id + "]";
	}
}
