<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    <!-- body ------------------------------------------------------------>
    <div id="body">
        <section class="body-container">
            <h1 class="hidden">body 컨테이너</h1>
            
            <div id=aside>
                <h1 class="hidden">aside</h1>
                
                <section class="aside-container">
                    <h1 class="hidden">어사이드 카테고리</h1>

                    <nav class="aside-category">
                        <h1><a href="">혹!혹!혹!</a></h1>

                        <ul>
                            <li><a href="../notice/list">공지사항</a></li>
                            <li><a href="../free/list">자유게시판</a></li>
                            <li><a href="../review/list">리뷰게시판</a></li>
                            <li><a href="../tip/list">팁게시판</a></li>
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

