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
                                            td:nth-child(2){
                                                text-align: left;
                                            }
                                            tbody td{
                                                border-radius: 0px !important;
                                            }
                                        </style>
                                                <!-- 게시판 -->
                                                <!-- ///////////////////// -->
        <!-- 게시판 -->
                                            <div class="my-page-main-box margin-b-20" >
                                                    <div class="my-page-main-head flex">
                                                        <div class="my-report">
                                                            <div class="text-left margin-l-20" style="height: 100px;line-height: 100px;">
                                                                문의내용
                                                            </div>
                                                        </div>
                                                    </div>
                                                        <table id="write" class="mypage-table">
                                                            <h1 class="hidden">테이블</h1>
                                                            <tbody class="table-content">
                                                                <tr style="height:50px;">
                                                                    <td style="width:100px;">
                                                                        <div>문의유형</div>
                                                                    </td>                                                        
                                                                    <td class="text-left">
                                                                        <div class="report-radio" style="">
                                                                            <label>신고</label>
                                                                        </div>
                                                                    </td>
                                                                </tr>
                                                                <tr style="height:30px;">
                                                                    <td style="height:50px;">
                                                                        <label style="height:50px;">제목</label>
                                                                    </td>
                                                                    
                                                                    <td style="width:800px;">
                                                                        <div>혹무지를 신고합니다.</div>
                                                                    </td>
                                                                </tr>
                                                                <tr style="height:300px;">
                                                                    <td class="">
                                                                        <label style="height:300px;line-height: inherit;">내용</label>
                                                                    </td>
                                                                    <td class="">
                                                                        <div style="padding:10px; border:0px; outline:none;  min-height:300px;line-height: inherit; white-space: pre-line;">
                                                                                히 이번 시즌은 카드 수수료가 없는 소상공인 간편결제인 제로페이로 입장료 지불이 가능하다. 제로페이로 결제시 입장료의 30%(300원)를 할인받을 수 있다. 제로페이로 결제하는 선착순 100명의 시민에게 스케이트장 입장료를 100원에 구매할 수 있는 '제로페이, 백원의 행복' 이벤트도 매일 진행된다.

                                                                                입장료에는 스케이트 대여료가 포함돼 있다. 1회권으로 1시간 동안 이용할 수 있다. 이용객의 안전을 위해 안전모와 보호대는 무료다. 
                                                                                
                                                                                시는 올해 4년만에 스케이트장 디자인을 변경했다. 광장의 의미인 소통과 형태인 원형에 초점을 뒀다. 논두렁 이미지를 입힌 디자인이다. 아이스링크 한 가운데에는 평화를 기원하는 시민들의 마음을 담은 한반도 이미지가 새겨진다. 
                                                                                
                                                                                또 예년보다 넓어진(지난해 1166㎡→올해 1897㎡) 스케이트장 실내공간에서 '남북체육교류 사진전'과 '실내 VR(가상현실) 스키 체험존', '실내 포토존' 등 문화·체육프로그램을 즐길 수 있다. '2018 평창 동계 올림픽'을 통해 사랑을 받았던 컬링은 별도로 마련된 링크장에서 직접 체험해볼 수 있다.  
                                                                                
                                                                                주말, 성탄절, 송년제야, 설명절 등 시기별로 가족, 친구, 연인들과 함께할 수 있는 이벤트 프로그램도 준비돼 있다. 2019년 제100회 전국체전 및 제39회 전국장애인체전 마스코트인 해띠와 해온과 함께하는 이벤트도 펼쳐진다. 
                                                                                
                                                                                서울광장 스케이트장은 초미세먼지가 일정수준 이상일 경우 운영이 중단된다. 시민들의 이동시간을 고려해 대기 오염도를 사전에 확인할 수 있도록 홈페이지를 통해 실시간 공지된다. 
                                                                                
                                                                                시 관계자는 "수도권형 비상저감조치가 발령되면 발령시점으로부터 1시간 운영 후 운영이 중단된다"면서 "초미세먼지 주의보 이상이 발령되는 경우 주의보 발령시점에 기 운영 중인 회차만 운영하며 이후 회차는 중단된다"고 말했다
                                                                                히 이번 시즌은 카드 수수료가 없는 소상공인 간편결제인 제로페이로 입장료 지불이 가능하다. 제로페이로 결제시 입장료의 30%(300원)를 할인받을 수 있다. 제로페이로 결제하는 선착순 100명의 시민에게 스케이트장 입장료를 100원에 구매할 수 있는 '제로페이, 백원의 행복' 이벤트도 매일 진행된다.

                                    입장료에는 스케이트 대여료가 포함돼 있다. 1회권으로 1시간 동안 이용할 수 있다. 이용객의 안전을 위해 안전모와 보호대는 무료다. 

                                    시는 올해 4년만에 스케이트장 디자인을 변경했다. 광장의 의미인 소통과 형태인 원형에 초점을 뒀다. 논두렁 이미지를 입힌 디자인이다. 아이스링크 한 가운데에는 평화를 기원하는 시민들의 마음을 담은 한반도 이미지가 새겨진다. 

                                    또 예년보다 넓어진(지난해 1166㎡→올해 1897㎡) 스케이트장 실내공간에서 '남북체육교류 사진전'과 '실내 VR(가상현실) 스키 체험존', '실내 포토존' 등 문화·체육프로그램을 즐길 수 있다. '2018 평창 동계 올림픽'을 통해 사랑을 받았던 컬링은 별도로 마련된 링크장에서 직접 체험해볼 수 있다.  

                                    주말, 성탄절, 송년제야, 설명절 등 시기별로 가족, 친구, 연인들과 함께할 수 있는 이벤트 프로그램도 준비돼 있다. 2019년 제100회 전국체전 및 제39회 전국장애인체전 마스코트인 해띠와 해온과 함께하는 이벤트도 펼쳐진다. 

                                    서울광장 스케이트장은 초미세먼지가 일정수준 이상일 경우 운영이 중단된다. 시민들의 이동시간을 고려해 대기 오염도를 사전에 확인할 수 있도록 홈페이지를 통해 실시간 공지된다. 

                                    시 관계자는 "수도권형 비상저감조치가 발령되면 발령시점으로부터 1시간 운영 후 운영이 중단된다"면서 "초미세먼지 주의보 이상이 발령되는 경우 주의보 발령시점에 기 운영 중인 회차만 운영하며 이후 회차는 중단된다"고 말했다
                                                                        </div>
                                                                    </td>
                                                                </tr>
                                                                <tr style="height:150px;">
                                                                    <td class="">
                                                                        <label>파일첨부</label>    
                                                                    </td>
                                                                    <td class="">
                                                                        <div style="height:150px; width:100%;background:white;">
                                                                            <a href="">혹무지이상한증거.jpg</a>
                                                                        </div>
                                                                    </td>
                                                                </tr>
                                                            </tbody>
                                                        </table>
                                                        <div class="flex" style="margin:20px; position:relative; right:-400px; top:-10px;">
                                                            <a href="list.html"><div style="color:white;padding:5px;background:#343a40; border-radius:5px; ">문의하기</div></a>
                                                            <a href="list.html"><div style="color:white;padding:5px;background:#343a40; border-radius:5px; ">돌아가기</div></a>
                                                        </div>
                                                </div>
                 <!-- 게시판 --> <!-- 게시판 --> <!-- 게시판 -->
                                                <!-- ///////////////////// -->
                                                <div class="my-page-main-box margin-b-20" >
                                                        <div class="my-page-main-head flex">
                                                            <div class="my-report">
                                                                <div class="text-left margin-l-20" style="height: 100px;line-height: 100px;">
                                                                    답변내용
                                                                </div>
                                                            </div>
                                                        </div>
                                                            <table id="write" class="mypage-table">
                                                                <h1 class="hidden">테이블</h1>
                                                                <tbody class="table-content">
                                                                    <tr style="height:30px;">
                                                                        <td style="width:100px; height:50px;">
                                                                            <label style="height:50px;">제목</label>
                                                                        </td>
                                                                        
                                                                        <td style="width:800px;">
                                                                            <div>re:혹무지를 신고합니다.</div>
                                                                        </td>
                                                                    </tr>
                                                                    <tr style="height:300px;">
                                                                        <td class="">
                                                                            <label style="height:300px;line-height: inherit;">내용</label>
                                                                        </td>
                                                                        <td class="">
                                                                            <div style="padding:10px; border:0px; outline:none;  min-height:300px;line-height: inherit; white-space: pre-line;">
                                                                                    특히 이번 시즌은 카드 수수료가 없는 소상공인 간편결제인 제로페이로 입장료 지불이 가능하다. 제로페이로 결제시 입장료의 30%(300원)를 할인받을 수 있다. 제로페이로 결제하는 선착순 100명의 시민에게 스케이트장 입장료를 100원에 구매할 수 있는 '제로페이, 백원의 행복' 이벤트도 매일 진행된다.이 중단된다"면서 "초미세먼지 주의보 이상이 발령되는 경우 주의보 발령시점에 기 운영 중인 회차만 운영하며 이후 회차는 중단된다"고 말했다
                                                                            </div>
                                                                        </td>
                                                                    </tr>
                                                                    <tr style="height:150px;">
                                                                        <td class="">
                                                                            <label>파일첨부</label>    
                                                                        </td>
                                                                        <td class="">
                                                                            <div style="height:150px; width:100%;background:white;">
                                                                                <a href=""></a>
                                                                            </div>
                                                                        </td>
                                                                    </tr>
                                                                </tbody>
                                                            </table>
                                                            <div class="flex" style="margin:20px; position:relative; right:-440px; top:-10px;">
                                                                <a href="list.html"><div style="color:white;padding:5px;background:#343a40; border-radius:5px; ">목록으로</div></a>
                                                            </div>
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