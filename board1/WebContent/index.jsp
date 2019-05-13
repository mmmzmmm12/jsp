<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>

<%
	// include 와 forward redirect는 상대경로로 써야한다.
	if(true){
	// 로그인 안했을때
	pageContext.forward("./user/login.jsp");
	}else{
	// 로그인 했을때
	pageContext.forward("./list.jsp");
	}
%>