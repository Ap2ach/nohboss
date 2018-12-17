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
                        </ul>
                    </nav>

                    <section class="issu-tag margin-top-small">
                        <h1># ISSUE TAG</h1>

                        <form action="" method="GET" class="issu-tag-search">
                            <input type="text" />
                            <input type="submit" value="검색" class="btn"/>
                        </form>
            
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
                                <li><a href=""><span>최신순<span></span></a></li>
                                <li><a href="">추천순</a></li>
                                <li><a href="">댓글순</a></li>
                                <li><a href="">조회순</a></li>
                            </ul>
                        </section>

                        <section class="board-search-form">
                            <select>
                                <option>자유게시판</option>
                                <option>리뷰게시판</option>
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
                </section>
            </div><!--main-->
        </section><!--body-container-->
        
        <!----footer------------------------------------------------------>
        <jsp:include page="../inc/footer.jsp" />
    </div><!--body-->

</body>
</html>