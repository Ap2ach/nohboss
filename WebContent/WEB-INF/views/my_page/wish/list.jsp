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
				                       <a href="../news/list"><li class="">My News <span>(0)</span></li></a>
				                       <a href="../board/write/list"><li class="">My Board</li></a>
				                       <a href="my-list"><li class="now">My Wish</li></a>
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
                                       <li class="page-path">My Wish</li>
                                   </ul>
                               </div>
                               
                               <div class="my-page-main-head">
                                   <div class="margin-l-20">내찜목록</div>
                               </div>
                               <!-- 테이블로하자  -->
                               <div class="my-page-main-box">
                                   <div class='flex'>
                                           <a href=""><div class="tab-btn highlighted">전체</div></a>
                                           <a href=""><div class="tab-btn unhighlighted">한식</div></a>
                                           <a href=""><div class="tab-btn unhighlighted">편의점</div></a>
                                           <a href=""><div class="tab-btn unhighlighted">양식</div></a>
                                           <a href=""><div class="tab-btn unhighlighted">일식</div></a>
                                           <a href=""><div class="tab-btn unhighlighted">가족</div></a>
                                   </div>
                                   <!-- 위에 필터링 탭에서 체크한 만큼 div 생성!!!! -->
                                   <div class='flex wish-count'>
                                       <div class="">편의점 : 00개</div>
                                       <div class="">양식 : 00개</div>
                                   </div>
                                   
                                   <div class="brand-list flex">
                                       
                                           <div class="sel-brand" style="background-image:url('/image/brand/fast/kfc.jpg'); background-size: cover;">
                                               <!-- <img src="/image/brand/fast/kfc.jpg" width="200px" height="200px"> -->
                                           </div>
                                           <div class="unsel-brand" style="background:red;">
                                                   그치만 이렇게 하지 않으면 키위짱이
                                           </div>
                                           <div class="unsel-brand" style="background-image:url('/image/brand/fast/kfc.jpg'); background-size: cover;">
                                               <!-- <img src="/image/brand/fast/kfc.jpg" width="200px" height="200px"> -->
                                           </div>
                                           <div class="unsel-brand" style="background:red;">
                                                   그치만 이렇게 하지 않으면 키위짱이
                                           </div>
                                           <div class="unsel-brand" style="background-image:url('/image/brand/fast/kfc.jpg'); background-size: cover;">
                                               <!-- <img src="/image/brand/fast/kfc.jpg" width="200px" height="200px"> -->
                                           </div>
                                           <div class="unsel-brand" style="background:red;">
                                                   그치만 이렇게 하지 않으면 키위짱이
                                           </div>
                                           <div class="unsel-brand" style="background-image:url('/image/brand/fast/kfc.jpg'); background-size: cover;">
                                               <!-- <img src="/image/brand/fast/kfc.jpg" width="200px" height="200px"> -->
                                           </div>
                                           <div class="unsel-brand" style="background:red;">
                                                   그치만 이렇게 하지 않으면 키위짱이
                                           </div>
                                   </div>
                                   <!-- <div style="position: absolute; right:50px; top:70px;"> -->
                                   <div class="flex" style="font-weight: bold; position: absolute; top:50px;right:50px;">
                                           <a href="all-brand-list.html"><div class="margin-r-20 margin-t-20" style="border-radius:5px;width:100px; height:40px; line-height:40px; background:#a3a3a3;">전체목록</div></a>
                                       <a href="all-brand-list.html"><div class="margin-t-20" style="border-radius:5px;width:100px; height:40px; line-height:40px; background:#a3a3a3;">선택삭제</div></a>
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
