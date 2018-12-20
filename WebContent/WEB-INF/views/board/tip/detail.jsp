<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>혹!혹!혹!</title>
<link href="/css/board/detail.css" type="text/css" rel="stylesheet" />
</head>
<body>
	<!-- header----------------------------------------------------------->
   	<jsp:include page="../inc/header.jsp" />
   	
	<!-- body ------------------------------------------------------------>
	<jsp:include page="../inc/bodyTop.jsp" />
	
				<!----------------수정구간------------------------------------------------------------------------->
				<section class="detail-board">

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
                        <input type="button" value="수정"/>
                        <input type="button" value="삭제"/>
                        <input type="button" value="등록"/>
                    </div>

                    <div class="d-reply">

                        <section class="d-reply-title">
                            <h1>댓글</h1>
                            <span>1</span>
                        </section>
                        
                        <div class="d-reply-content">
                            <p>
                                <span>아이디</span>
                                <span>날짜 및 시간</span>
                            </p>

                            <div>

                            </div>
                        </div>
                    </div >
                    
                    <div class="r-page-move"> .. . 1 . ..</1></div>    
                    <div class="d-reply-add">
                        <textarea class="d-reply-add-content" placeholder="내용을 입력하세요.">

                        </textarea>

                        <div class="d-reply-add-button">
                            <input type="button" value="등록"/>
                        </div>
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
                </section>
				
				<!--------------------------------------------------------------------------->
            <jsp:include page="../inc/bodyEnd.jsp"></jsp:include>