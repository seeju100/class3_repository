<%@page import="board.BoardDAO"%>
<%@page import="board.BoardBean"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>main/main.jsp</title>
<link href="../css/default.css" rel="stylesheet" type="text/css">
<link href="../css/front.css" rel="stylesheet" type="text/css">
</head>
<body>
	<div id="wrap">
		<!-- 헤더 들어가는곳 -->
		<!-- inc/top.jsp 페이지가 포함될 위치 -->
		<%-- jsp:include 액션태그의 page 속성으로 포함할 페이지 지정 --%>
		<jsp:include page="../inc/top.jsp"/>
		<%-- include 디렉티브의 file 속성으로 포함할 페이지 지정 --%>
<%-- 		<%@ include file="../inc/top.jsp" %> --%>
		<!-- 헤더 들어가는곳 -->
		  
		<div class="clear"></div>   
		<!-- 본문들어가는 곳 -->
		<!-- 메인 이미지 -->
		<div id="main_img"><img src="../images/main_img.jpg"></div>
		<!-- 본문 내용 -->
		<article id="front">
		  	<div id="solution">
		  		<div id="hosting">
		  			<h3>Web Hosting Solution</h3>
					<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
		  		</div>
		  		<div id="security">
		  		  	<h3>Web Security Solution</h3>
					<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
		  		</div>
		  		<div id="payment">
		  			<h3>Web Payment Solution</h3>
					<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
		  		</div>
		  	</div>
		  	<div class="clear"></div>
			<div id="sec_news">
				<h3><span class="orange">Security</span> News</h3>
				<dl>
					<dt>Vivamus id ligula....</dt>
					<dd>Proin quis ante Proin quis anteProin 
					quis anteProin quis anteProin quis anteProin 
					quis ante......</dd>
				</dl>
				<dl>
					<dt>Vivamus id ligula....</dt>
					<dd>Proin quis ante Proin quis anteProin 
					quis anteProin quis anteProin quis anteProin 
					quis ante......</dd>
				</dl>
			</div>
		
			
			<div id="news_notice">
		  		<h3 class="brown">News &amp; Notice</h3>
				<table>
					<%
					// BoardDAO 객체의 selectRecentBoardList() 메서드를 호출하여 최근 게시물 5개 조회 요청
					// => 파라미터 : 없음    리턴타입 : ArrayList<BoardBean>(boardList)
					BoardDAO boardDAO = new BoardDAO();
					ArrayList<BoardBean> boardList = boardDAO.selectRecentBoardList();
					
					for(BoardBean board : boardList) {
					%>
						<!-- 게시물 행 클릭 시 notice_content.jsp 페이지로 이동(해당 게시물 표시) -->
						<tr onclick="location.href='../center/notice_content.jsp?num=<%=board.getNum() %>&page=1'">
							<td width="320" class="contxt"><%=board.getSubject() %></td>
							<td width="80"><%=board.getName() %></td>
							<td width="80"><%=board.getDate() %></td>
						</tr>
					<%
					} 
					%>
				</table>
		  	</div>
	  	</article>
		  
		<div class="clear"></div>  
		<!-- 푸터 들어가는곳 -->
		<!-- inc/bottom.jsp 페이지가 포함될 위치 -->
		<%-- jsp:include 액션태그의 page 속성으로 포함할 페이지 지정 --%>
		<jsp:include page="../inc/bottom.jsp"/>
		<%-- include 디렉티브의 file 속성으로 포함할 페이지 지정 --%>
<%-- 		<%@ include file="../inc/bottom.jsp" %> --%>
		<!-- 푸터 들어가는곳 -->
	</div>
</body>
</html>















