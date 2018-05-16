<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>添加老师</title>
</head>
<body>
	<form action="addTeacher.action" method="post">
		教师名字:<input type="text" name="teacher_name"><br/>
		密码:<input type="password" name="teacher_pwd"><br/>
		编号:<input type="text" name="college_id"><br/>
		<input type="submit" value="添加">
	</form>
</body>
</html>