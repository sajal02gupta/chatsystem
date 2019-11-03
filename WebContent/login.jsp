<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login form</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<link href="css/style1.css" rel="stylesheet" type="text/css" media="all" />
</head>
<body>
	<div class="login-page">
		<div class="form">
			<form class="login-form" action="LoginServlet" method="post">
				<input type="email" placeholder="your email" name="email" /> 
				<input type="password" placeholder="password" name="password" />
				<c:if test="${validate eq false}">
					<p>Email not registered. Register first!</p>
				</c:if>
				<button type="submit">LOGIN</button>
				<p class="message">
					Not registered? <a href="accounts.jsp">Create an account</a>
				</p>
			</form>
		</div>
	</div>
	<script src="https://code.jquery.com/jquery-3.4.1.min.js"
		integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo="
		crossorigin="anonymous"></script>
	<script>
		$('.message a').click(function() {
			$('form').animate({
				height : "toggle",
				opacity : "toggle"
			}, "slow");
		});
	</script>
</body>
</html>