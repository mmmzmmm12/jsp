<%@page import="kt.co.ch02.SmartPhone"%>
<%@page import="kt.co.ch02.Computer"%>
<%@page import="kt.co.ch02.Account"%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>2-4</title>
</head>
	<body>
		<h3>4.클래스</h3>
		
		<%
			Account kb = new Account("국민은행","101-12-1121","김유신",10000);
			Account sh = new Account("신한은행","122-12-1131","김춘추",50000);
			
			kb.deposit(20000);
			kb.withdraw(7000);
			kb.info(out);
			
			sh.deposit(15000);
			sh.withdraw(5000);
			sh.info(out);
			
			Computer com = new Computer("Intel i7","16GB","1TB");
			com.internet(out);
		%>
		<p>컴퓨터 계산 결과 : <%= com.calc(5, 7) %></p>
		<%
			SmartPhone iphone = new SmartPhone("A7","4GB","128GB","아이폰 7S","010-1212-1212");
			iphone.internet(out);
			//참조변수의 타입이 SmartPhone일 경우 Computer와 SmartPhone의 모든 부분을 참조하지만
			
			Computer gallaxy = new SmartPhone("A7","4GB","128GB","갤럭시 7S","010-1212-1212");
			iphone.internet(out);
			//참조변수 타입이 Computer일 경우 Computer의 부분만 참조가 가능하다.
			//이렇게 참조를 하더라도 Override를 할 경우 사용이 가능하다.
			//그렇지만 이런 다형성을 이용할 경우에는 차라리 interface를 이용하는것이 편하다.
		%>
		
		<p>아이폰 계산 결과 : <%= iphone.calc(5, 7) %></p>
		<p>아이폰 계산 결과 : <%= iphone.calc(8, 2, true) %></p>
		<p>아이폰 계산 결과 : <%= iphone.calc(8, 2, false) %></p>
		
		<p>갤럭시 계산 결과 : <%= gallaxy.calc(5, 7) %></p>
		<p>갤럭시 계산 결과 : <%= gallaxy.calc(8, 2, true) %></p>
		<p>갤럭시 계산 결과 : <%= gallaxy.calc(8, 2, false) %></p>
		
	</body>
</html>