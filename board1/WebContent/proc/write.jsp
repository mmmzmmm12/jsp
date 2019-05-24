<%@page import="java.sql.Statement"%>
<%@page import="java.io.BufferedOutputStream"%>
<%@page import="java.io.BufferedInputStream"%>
<%@page import="java.io.FileOutputStream"%>
<%@page import="java.io.FileInputStream"%>
<%@page import="java.io.File"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@page import="kr.co.board1_bean.UserBean"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="kr.co.board1_config.SQL"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="kr.co.board1_config.DBConfig"%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%
	/*
	request.setCharacterEncoding("UTF-8");


	String subject  = request.getParameter("subject");
	String content  = request.getParameter("content");
	String regip 	= request.getRemoteAddr();

	*/
	//테스트용
	String path = "C:/test";
	
	//배포용
	//String path = request.getServletContext().getRealPath("/data");
	
	int maxSize = 1024 * 1024 * 10; // 10MB
	
	MultipartRequest mr = new MultipartRequest( request, path, maxSize , "UTF-8" , new DefaultFileRenamePolicy() );
	
	String subject  = mr.getParameter("subject");
	String content  = mr.getParameter("content");
	String fileName = mr.getFilesystemName("file");
	String regip	= request.getRemoteAddr();
	String newName  = null;
	int parent		= 0;
	
	// 세션에서 사용자 아이디 가져오기
	UserBean ub =(UserBean)session.getAttribute("user");
	String uid = ub.getUid();
	
	if(fileName != null){
		
		// 1.파일명 생성
		int i 		= fileName.lastIndexOf("."); // 뒤에서부터 .의 인덱스번호 찾기
		String ext  = fileName.substring(i); // 확장자구하기
		
		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmss_");
		String now = sdf.format(new Date());
		
		newName = now+uid+ext;  // ex) 20190524104512_abcd.txt
		
		// 2.2파일명 변경

		// 1단계 - 파일객체생성
		File oldFile = new File(path+"/"+fileName);
		File newFile = new File(path+"/"+newName);

		// 2단계 - 스트림생성
		FileInputStream  fis = new FileInputStream(oldFile);
		FileOutputStream fos = new FileOutputStream(newFile);
		
		// 3단계 - 스트림에 버퍼 장착
		BufferedInputStream  bis = new BufferedInputStream(fis);
		BufferedOutputStream bos = new BufferedOutputStream(fos); // 버퍼를통해소 속도 높히기
		
		// 4단계 - 데이터 읽기와 쓰기(Copy & Paste)
		while(true) {
			
			// 입력 버퍼스트림으로 데이터 읽기
			int value = bis.read();
			
			if(value == -1){

				break;
			}
			// 출력 버퍼 스트림으로 데이터 쓰기
			bos.write(value);
		}
		
		
		// 5단계 - 스트림해재
		bis.close();
		bos.close();
		fis.close();
		fos.close();
		
		// 원본파일은 필요없어서 지움
		oldFile.delete();
		
		
	}else{
			
	}
	
	// 게시물 INSERT and INSERT용 게시물 내용 번호 SELECT
	// 1단계 - JDBC 드라이버 로드 , 2단계 데이터베이스 접속
	Connection conn = DBConfig.getConnection();
	
	// 트랜잭션 begin
	conn.setAutoCommit(false);
	
	// 3단계 - SQL
	Statement stmt = conn.createStatement();
	
	PreparedStatement psmt = conn.prepareStatement(SQL.INSERT_BOARD);
	psmt.setString(1, subject);
	psmt.setString(2, content);
	psmt.setString(3, uid);
	psmt.setString(4, regip);
	
	// 4단계 - SQL
	psmt.executeUpdate();
	ResultSet rs = stmt.executeQuery(SQL.SELECT_MAX_SEQ);
	
	// 트랜잭션 끝 commit
	conn.commit();
	
	// 5단계 - 결과셋처리
	if(rs.next()){
		parent = rs.getInt(1);
	}
	
	
	// 6단계 - 종료
	rs.close();
	psmt.close();
	conn.close();
	

	if(fileName != null){
	// 파일첨부 내용 INSERT
	// 1단계, 2단계
	Connection conn1 = DBConfig.getConnection();
	
	// 3단계
	PreparedStatement psmt1 = conn1.prepareStatement(SQL.INSERT_FILE);
	psmt1.setInt(1, parent);
	psmt1.setString(2, fileName);
	psmt1.setString(3, newName);
			
	// 4단계
	psmt1.executeUpdate();
			
	// 5단계
	// 6단계
	psmt1.close();
	conn1.close();
			
	}
	
	// 작성한걸 목록으로 이동
	response.sendRedirect("/board1/list.jsp");

%>