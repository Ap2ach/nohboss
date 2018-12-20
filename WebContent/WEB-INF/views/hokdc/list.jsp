<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8" name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" type="text/css" media="screen" href="../css/hokdc/hokdc.css"/>
        <title>혹한할인?!</title>
    </head>
    <body>
    <!-- 헤더 -->
    <jsp:include page="/WEB-INF/views/inc/header.jsp"></jsp:include>
    <!-- 검색 -->
     <jsp:include page="/WEB-INF/views/inc/search.jsp"></jsp:include>    
               
        <div id="body">
            <div class="content-container" style="display:flex;">
                <div class="aside-container">
                    <jsp:include page="inc/asidemenu.jsp" />
                </div>
                <div class="body-main-container">
                    <section id="main-body">
                        <h1 class="hidden">바디리스트</h1>
                        <div>
                            <div >
                                <div class="">
                                    <ul class="list text-right margin-t-20 margin-b-20 margin-r-20">
                                        <li><a  href=""><input class="btn home-btn page-path" type="button" value=""/></a></li>
                                        <li><img class="page-path" src="/image/icon/next-16.png"></li>
                                        <li class="page-path">혹한할인!</li>
                                    </ul>
                                </div>
                                <!-- 마이리스트  -->
                                <div id="myList" class="dc-container margin-b-20">
                                    <div class="dc-category-title">                            
                                        <div class="margin-l-20">MyList</div>
                                    </div>
                                    <div class="dc-category-content">
                                        <div class="item-dc-list">
                                            <ul >                                                
                                                <li>
                                                    <div>
                                                        <div class="dc-image-border">
                                                            <a class="" href="detail.html">
                                                                <div class="margin-20 dc-image-container">
                                                                    <img class="dc-title-image" src="/image/brand/fast/kfc.jpg" alt="이미지"/>
                                                                </div>
                                                            <div>
                                                                <div class="margin-10 dc-title">
                                                                    <!-- <span class="margin-r-10" style="font-weight: bold; ">[무지]</span><br> -->
                                                                    <span class="dc-detail-title" style="font-weight: bold;">무지혹 20% 세일!무지혹 20% 세일!무지혹 20% 세일!</span>
                                                                </div>
                                                                <div class="margin-b-10 flex dc-image-top-border">
                                                                    <div class="margin-l-20 margin-t-10" style="font-size: 15px;">
                                                                        <span class="dc-detail-start-date">18.12.11</span>
                                                                        <span>~</span>
                                                                        <span class="dc-detail-end-date">18.12.31</span>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            </a>
                                                        </div>    
                                                    </div>  
                                                </li>
                                                <li>
                                                    <div>
                                                        <div class="dc-image-border">
                                                            <a href="detail.html">
                                                                <div class="margin-20 dc-image-container">
                                                                        <img class="dc-title-image" src="/image/brand/fast/kfc.jpg" alt="이미지"/>
                                                                </div>
                                                            <div>
                                                                <div class="margin-10 dc-title">
                                                                    <!-- <span class="margin-r-10" style="font-weight: bold; ">[무지]</span><br> -->
                                                                    <span class="dc-detail-title" style="font-weight: bold;">무지혹 20% 세일!무지혹 20% 세일!무지혹 20% 세일!</span>
                                                                </div>
                                                                <div class="margin-b-10 flex dc-image-top-border">
                                                                    <div class="margin-l-20 margin-t-10" style="font-size: 15px;">
                                                                        <span class="dc-detail-start-date">18.12.11</span>
                                                                        <span>~</span>
                                                                        <span class="dc-detail-end-date">18.12.31</span>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            </a>
                                                        </div>    
                                                    </div>  
                                                </li>
                                                <li>
                                                    <div>
                                                        <div class="dc-image-border">
                                                            <a href="detail.html">
                                                                <div class="margin-20 dc-image-container">
                                                                        <img class="dc-title-image" src="/image/brand/fast/kfc.jpg" alt="이미지"/>
                                                                </div>
                                                            <div>
                                                                <div class="margin-10 dc-title">
                                                                    <!-- <span class="margin-r-10" style="font-weight: bold; ">[무지]</span><br> -->
                                                                    <span class="dc-detail-title" style="font-weight: bold;">무지혹 20% 세일!무지혹 20% 세일!무지혹 20% 세일!</span>
                                                                </div>
                                                                <div class="margin-b-10 flex dc-image-top-border">
                                                                    <div class="margin-l-20 margin-t-10" style="font-size: 15px;">
                                                                        <span class="dc-detail-start-date">18.12.11</span>
                                                                        <span>~</span>
                                                                        <span class="dc-detail-end-date">18.12.31</span>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            </a>
                                                        </div>    
                                                    </div>  
                                                </li>
                                                <li>
                                                    <div>
                                                        <div class="dc-image-border">
                                                            <a href="detail.html">
                                                                <div class="margin-20 dc-image-container">
                                                                        <img class="dc-title-image" src="/image/brand/fast/kfc.jpg" alt="이미지"/>
                                                                </div>
                                                            <div>
                                                                <div class="margin-10 dc-title">
                                                                    <!-- <span class="margin-r-10" style="font-weight: bold; ">[무지]</span><br> -->
                                                                    <span class="dc-detail-title" style="font-weight: bold;">무지혹 20% 세일!무지혹 20% 세일!무지혹 20% 세일!</span>
                                                                </div>
                                                                <div class="margin-b-10 flex dc-image-top-border">
                                                                    <div class="margin-l-20 margin-t-10" style="font-size: 15px;">
                                                                        <span class="dc-detail-start-date">18.12.11</span>
                                                                        <span>~</span>
                                                                        <span class="dc-detail-end-date">18.12.31</span>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            </a>
                                                        </div>    
                                                    </div>  
                                                </li>
                                                <li>
                                                    <div>
                                                        <div class="dc-image-border">
                                                            <a href="detail.html">
                                                                <div class="margin-20 dc-image-container">
                                                                        <img class="dc-title-image" src="/image/brand/fast/kfc.jpg" alt="이미지"/>
                                                                </div>
                                                            <div>
                                                                <div class="margin-10 dc-title">
                                                                    <!-- <span class="margin-r-10" style="font-weight: bold; ">[무지]</span><br> -->
                                                                    <span class="dc-detail-title" style="font-weight: bold;">무지혹 20% 세일!무지혹 20% 세일!무지혹 20% 세일!</span>
                                                                </div>
                                                                <div class="margin-b-10 flex dc-image-top-border">
                                                                    <div class="margin-l-20 margin-t-10" style="font-size: 15px;">
                                                                        <span class="dc-detail-start-date">18.12.11</span>
                                                                        <span>~</span>
                                                                        <span class="dc-detail-end-date">18.12.31</span>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            </a>
                                                        </div>    
                                                    </div>  
                                                </li>
                                                <li>
                                                    <div>
                                                        <div class="dc-image-border">
                                                            <a href="detail.html">
                                                                <div class="margin-20 dc-image-container">
                                                                        <img class="dc-title-image" src="/image/brand/fast/kfc.jpg" alt="이미지"/>
                                                                </div>
                                                            <div>
                                                                <div class="margin-10 dc-title">
                                                                    <!-- <span class="margin-r-10" style="font-weight: bold; ">[무지]</span><br> -->
                                                                    <span class="dc-detail-title" style="font-weight: bold;">무지혹 20% 세일!무지혹 20% 세일!무지혹 20% 세일!</span>
                                                                </div>
                                                                <div class="margin-b-10 flex dc-image-top-border">
                                                                    <div class="margin-l-20 margin-t-10" style="font-size: 15px;">
                                                                        <span class="dc-detail-start-date">18.12.11</span>
                                                                        <span>~</span>
                                                                        <span class="dc-detail-end-date">18.12.31</span>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            </a>
                                                        </div>    
                                                    </div>  
                                                </li>
                                            </ul>
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
                                <!-- 할인 카테고리 종류 클래스 -->
                                <div class="dc-catagory-name dc-container margin-b-20">
                                        <div class="dc-category-title">                            
                                            <div class="margin-l-20">편의점</div>
                                        </div>
                                        <div class="dc-category-content">
                                            <div class="item-dc-list">
                                                <ul >                                                
                                                    <li>
                                                        <div>
                                                            <div class="dc-image-border">
                                                                <label class="checkbox-wrap">
                                                                    <input type="checkbox" id="cb1" ><label class="check-icon" for="cb1"></label>
                                                                </label>
                                                            <a href="detail.html">
                                                                    <div class="margin-20 dc-image-container">
                                                                            <img class="dc-title-image" src="/image/brand/fast/kfc.jpg" alt="이미지"/>
                                                                    </div>
                                                                <div>
                                                                    <div class="margin-10 dc-title">
                                                                        <span class="dc-detail-title" style="font-weight: bold;">무지혹 20% 세일!무지혹 20% 세일!무지혹 20% 세일!</span>
                                                                    </div>
                                                                    <div class="margin-b-10 flex dc-image-top-border">
                                                                        <div class="margin-l-20 margin-t-10" style="font-size: 15px;">
                                                                            <span class="dc-detail-start-date">18.12.11</span>
                                                                            <span>~</span>
                                                                            <span class="dc-detail-end-date">18.12.31</span>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                </a>
                                                            </div>    
                                                        </div>  
                                                    </li>
                                                    <li>
                                                            <div>
                                                                <div class="dc-image-border">
                                                                    <label class="checkbox-wrap">
                                                                        <input type="checkbox" id="cb1" ><label class="check-icon" for="cb1"></label>
                                                                    </label>
                                                                <a href="detail.html">
                                                                        <div class="margin-20 dc-image-container">
                                                                                <img class="dc-title-image" src="/image/brand/fast/kfc.jpg" alt="이미지"/>
                                                                        </div>
                                                                    <div>
                                                                        <div class="margin-10 dc-title">
                                                                            <!-- <span class="margin-r-10" style="font-weight: bold; ">[무지]</span><br> -->
                                                                            <span class="dc-detail-title" style="font-weight: bold;">무지혹 20% 세일!무지혹 20% 세일!무지혹 20% 세일!</span>
                                                                        </div>
                                                                        <div class="margin-b-10 flex dc-image-top-border">
                                                                            <div class="margin-l-20 margin-t-10" style="font-size: 15px;">
                                                                                <span class="dc-detail-start-date">18.12.11</span>
                                                                                <span>~</span>
                                                                                <span class="dc-detail-end-date">18.12.31</span>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    </a>
                                                                </div>    
                                                            </div>  
                                                    </li>
                                                    <li>
                                                            <div>
                                                                <div class="dc-image-border">
                                                                    <label class="checkbox-wrap">
                                                                        <input type="checkbox" id="cb1" ><label class="check-icon" for="cb1"></label>
                                                                    </label>
                                                                <a href="detail.html">
                                                                        <div class="margin-20 dc-image-container">
                                                                                <img class="dc-title-image" src="/image/brand/fast/kfc.jpg" alt="이미지"/>
                                                                        </div>
                                                                    <div>
                                                                        <div class="margin-10 dc-title">
                                                                            <!-- <span class="margin-r-10" style="font-weight: bold; ">[무지]</span><br> -->
                                                                            <span class="dc-detail-title" style="font-weight: bold;">무지혹 20% 세일!무지혹 20% 세일!무지혹 20% 세일!</span>
                                                                        </div>
                                                                        <div class="margin-b-10 flex dc-image-top-border">
                                                                            <div class="margin-l-20 margin-t-10" style="font-size: 15px;">
                                                                                <span class="dc-detail-start-date">18.12.11</span>
                                                                                <span>~</span>
                                                                                <span class="dc-detail-end-date">18.12.31</span>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    </a>
                                                                </div>    
                                                            </div>  
                                                    </li>
                                                    <li>
                                                            <div>
                                                                <div class="dc-image-border">
                                                                    <label class="checkbox-wrap">
                                                                        <input type="checkbox" id="cb1" ><label class="check-icon" for="cb1"></label>
                                                                    </label>
                                                                <a href="detail.html">
                                                                        <div class="margin-20 dc-image-container">
                                                                                <img class="dc-title-image" src="/image/brand/fast/kfc.jpg" alt="이미지"/>
                                                                        </div>
                                                                    <div>
                                                                        <div class="margin-10 dc-title">
                                                                            <!-- <span class="margin-r-10" style="font-weight: bold; ">[무지]</span><br> -->
                                                                            <span class="dc-detail-title" style="font-weight: bold;">무지혹 20% 세일!무지혹 20% 세일!무지혹 20% 세일!</span>
                                                                        </div>
                                                                        <div class="margin-b-10 flex dc-image-top-border">
                                                                            <div class="margin-l-20 margin-t-10" style="font-size: 15px;">
                                                                                <span class="dc-detail-start-date">18.12.11</span>
                                                                                <span>~</span>
                                                                                <span class="dc-detail-end-date">18.12.31</span>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    </a>
                                                                </div>    
                                                            </div>  
                                                    </li>
                                                    <li>
                                                            <div>
                                                                <div class="dc-image-border">
                                                                    <label class="checkbox-wrap">
                                                                        <input type="checkbox" id="cb1" ><label class="check-icon" for="cb1"></label>
                                                                    </label>
                                                                <a href="detail.html">
                                                                        <div class="margin-20 dc-image-container">
                                                                                <img class="dc-title-image" src="/image/brand/fast/kfc.jpg" alt="이미지"/>
                                                                        </div>
                                                                    <div>
                                                                        <div class="margin-10 dc-title">
                                                                            <!-- <span class="margin-r-10" style="font-weight: bold; ">[무지]</span><br> -->
                                                                            <span class="dc-detail-title" style="font-weight: bold;">무지혹 20% 세일!무지혹 20% 세일!무지혹 20% 세일!</span>
                                                                        </div>
                                                                        <div class="margin-b-10 flex dc-image-top-border">
                                                                            <div class="margin-l-20 margin-t-10" style="font-size: 15px;">
                                                                                <span class="dc-detail-start-date">18.12.11</span>
                                                                                <span>~</span>
                                                                                <span class="dc-detail-end-date">18.12.31</span>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    </a>
                                                                </div>    
                                                            </div>  
                                                    </li>
                                                    <li>
                                                            <div>
                                                                <div class="dc-image-border">
                                                                    <label class="checkbox-wrap">
                                                                        <input type="checkbox" id="cb1" ><label class="check-icon" for="cb1"></label>
                                                                    </label>
                                                                <a href="detail.html">
                                                                        <div class="margin-20 dc-image-container">
                                                                                <img class="dc-title-image" src="/image/brand/fast/kfc.jpg" alt="이미지"/>
                                                                        </div>
                                                                    <div>
                                                                        <div class="margin-10 dc-title">
                                                                            <!-- <span class="margin-r-10" style="font-weight: bold; ">[무지]</span><br> -->
                                                                            <span class="dc-detail-title" style="font-weight: bold;">무지혹 20% 세일!무지혹 20% 세일!무지혹 20% 세일!</span>
                                                                        </div>
                                                                        <div class="margin-b-10 flex dc-image-top-border">
                                                                            <div class="margin-l-20 margin-t-10" style="font-size: 15px;">
                                                                                <span class="dc-detail-start-date">18.12.11</span>
                                                                                <span>~</span>
                                                                                <span class="dc-detail-end-date">18.12.31</span>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    </a>
                                                                </div>    
                                                            </div>  
                                                    </li> 
                                                </ul>
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
                <div class="aside-container">
                    <!-- <aside>
                         
                        <h1 class="hidden">내 지갑 (제휴 현황) 시럽 벤치마킹</h1>
                        <div class="menu-bar menu-bar-card" >
                            <div class="껍데기 text-center">
                                <div class="menu-bar-category">
                                    내 카드
                                </div>
        
                                <div>
                                    <ul class="hover-back" >
                                        <a href="detail.old..html"><li class="padding-t-10 padding-b-10">T-MemberShip</li></a>
                                        <a href=""><li class="padding-t-10 padding-b-10">NaraSarang Card</li></a>
                                        <a href=""><li class="padding-t-10 padding-b-10">S20 체크카드</li></a>
                                        <a href=""><li class="padding-t-10 padding-b-10">+ 카드 등록하기</li></a>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </aside> -->
                </div>
            </div>
        </div>
        <!-- 푸터 -->
   	<jsp:include page="/WEB-INF/views/inc/footer.jsp"></jsp:include>
    </body>
</html>