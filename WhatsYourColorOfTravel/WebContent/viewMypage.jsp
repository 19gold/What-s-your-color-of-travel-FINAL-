<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@page import="java.io.*"%>
<%@page import="DB.databases"%>
<%@page import="java.util.*"%>
<%@page import="java.awt.*"%>
<!DOCTYPE html>
<html>
<head profile="http://www.w3.org/2005/10/profile">
<meta charset="UTF-8">
<link href="viewMypage.css?var=1" rel="stylesheet" type="text/css">
<title>Insert title here</title>
<link rel="icon" type="image/png" href="//example.com/myicon.png">

</head>
<body>
	<div class="titlecontainer">
		<h1 class="title">MY PAGE</h1>
		<div class="titleexplain">
			It's a page that reminds you of the experiences you've traveled.<br>
			We have collected only the reviews you wrote among all the reviews.
		</div>
	</div>
	<a href="board_write.jsp"><input type="button" value="+"
		class="addbtn"></a>
	<%
		request.setCharacterEncoding("UTF-8");

		Connection con = null;
		Blob image = null;
		byte[] imgData = null;
		PreparedStatement pstmt = null;
		Statement stmt = null;
		ResultSet rs = null;
		String title = null;
		String area = null;
		String oneIntro = null;
		String id = null;//세션으로 받는 id

		//session처리
		id = (String) session.getAttribute("id");//세션 값 받음
		if (id == null || id.equals("")) {
	%>
	<script>
		alert('로그인을 해주세요.');
		location.replace("member.jsp");
	</script>
	<%
		}

		try {
			databases databases = new databases();
			con = databases.getCon();//DB연동하기
			System.out.println("view Mapage : DB연동성공");

			stmt = con.createStatement();
			System.out.println("stmt줄 실행");

			String query = "SELECT title, area, image, oneIntro FROM reviews WHERE id ='" + id + "'";
			System.out.println(query);

			rs = stmt.executeQuery(query);
			System.out.println("rs : " + rs);
			while (rs.next()) {
				title = rs.getString(1);
				area = rs.getString(2);
				image = rs.getBlob(3);
				imgData = image.getBytes(1, (int) image.length());
				String encoded = Base64.getEncoder().encodeToString(imgData);
				oneIntro = rs.getString(4);
				///////////////////////////////////////////////
	%>

	<table>
		<tr>
			<td>글쓸 때 제목 : <%=title%></td>
		</tr>
		<tr>
			<td>글쓸 때 지역<%=area%></td>
		</tr>
		<tr>
			<td><img src="data:image/png;base64, <%=encoded%>" /></td>
		</tr>
		<tr>
			<td>글쓸 때 후기:<%=oneIntro%></td>
		</tr>
	</table>
	<%
		}
		} catch (Exception e) {
			out.println("이미지가 없습니다..TAT");
			out.println("화면 이미지 에러 = " + e.getMessage());
			return;
		}
	%>
	<div class="cardcontainer">
		<div id="cardbox" class="card">
			<div class="cardleft">
				<input type="text" class="idinput" disabled />
				<!-- 아이디 나오는 칸 -->
				<br>
				<input type="button" value="♥" class="heartbtn" onclick = "this.style.color = 'red'"> <br>
				<div class="went">went to<span class = "wentt"><%= %></span></div>

			</div>
			<div class="cardright">
				<img id="img1" src="img/기후현.JPG" class="img" /> <br>
				<div id="text">제목</div>
			</div>
		</div>
	</div>
</body>
</html>