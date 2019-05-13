<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>2-3</title>
</head>
	<body>
		<h3>3.반복문</h3>
		<%
			int sum = 0;
			sum += 1;
			sum += 2;
			sum += 3;
			sum += 4;
			sum += 5;
			sum += 6;
			sum += 7;
			sum += 8;
			sum += 9;
			sum += 10;
			
		%>	
		<p>1부터 10까지의 합: <%= sum %></p>
		
		<%
			int sum1 =0;
			for(int i=0;i<11;i++){
				sum1 += i;
			}
		%>
		<p>1부터 10까지의 합: <%= sum %></p>
		
		<h4>별 삼각형 출력</h4>
		<%
			for(int a=1; a<=10; a++){
				for(int b=1; b<=a; b++){
					out.print("☆");
				}
				out.print("<br/>");
			}
		%>
		
		<h4>별 역삼각형 출력</h4>
		<%
			for(int a=10; a>=1; a--){
				for(int b=1; b<=a; b++){
					out.print("☆");
				}
				out.print("<br/>");
			}
		%>
		
		<h4>구구단 실습</h4>
		<table>
			<tr> 
				<td>2단</td>
				<td>3단</td>
				<td>4단</td>
				<td>5단</td>
				<td>6단</td>
				<td>7단</td>
				<td>8단</td>
				<td>9단</td>
			</tr>
			<tr>
				<td>2 * 1 = 2</td>
				<td>3 * 1 = 3</td>
				<td>4 * 1 = 4</td>
				<td>5 * 1 = 5</td>
				<td>6 * 1 = 6</td>
				<td>7 * 1 = 7</td>
				<td>8 * 1 = 8</td>
				<td>9 * 1 = 9</td>
			</tr>
		</table>
		
		<table>
		<%	
			for(int i = 2; i<10; i++){
				for(int j = 1; j<10; j++){
					int a = i * j;
					out.print( i + " * " + j + "= " + a);
					out.print("</t>");
				}
				out.print("<br/>");
			}
		%>
		</table>
		
		<h3> 구구단 답지 </h3>
		
		<table>
			<tr> 
				<td>2단</td>
				<td>3단</td>
				<td>4단</td>
				<td>5단</td>
				<td>6단</td>
				<td>7단</td>
				<td>8단</td>
				<td>9단</td>
			</tr>
			<%
				for(int a=1; a<=9; a++){
			%>
				<tr>
				<%
					for(int b=2; b<=9; b++){
						int c= b * a;
					
				%>
					<td><%= b %> x <%= a %> = <%= c %></td>
				<%
					}
				%>
				</tr>
			<%
				}
			%>
		</table>
	</body>
</html>