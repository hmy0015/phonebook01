<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>

<%@ page import="com.javaex.dao.PhoneDao "%>
<%@ page import="com.javaex.vo.PersonVo "%>

<%
	int personId = Integer.parseInt(request.getParameter("personid"));

	PhoneDao phoneDao = new PhoneDao();
	PersonVo personVo = phoneDao.getPerson(personId);
	System.out.println(personVo.toString());
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>`
</head>
<body>
	<h1>전화번호 수정폼</h1>
	<p>
		아래 항목을 수정하고 "수정" 버튼을 클릭하세요.
	</p>

	<form action="./update.jsp" method="post">
		<input type = 'hidden' name = "personID" value="<%=personVo.getPersonId()%>">
		이름(name) : <input type="text" name="name" value = "<%= personVo.getName() %>"> <br>
		핸드폰(hp) : <input type="text" name="hp" value = "<%= personVo.getHp() %>"> <br>
		회사(company) : <input type="text" name="company" value = "<%= personVo.getCompany() %>"> <br> 
		<button type="submit">수정</button>
	</form>

	<br>
	<a href="./list.jsp">리스트 바로가기</a>
</body>
</html>