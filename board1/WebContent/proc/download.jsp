<%@page import="kr.co.board1_config.SQL"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="kr.co.board1_config.DBConfig"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.io.File"%>
<%@page import="java.io.BufferedOutputStream"%>
<%@page import="java.io.BufferedInputStream"%>
<%@page import="java.io.FileOutputStream"%>
<%@page import="java.io.FileInputStream"%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");

	String oldName = request.getParameter("oldName");
	String newName = request.getParameter("newName");
	String parent  = request.getParameter("seq");
	
	// 파일다운 카운트 업데이트
	//파일 다운로드 카운트 업데이트
	// 1단계, 2단계
	Connection conn = DBConfig.getConnection();
	
	// 3단계
	PreparedStatement psmt = conn.prepareStatement(SQL.UPDATE_DOWNLOAD);
	psmt.setString(1, parent);
	
	// 4단계
	psmt.executeUpdate();
	
	// 5단계
	// 6단계
	psmt.close();
	conn.close();

	
	// response 헤더정보 수정
	oldName = new String(oldName.getBytes("UTF-8"), "iso-8859-1");
	// 이건 인터넷찾으면 나온다고함
	response.setContentType("application/octet-stream");
	response.setHeader("Content-Disposition", "attachment; filename="+oldName);
	response.setHeader("Content-Transfer-Encoding", "binary");
	response.setHeader("Pragma", "no-cache");
	response.setHeader("Cache-Control", "private");
	
	// 테스트
	String path = "C:/test/";
	
	// 배포용
	//String path = request.getServletContext().getRealPath("/data");
	
	File file = new File(path+newName);
	
	// 스트림 연결
	// 2단계 - 스트림생성
		FileInputStream  fis = new FileInputStream(file);
		
		// 3단계 - 스트림에 버퍼 장착
		BufferedInputStream  bis = new BufferedInputStream(fis);
		BufferedOutputStream bos = new BufferedOutputStream(response.getOutputStream()); // 버퍼를통해소 속도 높히기
		
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
	
	
%>