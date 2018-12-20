<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>Page Title</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" media="screen"
	href="/css/admin/member.css" />

<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/gh/lykmapipo/themify-icons@0.1.2/css/themify-icons.css">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link href="https://fonts.googleapis.com/css?family=Nanum+Pen+Script"
	rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Do+Hyeon"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css?family=Do+Hyeon|Gamja+Flower"
	rel="stylesheet">
<script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<script src="https://code.jquery.com/jquery-3.3.1.min.js"
	integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8="
	crossorigin="anonymous"></script>
<script src="/js/admin.js"></script>
<script>

    </script>
</head>

<body>
	<div class="container-background">
		<div class="page-background"></div>

		<div class="center-site">
			<div class="container-site">
				<div class="navigation">
					<ul>
						<li class="main-nav"><a href="/admin">
							<span class="fa fa-cog">관리자홈</span></a>
						</li>
						<li class="main-nav"><a href="test2.html">
							<span class="ti-home">홈</span></a>
						</li>
						<li class="main-nav"><a><span class="fa fa-money">할인</span></a>
							<ul class="hidden sub-menus">
								<li><a><i class="fa fa-home" aria-hidden="true"></i></a></li>
								<li><a><i class="fa fa-info" aria-hidden="true"></i></a></li>
								<li><a><i class="fa fa-cog" aria-hidden="true"></i></a></li>
							</ul>
						</li>
						<li class="main-nav"><a><span class="ti-map">지도</span></a>
							<ul class="hidden">
								<li><a><i class="fa fa-home" aria-hidden="true"></i></a></li>
								<li><a><i class="fa fa-info" aria-hidden="true"></i></a></li>
								<li><a><i class="fa fa-cog" aria-hidden="true"></i></a></li>
							</ul>
						</li>
						<li class="main-nav"><a><span class="fa fa-pencil">게시판</span></a>
							<ul class="hidden">
								<li><a><i class="fa fa-home" aria-hidden="true"></i></a></li>
								<li><a><i class="fa fa-info" aria-hidden="true"></i></a></li>
								<li><a><i class="fa fa-cog" aria-hidden="true"></i></a></li>
							</ul>
						</li>
						<li class="main-nav"><a><span
								class="fa fa-users all-members">모든회원</span></a></li>
					</ul>
				</div>
				<div class="user-profile">
					<div class="name">
						<label for="show-list" class="show-list" style="cursor: pointer"><span
							class="fa fa-bars"></span>회원목록</label> <input type="checkbox"
							id="show-list" role="button" />
					</div>
					<div class="user-list-container hidden">
						<form method="POST" action="member">
							<c:if test="${not empty member.id}">
								<a href="#"> <input style="margin: 0" type="text"
									name="search" id="search" onkeydown="sijak()"
									autocomplete="off" /> <span class="fa fa-search"></span>
								</a>
							</c:if>
						</form>

						<c:forEach var="m" items="${memberList}">
							<ul class="user-list">
								<li class="user" style="color:black;"><i class="fa fa-user" aria-hidden="true"></i>
									${m.name}</li>
							</ul>
						</c:forEach>
					</div>
					<div class="border-image">
						<div class="user-image"></div>
					</div>
					<div class="user-position">별명 : ${member.nickname}</div>
					
					<div class="user-information">
						<div class="title">${member.name}</div>
						<div class="infor">"${member.id}"</div>
						<div class="infor">"${member.email}"</div>
						<div class="infor">"${member.warn}"</div>
						<div class="infor">"${member.birth}"</div>
					</div>
					
					<div class="user-management">
						<div class="modify">회원경고</div>
						<div class="modify">회원강퇴</div>
					</div>

				</div>
				<div class="content-area">

					<div class="hire-status">
						<h2>
							<span class="fa fa-users"></span>모든회원
						</h2>
						<a href="" class="fa fa-arrow-right"> </a>
					</div>
					<!-- 테이블로하자  -->
					<div class=my-page-main-box>
						<div class='flex'>
							<span>총멤버:${memberList.size()}명</span>
						</div>
						<div class="table-container">
							<table class="mypage-table fitst">
								<h1 class="hidden">테이블</h1>
								<thead class="head-table" aria-colspan="2">
								
									<tr style="background : purple; color:white; font-weight : 100;">
										<td>멋쟁이</td>
										<td>이름</td>
										<td>아이디</td>
										<td>가입한 날짜 </td>
										<td>경고횟수</td>
										<td>자리조정</td>
									</tr>
								</thead>
								<tbody class="table-content">
									<c:forEach var="m" items="${pmemberList}">
										<tr>
											<td>"${i*10}"</td>
											<td>${m.name}</td>
											<td><a href="#">${m.id}</a></td>
											<td>${m.regdate}</td>
											<td>${m.warn}번</td>
											<td style="border:none;"><input type="button" value="up"/><input type="button" value="down"/></td>
										</tr>
									</c:forEach>
                                </tbody>
							</table>
						</div>
						<div class="pager">
                                <div class="block-wrapping"><span class="fa fa-angle-left"></span></div>
                                <div class="block-wrapping">
                                    <ul class="list">
									<c:set var="page" value="1" />

									<c:if test="${not empty param.p}">
										<c:set var="page" value="${param.p}" />
									</c:if>
									<c:set var="cls" value="${i==page?'strong':''}" />
                                    <c:forEach var="i" begin="1" end="2">
                                        <li><a href="?p=${i}" class="${cls}">${i}</a></li>
                                    </c:forEach>
                                    </ul>
                                </div>
							<div class="block-wrapping">
								<span class="fa fa-angle-right"></span>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>

</html>