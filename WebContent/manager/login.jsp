<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
 <%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<meta name="description" content="health club manager login page" />
<meta name="author" content="wu yun yi" />
<link rel="shortcut icon"
	href="<s:url value="/material/logo.ico"></s:url>" />
<link rel="stylesheet" href="<s:url value="/css/bootstrap.css"></s:url>" />
<link rel="stylesheet" href="<s:url value="/css/customize.css"></s:url>" />
<link rel="stylesheet"
	href="<s:url value="/css/bootstrap-theme.min.css"></s:url>" />

<title>HealthClubManager--login</title>
</head>
<body>
	<div class="navbar navbar-inverse navbar-fixed-top">
		<div class="container">
			<div class="navbar-header">
				<a href="<s:url value="/index.jsp"></s:url>"><img alt="logo"
					src="<s:url value="/material/HealthClub.png"></s:url>" /></a>
			</div>
			<div class="collapse navbar-collapse">
				<ul class="nav navbar-nav navbar-right">
					<li><a href="<s:url value="/index.jsp"></s:url>">Home</a></li>
					<li><a href="<s:url value="/manager/login.jsp"></s:url>">Login</a></li>
				</ul>
			</div>
		</div>
	</div>
	<div class="grid-layout module">
		<strong>Login</strong>
		<%
			String prompt = (String) session.getAttribute("prompt");
			if ((prompt == null) || prompt.equals("")) {
			} else {
		%>
		<div class="alert alert-success">
			<h1><%=prompt%></h1>
		</div>
		<%
			session.removeAttribute("prompt");
			}
		%>
		<hr>
		<s:form cssClass="form-register" action="login" name="login"
			method="post" namespace="/action">
			<span>Please input your login username and password</span>
			<input type="text" class="form-control" placeholder="Login Username"
				name="username" />
			<input type="password" class="form-control"
				placeholder="Login Password" name="password" />
			<button class="btn btn-lg btn-primary btn-block button-commit"
				type="submit">Login</button>
		</s:form>
	</div>
</body>
</html>