<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>혹!혹!혹!</title>
<link href="/css/board/edit.css" type="text/css" rel="stylesheet" />
</head>
<body>
	<!-- header----------------------------------------------------------->
   	<jsp:include page="../inc/header.jsp" />
   	
	<!-- body ------------------------------------------------------------>
	<jsp:include page="../inc/bodyTop.jsp" />
	
				<!----------------수정구간------------------------------------------------------------------------->
				<section class="detail-Board">

                    <div class="d-title">제목</div>
                    <div class="d-info">
                        <span>아이디</span>
                        
                        <div>
                            <p>추천수</p>
                            <p>조회수</p>
                            <p>날짜</p>
                        </div>
                    </div>
                    <div class="d-content">내용</div>
                    <div class="d-button">
                        <input type="button" value="목록"/>
                        <input type="button" value="수정완료"/>
                    </div>

                    <div class="d-page-move">
                        <dl>
                            <dt><a href="">이전글</a></dt>
                            <dd><a href="">뉴렉강의 최고</a></dd>
                        </dl>
                        <dl>
                            <dt><a href="">다음글</a></dt>
                            <dd><a href="">시녑대갈통 부셔버리기</a></dd>
                        </dl>
                    </div>
                </section>>
				
				<!--------------------------------------------------------------------------->
            <jsp:include page="../inc/bodyEnd.jsp"></jsp:include>