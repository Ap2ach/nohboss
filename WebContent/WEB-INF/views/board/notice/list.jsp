<%@page import="com.muzihok.web.entity.Board"%>
<%@page import="java.util.List"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<title>혹!혹!혹!</title>
<link href="/css/board/notice.css" type="text/css" rel="stylesheet" />
</head>
<body>
	<!-- header----------------------------------------------------------->
	<jsp:include page="../inc/header.jsp" />

	<!-- body ------------------------------------------------------------>
	<div id="body">
		<section class="body-container">
			<h1 class="hidden">body 컨테이너</h1>

			<div id=aside>
				<h1 class="hidden">aside</h1>

				<section class="aside-container">
					<h1 class="hidden">어사이드 카테고리</h1>

					<nav class="aside-category">
						<h1>
							<a href="">혹!혹!혹!</a>
						</h1>

						<ul>
							<li class="sign"><a class="sign" href="../notice/list">공지사항</a></li>
							<li><a href="../free/list">자유게시판</a></li>
							<li><a href="../review/list">리뷰게시판</a></li>
							<li><a href="../tip/list">팁게시판</a></li>
						</ul>
					</nav>

					<section class="issu-tag margin-top-small">
						<h1># ISSUE TAG</h1>

						<form action="" method=GET">
							<div class="issu-tag-search">
								<input name="q" type="text" /> <input type="submit" value="검색"
									class="btn" />
							</div>
						</form>

						<ul class="issu-tag-menu">

							<li><a href="">#한식</a></li>
							<li><a href="">#일식</a></li>
							<li><a href="">#중식</a></li>
							<li><a href="">#양식</a></li>
						</ul>
					</section>

				</section>
			</div>

			<div id="main">
				<h1 class="hidden">메인</h1>


				<section class="board-top">
					<h1 class="hidden">게시판 검색폼</h1>

					<form action="" method="GET">
						<section class="board-order-form">
							<h1 class="hidden">게시판 정렬</h1>

							<ul>
								<li><a href="?s=1">최신순</a></li>
								<li><a href="?s=2">추천순</a></li>
								<li><a href="?s=3">댓글순</a></li>
								<li><a href="?s=4">조회순</a></li>
							</ul>
						</section>

						<section class="board-search-form">

							<select name="f">
								<option value="title">제목</option>
								<option value="content">내용</option>
								<option value="writer_id">작성자</option>
								<option value="titleContent">제목+내용</option>
							</select> <label class="hidden">검색</label> <input name="q" type="text" />
							<input type="submit" value="검색" class="btn" />
						</section>
					</form>
				</section>

				<!----------------수정구간------------------------------------------------------------------------->
				<table class="table">
					<h1 class="hidden">테이블</h1>

					<thead class="table-title">
						<tr>
							<td><span>번호</span></td>
							<td>제목</td>
							<td>작성일</td>
							<td>조회수</td>
						</tr>
					</thead>

					<tbody class="table-content">

						<c:forEach var="n" items="${list}">
							<tr>
								<td class="seq">${n.id}</td>
								<td class="title"><a href="detail?id=${n.id}">${n.title}</a><a
									href="">[${n.commentCount}]</a></td>
								<td class="regdate">${n.regdate}</td>
								<td class="hit">${n.hit}</td>
							</tr>
							
						</c:forEach>

					</tbody>
				</table>

				<!--------------------------------------------------------------------------->
				<section class="board-tail">

					<section class="board-write-reg">
						<h1 class="hidden">글등록</h1>

						<div>
							<a href="reg">글쓰기</a>
						</div>
					</section>

					<section class="text-align-center">
						<h1 class="hidden">순서</h1>

						<section class="page-number">
							<div>
								<a class="btn" href="?p=1">더이전</a>
							</div>
							<div>
								<a class="btn" href="?p=${param.p-1}">이전</a>
							</div>

							<ul class="inline-block">


								<c:set var="page" value="1" />

								<c:if test="${not empty param.p}">
									<c:set var="page" value="${param.p}" />
								</c:if>

								<c:forEach var="i" begin="1" end="5">

									<c:set var="cls" value="${i==page?'strong':''}" />

									<li><a href="?p=${i}" class="${cls}">${i}</a></li>
								</c:forEach>
	
							</ul>

							<div>
								<a class="btn" href="${param.p+1}">다음</a>
							</div>
							<div>
								<a class="btn" href="?p=5">더다음</a>
							</div>
						</section>
					</section>
				</section>

			</div>
			<!--main-->
		</section>
		<!--body-container-->

		<!-- footer----------------------------------------------------------->
		<jsp:include page="../inc/footer.jsp" />
	</div>
	<!--body-->

</body>