<%@page import="java.sql.PreparedStatement"%>
<%@include file="db.jsp" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	String resist_month = request.getParameter("resist_month");
	String c_no = request.getParameter("c_no");
	String class_area = request.getParameter("class_area");
	String tuition = request.getParameter("tuition");
	String class_name = request.getParameter("class_name");
	int teacher_code = Integer.parseInt(class_name) / 1000;
	
	try{
		String sql = "insert into tbl_class_202201 values(?,?,?,?,?)";
		PreparedStatement pstmt = con.prepareStatement(sql);
		
		pstmt.setString(1, resist_month);
		pstmt.setString(2, c_no);
		pstmt.setString(3, class_area);
		pstmt.setString(4, tuition);
		pstmt.setInt(5, teacher_code);
		
		pstmt.executeUpdate();
		
	}catch(Exception e){
		e.printStackTrace();
	}
%>

<jsp:forward page="index.jsp"></jsp:forward>