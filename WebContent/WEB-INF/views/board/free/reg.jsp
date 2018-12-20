<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>혹!혹!혹!</title>
<link href="/css/board/reg.css" type="text/css" rel="stylesheet" />
</head>
<body>
	<!-- header----------------------------------------------------------->
   	<jsp:include page="../inc/header.jsp" />
   	
	<!-- body ------------------------------------------------------------>
	<jsp:include page="../inc/bodyTop.jsp" />
	
				<!----------------수정구간------------------------------------------------------------------------->
				<form class="reg-board" action="" method="">
                    <h1 class="reg-header">게시글</h1>

                    <section class="reg-body">
                        
                        <dl class="reg-choice">
                            <dt>게시판</dt>
                            <dd>
                                <select>
                                    <option>자유게시판</option>
                                    <option>리뷰게시판</option>
                                    <option>팁게시판</option>
                                </select>
                            </dd>
                        </dl>

                        <dl class="reg-title">
                            <dt>제목</dt>
                            <dd>
                                <input placeholder="제목을 입력하세요." />
                            </dd>
                        </dl>

                        <dl class="reg-file">
                            <dt>파일첨부</dt>
                            <dd>
                                <input type="file" />
                            </dd>
                        </dl>

                        <dl class="reg-content">
                            <dt>내용</dt>
                            <dd>
                                <textarea placeholder="내용을 입력하세요"></textarea>                            
                            </dd>
                        </dl>

                        <dl class="reg-tag">
                            <dt>태그 달기</dt>
                            <dd>
                                <input placeholder="#한식 #양식 #일식" />
                            </dd>
                        </dl>
                    </section>

                    <div class="reg-tail">
                        <input type="button" value="목록" />
                        <input type="submit" value="등록" />
                    </div>
                </form>
				
				<!--------------------------------------------------------------------------->
            <jsp:include page="../inc/bodyEnd.jsp"></jsp:include>