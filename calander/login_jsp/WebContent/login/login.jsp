<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>환영합니다</title>
<link href="../stylesheets/login_page.css" rel="stylesheet" type="text/css"> 
</head>
<body background = "../images/background.jpg">
	<div id="wrap">
		<form action="../login/login_Process.jsp" method="post">
			<div id="login">
				<div id="images">
					<img src="../images/logo.png" alt="logo">
				</div>
			</div>
			<div id= "login_box">
				<div id="id_box">
				<input type="text" name="id"  id="id" placeholder="  아이디">
				</div>
			
				<div id="pwd_box">
					&nbsp;
					<input type="password" name="pwd" id="pwd" placeholder="  비밀번호">
				</div>
				<div id="login_btn"> 
					<input type="submit" value="  로그인  " id="submit" name="login_btn">
				</div>
			</div>
		</form>
		<br>
		<br>
		<form action ="../login/register.jsp" method="post">
		<div id="join">
			<div id="title_mention">
				
				<strong>회원이 아니세요?</strong>
				
			</div>
			<div id="id_box">
				<input type="text" name="join_id" id="join_id" placeholder="  아이디">
			</div>
			
			<div id="pwd_box2">
			&nbsp;
				<input type="password" name="join_pwd" id="join_pwd" placeholder="  비밀번호">
			</div>
			<div id="pwd_box2">
			&nbsp;
				<input type="password" name="join_pwd2" id="join_pwd2" placeholder="  비밀번호확인">
			</div>
			<div id="join_btn">
				<input type="submit" value="  회원가입  " id="join_submit" name="join_btn"/>
			</div>
		</div>
		</form>
	</div>
</body>
</html>