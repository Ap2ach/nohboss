<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" media="screen" href="/css/my_page/mypage.css"/>
<title>Insert title here</title>
</head>
<body>
  <!-- 헤더 -->
<jsp:include page="/WEB-INF/views/inc/header.jsp"></jsp:include>
<!-- 검색 -->
<jsp:include page="/WEB-INF/views/inc/search.jsp"></jsp:include>      
    <div id="body">
        <div class="content-container" style="display:flex;">
         <div class="aside-container">
				<aside>
				  <h1 class="hidden">메뉴바</h1>
            <!-- 마이페이지 어사이드 -->
                <jsp:include page="../inc/asidemenu.jsp"></jsp:include>
                <div class="menu-bar menu-bar-dcmenu margin-r-20" >
				       <div class="text-center">
				           <div class="menu-bar-category">
				                   MyPage
				           </div>
				           <div>
				               <ul class="hover-back">
			                       <a href="list"><li class="">My News <span>(0)</span></li></a>
			                       <a href="../board/write/list"><li class="">My Board</li></a>
			                       <a href="../wish/my-list"><li class="now">My Wish</li></a>
			                       <a href="../report/list"><li class="">My Q&A</li></a>
			                       <a href=""><li class="">My Info</li></a>
				               </ul>
				           </div>
				       </div>
				   </div>
				</aside>
				</div>
            <div class="main-container">
                <div class="main-container">
                     <section id="main-body">
                        <h1 class="hidden">바디리스트</h1>
                        <div>
                            <div >
                                <div class="">
                                    <ul class="list text-right margin-t-20 margin-b-20 margin-r-20">
                                        <li><a  href=""><input class="btn home-btn page-path" type="button" value=""/></a></li>
                                        <li><img class="page-path" src="/image/icon/next-16.png" ></li>
                                        <li class="page-path"><a href="list" >마이페이지</a></li>
                                        <li><img class="page-path" src="/image/icon/next-16.png" ></li>
                                        <li class="page-path">내소식</li>
                                    </ul>
                                </div>
                                
                                <!-- 테이블로하자  -->
                                <div class=my-page-main-box>
                                    <div class="my-page-main-head flex">
                                        <div class="my-page-main-head flex">
                                            <div>
                                                <div class="text-left margin-l-20" style="height: 100px;line-height: 100px;">
                                                    		내 소식
                                                </div>
                                            </div>
                                        </div>
                                    </div>


                                    <div style="margin:auto; margin-top:50px;">
                                        <table class="news-table mypage-table">
                                            <h1 class="hidden">테이블</h1>
                                            <thead>
                                                <tr>
                                                    <td class="table-tag">항목</td>
                                                    <td class="table-id">NO</td>
                                                    <td class="table-title">
                                                        <a href="">제목</a>
                                                    </td>
                                                    <td class="table-time">등록일자</td>
                                                </tr>
                                            </thead>
                                            <tbody class="table-content">
                                                <tr>
                                                    <td class="table-tag">할인</td>
                                                    <td class="table-id">1</td>
                                                    <td class="table-title">
                                                        <a href="">회원님이 찜하신 브랜드 새로운 이벤트가 등록됐습니다.</a>
                                                    </td>
                                                    <td class="table-time">2018.12.09 17:38</td>
                                                </tr>
                                                <tr>
                                                    <td class="table-tag">할인</td>
                                                    <td class="table-id">1</td>
                                                    <td class="table-title">
                                                        <a href="">회원님이 찜하신 브랜드 새로운 이벤트가 등록됐습니다.</a>
                                                    </td>
                                                    <td class="table-time">2018.12.09 17:38</td>
                                                </tr>
                                                    <tr>
                                                        <td class="table-tag">할인</td>
                                                        <td class="table-id">1</td>
                                                        <td class="table-title">
                                                            <a href="">회원님이 찜하신 브랜드 새로운 이벤트가 등록됐습니다.</a>
                                                        </td>
                                                        <td class="table-time">2018.12.09 17:38</td>
                                                    </tr>
                                                        <tr>
                                                            <td class="table-tag">할인</td>
                                                            <td class="table-id">1</td>
                                                            <td class="table-title">
                                                                <a href="">회원님이 찜하신 브랜드 새로운 이벤트가 등록됐습니다.</a>
                                                            </td>
                                                            <td class="table-time">2018.12.09 17:38</td>
                                                        </tr>
                                            </tbody>
                                        </table>
                                        
                                        <div class="my-write margin-t-20">
                                            <form class="margin-l-20">
                                                <select name="초기">
                                                    <option selected>전체</option>
                                                    <option>할인</option>
                                                    <option>혹혹</option>
                                                    <option>안내</option>
                                                </select>
                                                <select>
                                                    <option selected>전체기간</option>
                                                    <option>1주일 내</option>
                                                    <option>1개월 내</option>
                                                    <option>3개월 내</option> 
                                                </select>
                                                <input class="my-write-text" type="text" value=" "/>
                                                <input class="filter-btn btn" type="submit" value=" "/>
                                            </form>
                                        </div>

                                        <div class="pager">
                                                <div class="block-wrapping"><input type="button" value=" " class="btn prev-btn"/></div>
                                                <div class="block-wrapping">
                                                    <ul class="list">
                                                        <li><a href="">1</a></li>
                                                        <li><a href="">2</a></li>
                                                        <li><a href="">3</a></li>
                                                    </ul>
                                                </div>
                                                <div class="block-wrapping"><input type="button" value=" " class="btn next-btn"/></div>
                                            </div>
                                    </div>
                                </div>

                            </div>
                        </div>
                    </section>
                </div>
            </div>
            <div class="aside-container"></div>
        </div>
    </div>
    <!-- 푸터 -->
   	<jsp:include page="/WEB-INF/views/inc/footer.jsp"></jsp:include>
    </body>
</html>