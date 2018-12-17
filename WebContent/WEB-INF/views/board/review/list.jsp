<html>
<head>
    <title>혹!혹!혹!</title>
    <link href="/css/board/review.css" type="text/css" rel="stylesheet" />
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
                                <li><a href="">한식</a></li>
                                <li><a href="">일식</a></li>
                                <li><a href="">중식</a></li>
                                <li><a href="">양식</a></li>
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
                <!----------------reviewBoard------------------------------------------------------------------------->
                <div class="review-board">
                    <ul>
                        <li>
                            <section class="list-title">
                                <h1 class="hidden">리스트 타이틀</h1>

                                <div>
                                    <img class="list-img">
                                    <span class="list-category"><a href="">[한식]</a></span>
                                    <p class="list-title"><a href="">무지혹에서 추천한 곳에 다녀왔습니다!!</a></p>
                                    <em>(5)</em>
                                </div>
                            </section>

                            <section class="list-info">
                                <h1 class="hidden">리스트 정보</h1>

                                <div class="list-info-head">
                                    <dl>
                                        <dt><img src=""></dt>
                                        <dd class="inline-block">아이디</dt>
                                        <dd class="inline-block">조회수</dd>
                                    </dl>
                                </div>

                                <div class="list-info-tail">
                                    <dl class="inline-block">
                                        <dt><img src=""></dt>
                                        <dd>추천수</dd>
                                    </dl>

                                    <dl class="inline-block">
                                        <dt><img src=""></dt>
                                        <dd>날짜</dd>
                                    </dl>
                                </div>
                            </section>
                        </li>
                        <li>
                            <section>
                                <h1 class="hidden">리스트 타이틀</h1>

                                <div>
                                    <img class="list-img">
                                    <span class="list-category"><a href="">[한식]</a></span>
                                    <p class="list-title">무지혹에서 추천한 곳에 다녀왔습니다!!</p>
                                    <em>(5)</em>
                                </div>
                            </section>

                            <section class="list-info">
                                <h1 class="hidden">리스트 정보</h1>

                                <div class="list-info-head">
                                    <dl>
                                        <dt><img src=""></dt>
                                        <dd class="inline-block">아이디</dt>
                                        <dd class="inline-block">조회수</dd>
                                    </dl>
                                </div>

                                <div class="list-info-tail">
                                    <dl class="inline-block">
                                        <dt><img src=""></dt>
                                        <dd>추천수</dd>
                                    </dl>

                                    <dl class="inline-block">
                                        <dt><img src=""></dt>
                                        <dd>날짜</dd>
                                    </dl>
                                </div>
                            </section>
                        </li>
                        <li>
                            <section>
                                <h1 class="hidden">리스트 타이틀</h1>

                                <div>
                                    <img class="list-img">
                                    <span class="list-category"><a href="">[한식]</a></span>
                                    <p class="list-title">무지혹에서 추천한 곳에 다녀왔습니다!!</p>
                                    <em>(5)</em>
                                </div>
                            </section>

                            <section class="list-info">
                                <h1 class="hidden">리스트 정보</h1>

                                <div class="list-info-head">
                                    <dl>
                                        <dt><img src=""></dt>
                                        <dd class="inline-block">아이디</dt>
                                        <dd class="inline-block">조회수</dd>
                                    </dl>
                                </div>

                                <div class="list-info-tail">
                                    <dl class="inline-block">
                                        <dt><img src=""></dt>
                                        <dd>추천수</dd>
                                    </dl>

                                    <dl class="inline-block">
                                        <dt><img src=""></dt>
                                        <dd>날짜</dd>
                                    </dl>
                                </div>
                            </section>
                        </li>
                    </ul>
                </div>
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
        
        
    </div><!--body-->

</body>
</html>