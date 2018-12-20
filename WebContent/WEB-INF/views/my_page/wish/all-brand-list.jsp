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

<div id="body">
   <div class="main-container">
           <section id="main-body">
           <h1 class="hidden">바디리스트</h1>
           <!-- 테이블로하자  -->
           <div class="my-page-main-head">
               <div class="margin-l-20">내찜목록</div>
           </div>
           <div class=my-page-main-box>
                  
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
               <div class="flex" style="position: absolute; right:400px;">
                   <a href="all-brand-list.html"><div class="margin-r-20 margin-t-20" style="width:100px; height:40px; line-height:40px; color:white;padding:5px;background:#343a40; border-radius:5px; ">저장</div></a>
                   <a href="all-brand-list.html"><div class="margin-t-20" style="width:100px; height:40px; line-height:40px; color:white;padding:5px;background:#343a40; border-radius:5px; ">닫기</div></a>
               </div>
           </div>
       </section>
   </div>
   </div>
</html>