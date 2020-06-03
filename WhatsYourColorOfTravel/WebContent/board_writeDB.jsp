<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@page import="java.io.*"%>
<%@page import="DB.databases"%>
<%@page import="DB.DBvar"%>
<%@page import="DB.DBlist"%>
<%@page import="java.util.*"%>
<%@page import="java.awt.*"%>
<%

request.setCharacterEncoding("euc-kr");

databases databases = new databases();
DBvar dv = new DBvar();
DBlist dl = new DBlist();
Connection con=null;
Statement stmt = null;

String title= request.getParameter("title");
String oneIntro=request.getParameter("oneIntro");
String img = request.getParameter("img");

try {
	
	con = databases.getCon();//DB연동하기
	System.out.println("board_writeDb에서 db연동 확인");
	stmt = con.createStatement();
	
	
	
	
	File imgfile = new File(img);
	FileInputStream fin = new FileInputStream(imgfile);
	PreparedStatement pre = con.prepareStatement("insert into reviews (title, image, oneIntro) VALUES (?, ?, ?)");
	pre.setString(1, title);
	pre.setBinaryStream(2, fin, (int) imgfile.length());//Stream형의 파일 업로드
	pre.setString(3, oneIntro);
	
	pre.executeUpdate();
	
	System.out.println("Inserting Successfully!");
	pre.close();
	con.close();
} catch (Exception e) {
	System.out.println(e.getMessage());
	System.out.println("됐겠니?");
}
%>
