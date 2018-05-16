<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table>
		<tr>
			<td>教师编号</td>
			<td>教师姓名</td>
			<td>教师密码</td>
			<td>学院编号</td>
		</tr>
		<c:forEach var="teacher" items="${teacherList}">
			<tr>
				<td>${teacher.teacher_id }</td>
				<td>${teacher.teacher_name }</td>
				<td>${teacher.teacher_pwd }</td>
				<td>${teacher.college_id }</td>
			</tr>
		</c:forEach>
		
	</table>
</body>
</html>