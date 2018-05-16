package com.zh.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.annotations.Param;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.zh.service.TeacherService;
import com.zh.util.RedisTemplateUtil;
import com.zh.vo.Teacher;

@Controller
public class TeacherController {
	@Resource
	private TeacherService teacherService;
	@Resource
	private RedisTemplate<String, Object> redisTemplate;
	@Resource
	private RedisTemplateUtil redisTemplateUtil;
	
	@RequestMapping("/login")
	public String login(@Param("teacher") Teacher teacher,HttpServletRequest req) {
		Teacher t = teacherService.queryTeacherByTeacher(teacher);
		if(t!=null) {
			return "index";
		}
		return "redirect:login.jsp";
	}
	
	@RequestMapping("/queryAllTeachers")
	public String queryAllTeachers(HttpServletRequest req) {
        redisTemplate.opsForValue().set("test", "redisTemplate测试");  
        System.out.println(redisTemplate.opsForValue().get("test"));  
        
        redisTemplateUtil.set("utiltest", "redisTemplateUtil测试");
        System.out.println(redisTemplateUtil.get("utiltest"));
        
		List<Teacher> teacherList = (List<Teacher>) redisTemplateUtil.getList("teacherList");
		if(teacherList==null||teacherList.size()<0) {
			System.out.println("还没有缓存，将从数据库中查询。。。");
			teacherList = teacherService.queryAllTeachers();
			redisTemplateUtil.setList("teacherList", teacherList);
		}else {
			System.out.println("已经有缓存了。。。");
		}
		req.getSession().setAttribute("teacherList", teacherList);
		return "teacherList";
	}
	
	@RequestMapping("/addTeacher")
	public java.lang.String  addTeacher(@Param("teacher") Teacher teacher, HttpServletRequest req) {
		teacherService.addTeacher(teacher);
		System.out.println("Teacher added.");
		return "redirect:index.jsp";
	}
	
}
