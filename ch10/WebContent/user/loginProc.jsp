<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<!--  화면에 띄울게 아니므로 html부분이 필요없다 -->

<%
	// 브라우저 화면에 출력할 HTML태그가 없음 
	
	// 1단계 - 파라미터 수신
	String uid = request.getParameter("uid");
	String pass = request.getParameter("pass");
	
	// 2단계 - 데이터베이스 처리(생략)
	

	// 3단계 - 회원일치 여부 확인
	// String일 경우 문자열 비교가 아니므로 equals로 써줘야한다.
	if(uid.equals("abcd") && pass.equals("1234")){
		// 회원일 경우
		
		// session에 회원정보  저장
		session.setAttribute("uid", uid);
		session.setAttribute("pass", pass);
		
		// 리다이렉트(일치하므로 로그인완료 페이지로 이동)
		response.sendRedirect("./loginOK.jsp");
		
	}else{
		// 회원이 아닐 경우
		
		// ?는 파라미터값 직접 쓰는거임
		response.sendRedirect("./login.jsp?result=fail");
	}
%>