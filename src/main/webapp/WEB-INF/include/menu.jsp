<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
<meta name="viewport" content="width=device-width" , initial-scale="1">
<title>애견펫</title>
</head>
<style>
	a {text-decoration: none; padding:10px; color: black;}	
	a:visited{text-decoration: none;}	
	div[name="rright"]{float:right;display:inline-block;box-sizing:content-box;}
	a[name="gohome"]{color:rgb(26, 188, 156); font-style:italic;
	   font-size: 30px;}
</style>
<body>
	<div id="menu" style="display: grid; grid-template-columns: 30% 70%; padding-top: 5px; padding-bottom:5px">
		<div>
		</div>
		<div name="right" style="padding:15px 15px; text-align: right;">
			<a href="/introduction" style="padding-right: 20px ;">소개</a>
			<a href="/come" style="padding-right: 20px ;">오시는 길</a>
			<a href="/reserve" style="padding-right: 20px ;">예약</a>
			<c:if test="${sessionScope.email ne null }"><a href='<c:url value="/logoutForm"/>'>로그아웃</a></c:if>		
			<c:if test="${sessionScope.email ne null }"><a href='<c:url value="/loginForm"/>'>로그인</a></c:if>
			<a href="/submit" style="padding-right: 20px ;">회원가입</a>
			<c:choose>
		           <c:when test="${sessionScope.email eq null}">
		  	           <a href="/login" style="padding-right: 20px ;">마이페이지</a>
		           </c:when>
		           <c:otherwise>
	    	             <a href="/Mypage/Myreserv?email=${sessionScope.email}" style="padding-right: 20px ;">마이페이지</a>
		            </c:otherwise>
           	</c:choose>
			<a href="/Board/List" style="padding-right: 20px ;">고객센터</a>	
		</div>
	</div>
</body>
</html>