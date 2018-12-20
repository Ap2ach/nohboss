<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8" name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" type="text/css" media="screen" href="/css/hokdc/hokdc.css"/>
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
                    <jsp:include page="inc/asidemenu.jsp"/>
                </div>
                <div class="body-main-container">
                    
                    <section id="main-body">
                        <h1 class="hidden">바디리스트</h1>
                        <div>
                            <div >
                                <div class="">
                                    <ul class="list text-right margin-t-20 margin-b-20 margin-r-20">
                                        <li><a  href=""><input class="btn home-btn page-path" type="button" value=""/></a></li>
                                        <li><img class="page-path" src="/WebContent/image/icon/next-16.png" ></li>
                                        <li class="page-path"><a href="list" >혹한할인!</a></li>
                                        <li><img class="page-path" src="/WebContent/image/icon/next-16.png" ></li>
                                        <li class="page-path">편의점</li>
                                    </ul>
                                </div>
                                
                                <div class="">
                                        <div class="dc-detail-header flex">
                                            <div>
                                                <img class="dc-detail-brand-logo"  src="/WebContent/image/brand/family/vips.jpg">
                                            </div>
                                            <div class="dc-detail-title" >텐더 3 핫윙3 3,500원! </div>
                                            <div class="dc-detail-start-date">(12/11</div>
                                            <div> ~ </div>
                                            <div class="dc-detail-end-date">)</div>
                                            
                                        </div>
                                        <div class="">
                                            <ul class="list text-right margin-t-20 margin-b-20" style="width:930px;">
                                                <li><img src="/WebContent/image/icon/eye-24.png" class="page-path" /></li>
                                                <li class="page-path">100</li>
                                                <li><img src="/WebContent/image/icon/calendar-24.png" class="page-path"></li>
                                                <li class="page-path">2018-12-12</li>
                                                <li><img class="page-path" src="/WebContent/image/icon/likechk-24.png"></li>
                                            </ul>
                                            <hr/><br><br><br><br>
                                        </div>
                                        <div class="text-center">
                                            <img  src="https://www.kfckorea.com/nas/event/2018/06/11/bIdpUqpqtE3D.jpg" width="848" height="920">
                                        </div>
                                        <br><br>
                                        <div class="">
                                            <!-- <table>
                                            <tbody>
                                                <tr>
                                                    <th>행사매장</th>
                                                    <td>전체매장</td>
                                                </tr>
                                                <tr>
                                                    <th>행사기간</th>
                                                    <td>12/11(화)~</td>
                                                </tr>
                                                <tr>
                                                    <th>제외매장</th>
                                                    <td>잠실야구장,에버랜드,서울대공원,...</td>
                                                </tr>
                                                <tr>
                                                    <th>이벤트내용</th>
                                                    <td>텐더3 핫윙3 3,500원</td>
                                                </tr>
                                                <tr>
                                                    <th>유의사항</th>
                                                    <td>제휴/추가 할인 불가, 딜리버리 불가, 타
                                                            할인/타 쿠폰 중복 사용 불가, 단체주문 추가 할인 불가, 
                                                            사이드 및 음료 변경 불가 ,KFC멤버십과 OK캐쉬백 동시 적립 불가
                                                            (서울타임스퀘어점은 커넬포인트 적립 및 OK캐쉬백 적립 및 사용 불가)</td>
                                                </tr>
                                            </tbody>
                                        </table> -->
                                        게시글 내용 들어가는 곳
                                        </div>
                                        <br><br>
                                        <hr/>
                                    </div>
                                    <!-- 목록 버튼!!!! -->
                                <div class="text-center" style="height:100px; line-height: 100px;">
                                    <input class="btn" type="button" value="목록" />
                                </div>
                            </div>
                        </div>
                    </section>
                </div>
                
            </div>
        </div>
        <!-- 푸터 -->
   	<jsp:include page="/WEB-INF/views/inc/footer.jsp"></jsp:include>
    </body>
</html>