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
    <div id="body">
        <section class="body-container">
            <h1 class="hidden">body 컨테이너</h1>
            
            <div id=aside>
                <h1 class="hidden">aside</h1>
                
                <section class="aside-container">
                    <h1 class="hidden">어사이드 카테고리</h1>

                    <nav class="aside-category">
                        <h1>혹!혹!혹!</h1>

                        <ul>
                            <li><a href="">자유게시판</a></li>
                            <li><a href="">리뷰게시판</a></li>
                            <li><a href="">팁게시판</a></li>
                        </ul>
                    </nav>

                    <section class="issu-tag margin-top-small">
                        <h1># ISSUE TAG</h1>

                        <div class="issu-tag-search">
                            <input />
                            <input type="submit" value="검색" class="btn"/>
                        </div>
            
                        <ul class="issu-tag-menu">    
                            <li>#한식</li>
                            <li>#일식</li>
                            <li>#중식</li>
                            <li>#양식</li>
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
                                <li><a href="">최신순</a></li>
                                <li><a href="">추천순</a></li>
                                <li><a href="">댓글순</a></li>
                                <li><a href="">조회순</a></li>
                            </ul>
                        </section>

                        <section class="board-search-form">
                            <select>
                                <option>자유게시판</option>
                                <option>리뷰게시판</option>
                                <option>팁게시판</option>
                            </select>

                            <select>
                                <option>작성자</option>
                                <option>내용</option>
                                <option>작성자+내용</option>
                            </select>

                            <label class="hidden">검색</label>
                            <input type="text"/>
                            <input type="submit" value="검색" class="btn"/>
                        </section>
                    </form>
                </section>
                
                 <!----------------수정 구간-------------------------------------------------->
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
            </div><!--main-->
        </section><!--body-container-->
        
        <!----footer------------------------------------------------------>
        <jsp:include page="../inc/footer.jsp" />
    </div><!--body-->

</body>
</html>