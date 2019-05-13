<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%

	String code = request.getParameter("code");
	String viewPageURI = null;
	
	if(code.equals("A")){
		viewPageURI ="./185.jsp";
	} else if (code.equals("B")){
		viewPageURI ="/viewMoudle/b.jsp";
	} else if (code.equals("C")){
		viewPageURI ="/viewMoudle/c.jsp";
	}
%>
<jsp:forward page="<%= viewPageURI %>" />