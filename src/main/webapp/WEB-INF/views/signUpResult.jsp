<%@ page language= "java" contentType="text/html; charset=UTF-8" 
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
	<% String id = request.getParameter("userId"); %>
	<% String[] pw = request.getParameterValues("userPw"); %>
	
	<% String name = request.getParameter("userName"); %>
	<% String email = request.getParameter("userEmail"); %>
	
	
	<!-- <% String pres = (String)request.getAttribute("p"); %> -->
	<% String hres = (String)request.getAttribute("h"); %>
	
	
    
    <% if(pw[0].equals(pw[1])) { %>
	<hr>
    <ul>
    	<li>아이디 : <%= id %></li>
    	<li>비밀번호 : <%= pw[0] %></li>
    	<li>이름 : <%= name %></li>
    	<li>이메일 : <%= email %></li>
    	<li>취미 : <%= hres %></li>
    </ul>
	<h3 style='color:green;'><%= name %>님의 회원가입이 완료되었습니다</h3>
	<% } else { %>
	<script>
		alert("비밀번호가 일치하지 않습니다.");
	</script>
	<% } %>
    
</body>
</html>