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
				                       <a href="../wish/my-list"><li class="now">My Wish</li></a>
				                       <a href="list"><li class="">My Q&A</li></a>
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
                                                <li class="page-path">My Q&A</li>
                                            </ul>
                                        </div>
                                        
                                        <!-- 테이블로하자  -->
                                        <style>
                                            .report-radio span{
                                                margin:0px 40px;
                                            }
                                            .report-radio label{
                                                margin-right:20px;
                                            }
                                            tbody td:first-child{
                                                background:#a3a3a3 !important;
                                            }
                                            td{
                                                font-size:18px;
                                            }
                                        </style>
                                                <!-- 게시판 -->
                                        <div class="my-page-main-box margin-b-20" >
                                            <div class="my-page-main-head flex">
                                                <div class="my-report">
                                                    <div class="text-left margin-l-20" style="height: 100px;line-height: 100px;">
                                                        문의하기
                                                    </div>
                                                </div>
                                            </div>
                                            <form style="height: 830px;"> 
                                                <table id="write" class="report-reg-table mypage-table">
                                                    <h1 class="hidden">테이블</h1>
                                                    <tbody class="table-content">
                                                        <tr style="height:50px;">
                                                            <td style="width:100px;">
                                                                <div>문의유형</div>
                                                            </td>                                                        
                                                            <td class="text-left">
                                                                <div class="report-radio" style="">
                                                                    <span>
                                                                        <label>문의</label><input type="radio" name="kind">
                                                                    </span>
                                                                    <span>
                                                                        <label>건의</label><input type="radio" name="kind">
                                                                    </span>
                                                                    <span>
                                                                        <label>신고</label><input type="radio" name="kind">
                                                                    </span>
                                                                    <span>
                                                                        <label>기타</label><input type="radio" name="kind">
                                                                    </span>
                                                                </div>
                                                            </td>
                                                        </tr>
                                                        <tr style="height:30px;">
                                                            <td style="height:50px;">
                                                                <label style="height:50px;">제목</label>
                                                            </td>
                                                            
                                                            <td style="width:800px;">
                                                                <input type="text" name="kind" style="outline:none; width:100%;height:30px;">
                                                            </td>
                                                        </tr>
                                                        <tr style="height:300px;">
                                                            <td class="">
                                                                <label style="height:300px;line-height: inherit;">내용</label>
                                                            </td>
                                                            <td class="">
                                                                <textarea  style="padding:5px; border:0px; outline:none; width:792px; height:300px;line-height: inherit;"></textarea>
                                                            </td>
                                                        </tr>
                                                        <tr style="height:150px;">
                                                            <td class="">
                                                                <label>파일첨부</label>    
                                                            </td>
                                                            <td class="">
                                                                <div style="height:150px; width:100%;background:white;">
                                                            </td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                                <div style="margin:20px; text-align: center;">
                                                    <a href="list.html"><span style="color:white;padding:5px;background:#343a40; border-radius:5px; ">문의하기</span></a>
                                                    <a href="list.html"><span style="color:white;padding:5px;background:#343a40; border-radius:5px; ">돌아가기</span></a>
                                                </div>
                                            </form>
                                        </div>
                                             <!-- 게시판 --> <!-- 게시판 --> <!-- 게시판 -->
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