<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>혹!혹!혹!</title>
    <link href="/css/board/free.css" type="text/css" rel="stylesheet" />
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
                <table class="table">
                    <h1 class="hidden">테이블</h1>
                    
                    <thead class="table-title">
                        <tr>
                            <td><span>번호</span></td>
                            <td>제목</td>
                            <td>작성자</td>
                            <td>작성일</td>
                            <td>조회수</td>
                            <td>추천</td>
                        </tr>
                    </thead>

                    <tbody class="table-content">
                        <tr>
                            <td>12222</td>
                            <td class="table-content-overflow">
                                <a href="">
                                    물어볼 것이머넝먼엄아아아ㅏㅇ넝물어볼 것이머넝먼엄아아아ㅏㅇ넝물어볼 것이머넝먼엄아아아ㅏㅇ넝물어볼 것이머넝먼엄아아아ㅏㅇ넝물어볼
                                </a>
                            </td>
                            <td>명강사뉴렉</td>
                            <td>2018-12-09</td>
                            <td>10220</td>
                            <td>272</td>
                        </tr>
                        <tr>
                            <td>1</td>
                            <td class="table-content-overflow">물어볼 것이머넝먼엄아아아ㅏㅇ넝물어볼 것이머넝먼엄아아아ㅏㅇ넝물어볼 것이머넝먼엄아아아ㅏㅇ넝물어볼 것이머넝먼엄아아아ㅏㅇ넝물어볼 것이머넝먼엄아아아ㅏㅇ넝물어볼 것이머넝먼엄아아아ㅏㅇ넝물어볼 것이머넝먼엄아아아ㅏㅇ넝물어볼 것이머넝먼엄아아아ㅏㅇ넝</td>
                            <td>사람</td>
                            <td>2018-12-09</td>
                            <td>100</td>
                            <td>27</td>
                        </tr>
                    </tbody>
                </table>
                <!--------------------------------------------------------------------------->

                <section class="board-tail">

                    <section class="board-write-reg">
                        <h1 class="hidden">글등록</h1>
                        
                        <div><a href="">글쓰기</a></div>
                    </section>
                        
                    <section class="text-align-center">
                        <h1 class="hidden">순서</h1>
                        
                        <section class="page-number">
                            <div><a class="btn" href="">더이전</a></div>
                            <div><a class="btn" href="">이전</a></div>

                            <ul class="inline-block">
                                <li><a href="">1</a></li>
                                <li><a href="">2</a></li>
                                <li><a href="">3</a></li>
                                <li><a href="">4</a></li>
                                <li><a href="">5</a></li>
                                <li><a href="">6</a></li>
                                <li><a href="">7</a></li>
                                <li><a href="">8</a></li>
                                <li><a href="">9</a></li>
                                <li><a href="">10</a></li>
                            </ul>

                            <div><a class="btn" href="">다음</a></div>
                            <div><a class="btn" href="">더다음</a></div>
                        </section>
                    </section>
                </section>
            </div><!--main-->
        </section><!--body-container-->
        
        <!----footer------------------------------------------------------>
        <jsp:include page="../inc/footer.jsp" />
    </div><!--body-->

</body>
</html>