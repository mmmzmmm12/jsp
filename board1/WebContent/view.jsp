<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="kr.co.board1.service.BoardService"%>
<%@page import="kr.co.board1_bean.BoardBean"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="kr.co.board1_config.SQL"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="kr.co.board1_config.DBConfig"%>
<%@page import="java.sql.Connection"%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>

<% 
	request.setCharacterEncoding("UTF-8");

	String pg  = request.getParameter("pg"); 
	String seq = request.getParameter("seq"); 

	BoardService service = BoardService.getIntance();
	
	service.updateHit(seq);
	
	BoardBean bb = service.viewBoard(seq);

	// 댓글 리스트 가져오기
	List<BoardBean> commentList = service.commentList (seq);

%>


<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8" />
		<title>글보기</title> 
		<link rel="stylesheet" href="/board1/css/style.css" />
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
	</head>
	<body>
		<div id="board">
			<h3>글보기</h3>
			<div class="view">
				<form action="#" method="post">
					<table>
						<tr>
							<td>제목</td>
							<td><input type="text" name="subject" value="<%= bb.getTitle() %> " readonly />
							</td>
						</tr>
						
						<%if(bb.getFile() == 1){ %>
						<tr>
							<td>첨부파일</td>
							<td>
								<a href="#">테스트.hwp</a>
								<span>3회 다운로드</span>
							</td>
						</tr>
						<% } %>
						
						<tr>
							<td>내용</td>
							<td>
								<textarea name="content" rows="20" readonly><%= bb.getContent() %></textarea>
							</td>
						</tr>	
					</table>
					<div class="btns">
						<a onclick = "return confirm('정말로 삭제할거야?')" href="./proc/delete.jsp?seq=<%= seq %>&pg=<%= pg %>" class="cancel del">삭제</a>
						<a href="./proc/update.jsp?seq=<%= seq %>&pg=<%= pg %>" class="cancel mod">수정</a>
						<a href="./list.jsp?pg=<%=pg %>" class="cancel">목록</a>
					</div>
				</form>
			</div><!-- view 끝 -->
			
			<!-- 댓글리스트 -->
			<style>
				.comments > .comment:nth-of-type(1) {
					display: none;
				}
			</style>
			<section class="comments">
				<h3>댓글목록</h3>
				<div class="comment">
					<span>
						<span class="nick">닉네임</span>
						<span class="rdate">날짜</span>
					</span>
					<textarea>내용</textarea>
					<div>
						<a href="#" class="del">삭제</a>
						<a href="#" class="mod">수정</a>
					</div>
				</div>
				
				<%
					for(BoardBean comment : commentList){
				%>
				<div class="comment">
					<span>
						<span class="nick"><%= comment.getNick() %></span>
						<span class="rdate"><%= comment.getRdate().substring(2,10) %></span>
					</span>
					<textarea><%= comment.getContent() %></textarea>
					<div>
						<a href="#" class="del">삭제</a>
						<a href="#" class="mod">수정</a>
					</div>
				</div>
				<%
					}
					
					if(commentList.size() ==0) {
						
				%>
				<p class="empty">등록된 댓글이 없습니다.</p>
				<%
					}
				%>
			</section>
			
			<!-- 댓글쓰기 -->
			
			<section class="comment_write">
				<h3>댓글쓰기</h3>
				<div>
					<form action="./porc/commentWrite.jsp" method="post">
						<input type="hidden" name="parent" value="<%= bb.getSeq() %>" />
						<textarea name="comment" rows="5"></textarea>
						<div class="btns">
							<a href="#" class="cancel">취소</a>
							<input type="submit" class="submit" value="작성완료" />
						</div>
					</form>
					
					<script>
						$(function(){
							
							var comments = $('.comments');
							var btnSubmit = $('.comment_write .submit');
							
							btnSubmit.click(function(){
								
								var commentView = $('.comments > .comment:nth-of-type(1)');
								var textarea = $('.comment_write textarea');
								var parent   = $('.comment_write input[name=parent]').val();
								var content  = textarea.val();
								
								if(content == ""){
									
									alert('댓글 내용을 입력하세요');
									textarea.focus();
									
								}else{

									var jsonData = {parent: parent, content:content};  // key : value
									
									$.ajax({
										url:'./proc/commentWrite.jsp',
										type:'post', // 생략가능 post 혹은 get 
										dataType:'json',
										data:jsonData,
										success: function(result){  // url로 요청후 응답받는 부분
											
											var commentNew = commentView.clone();  // 이거하면 첫번째꺼 덮혀졌다가 새로고침하면 나오는거 해결됨
											
											commentNew.find('.nick').text(result.nick);
											commentNew.find('.rdate').text(result.rdate);
											commentNew.find('textarea').text(result.content);
											
											comments.append(commentNew);
											
											// empty 문구 삭제
											var empty = $('.empty');
											if(empty.is(':visible')){
												empty.remove();
											}
											
										}
										
									});
								}						
								
								return false;
							});
							
						});
					</script>
				</div>
			</section>
			
		</div><!-- board 끝 -->
	</body>

</html>

