<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login Signup form</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<script type="application/x-javascript">
	 addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } 
</script>
<!-- Custom Theme files -->
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<!-- //Custom Theme files -->
<!-- web font -->
<link
	href="//fonts.googleapis.com/css?family=Roboto:300,300i,400,400i,700,700i"
	rel="stylesheet">
<!-- //web font -->
</head>
<body>
	<!-- main -->
	<div class="main-w3layouts wrapper">
		<h1>SignUp</h1>
		<div class="main-agileinfo">
			<div class="agileits-top">
				<form action="Adduser" method="post">
					<input class="text" type="text" name="username"
						placeholder="Username" required=""> <input
						class="text email" type="email" name="email" placeholder="Email"
						required=""> <input class="text" type="password"
						name="password" placeholder="Password" required=""> <input
						class="text w3lpass" type="password" name="confirmpass"
						placeholder="Confirm Password" required="">
					<c:if test="${created eq false }">
						<p>Password unmatched!</p>
					</c:if>
					<div class="wthree-text">
						<label class="anim"> <input type="checkbox"
							class="checkbox" required=""> <span>I Agree To The
								Terms & Conditions</span>
						</label>
						<div class="clear"></div>
					</div>
					<input type="submit" value="SIGNUP">
				</form>
				<p>
					Have an Account? <a href="login.jsp"> Login Now!</a>
				</p>
			</div>
		</div>
		<!-- copyright -->
		<div class="colorlibcopy-agile">
			<p>
				� 2019 Iungo Inc. All rights reserved | Design by SARAL
			</p>
		</div>
		<!-- //copyright -->
		<ul class="colorlib-bubbles">
			<li></li>
			<li></li>
			<li></li>
			<li></li>
			<li></li>
			<li></li>
			<li></li>
			<li></li>
			<li></li>
			<li></li>
		</ul>
	</div>
	<!-- //main -->
</body>
</html>