<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Page Title</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" type="text/css" media="screen" href="/css/admin/admin.css" />

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/gh/lykmapipo/themify-icons@0.1.2/css/themify-icons.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link href="https://fonts.googleapis.com/css?family=Nanum+Pen+Script" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Do+Hyeon" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Do+Hyeon|Gamja+Flower" rel="stylesheet">
    <script src="https://code.jquery.com/jquery-3.3.1.min.js" integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8="
        crossorigin="anonymous"></script>
    <script src="/js/admin.js"></script>
    <script>

    </script>
</head>

<body>
    <div class="container-background">
        <div class="page-background"></div>

        <div class="center-site">
            <div class="container-site">
                <div class="navigation">
                    <ul>
                        <li class="main-nav">
                            <a href="/admin"><span class="fa fa-cog">관리자홈</span></a>
                        </li>
                        <li class="main-nav"><a href="/index"><span class="ti-home">홈</span></a></li>
                        <li class="main-nav"><a><span class="fa fa-money">할인</span></a>
                            <ul class="hidden sub-menus">
                                <li><a href="/hokdc"><i class="fa fa-home" aria-hidden="true"></i></a></li>
                                <li><a href="#"><i class="fa fa-info" aria-hidden="true"></i></a></li>
                                <li><a><i class="fa fa-cog" aria-hidden="true"></i></a></li>
                            </ul>
                        </li>
                        <li class="main-nav"><a><span class="ti-map">지도</span></a>
                            <ul class="hidden">
                                <li><a><i class="fa fa-home" aria-hidden="true"></i></a></li>
                                <li><a><i class="fa fa-info" aria-hidden="true"></i></a></li>
                                <li><a><i class="fa fa-cog" aria-hidden="true"></i></a></li>
                            </ul>
                        </li>
                        <li class="main-nav"><a><span class="fa fa-pencil">게시판</span></a>
                            <ul class="hidden">
                                <li><a><i class="fa fa-home" aria-hidden="true"></i></a></li>
                                <li><a><i class="fa fa-info" aria-hidden="true"></i></a></li>
                                <li><a><i class="fa fa-cog" aria-hidden="true"></i></a></li>
                            </ul>
                        </li>
                        <li class="main-nav">
                            <a href="/admin/member"><span class="fa fa-users all-members">모든회원</span></a>
                        </li>
                    </ul>
                </div>
                <div class="user-profile">
                    <div class="name">
                        <label for="show-list" class="show-list" style="cursor:pointer"><span class="fa fa-bars"></span>회원목록</label>
                        <input type="checkbox" id="show-list" role="button" />
                    </div>
                    <div class="user-list-container hidden">
                        <ul class="user-list">
                            <li class="user-search">
                                <form action="">
                                    <input type="search"><span class="fa fa-search"></span>
                                </form>
                            </li>
                            <c:set var="default" value="chlwl"/>
                       
                            	<c:set var="default" value="chlwl"/>
                        
							<c:forEach var="m" items="${memberList1}">
								<ul class="user-list">
									<li class="user"  data-id="${m.id}"><a href="?id=${m.id}" style="text-decoration:none; color:black;"><i class="fa fa-user" aria-hidden="true"></i>
										${m.name}</a>
									</li>
								</ul>
							</c:forEach>
						</ul>
                    </div>
                    <div class="border-image">
                        <div class="user-image"></div>
                    </div>
                    <div class="user-position">
                    	닉네임 : ${member1.nickname}
                    </div>
                    <div class="user-information">
                        <div class="title">이름:${member1.name}</div>
                        <div class="infor">아이디:${member1.id}</div>
                        <div class="infor">E-mail:${member1.email}</div>
                        <div class="infor">생일:${member1.birth}</div>
                        <div class="infor">번호:${member1.phone}</div>
                        <div class="infor warncnt">경고:${member1.warn}</div>
                    </div>
                    <div class="user-management">
                        <div class="modify plus"  data-id="${member1.id}"><a href="#">회원경고</a></div>
                        <div class="modify minus" data-id="${member1.id}"><a href="#">경고감면</a></div>
                        <div class="modify fired" data-id="${member1.id}"><a href="#">회원강퇴</a></div>
                    </div>

                </div>
                <div class="content-area">

                    <div class="hire-status">
                        <h2><span class="fa fa-home"></span> Home</h2>
                        <a href="" class="fa fa-arrow-right">
                        </a>
                    </div>
                    <!-- 테이블로하자  -->
                    <div class=my-page-main-box>
                            <div class='flex'>
                                    <a href="">
                                    <div class="tab-btn highlighted">모든글</div>
                                    </a>  
                            </div>
                            <div class="my-page-main-head flex">
                                <div class="my-write">
                                    <form>
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
                                        <span class="fa fa-search"></span>
                                    </form>
                                </div>
                            </div>
                            <table class="mypage-table">
                                <h1 class="hidden">테이블</h1>
                                <tbody class="table-content">
                                <c:forEach var="k" items="${noticeList}">
                                    <tr>
                                        <td>${k.writerId}</td>
                                        <td class="table-title">
                                            <a href="">${k.title}</a>
                                        </td>
                                        <td>${k.regdate}</td>
                                    </tr>
                                    </c:forEach>
                                </tbody>
                            </table>
                            <div class="pager">
                                <div class="block-wrapping"><span class="fa fa-angle-left"></span></div>
                                <div class="block-wrapping">
                                    <ul class="list">
									<c:set var="page" value="1" />

									<c:if test="${not empty param.p}">
										<c:set var="page" value="${param.p}" />
									</c:if>
									<c:set var="cls" value="${i==page?'strong':''}" />
                                    <c:forEach var="i" begin="1" end="2">
                                        <li><a href="?p=${i}" class="${cls}">${i}</a></li>
                                    </c:forEach>
                                    </ul>
                                </div>
                                <div class="block-wrapping"><span class="fa fa-angle-right"></span></div>
                            </div>
                        </div>
                    <div class="social-media">
                        <div class="social">
                            <div class="logo">
                                <span class="fa fa-users"></span>
                                <div class="status">
                                    <span>${memberList1.size()}</span>
                                    총 회원수
                                </div>
                            </div>
                        </div>
                        <div class="social">
                            <div class="logo">
                                <span class="fa fa-sticky-note"></span>
                                <div class="status">
                                    <span>${noticeList.size()}</span>
                                     총 게시글
                                </div>
                            </div>
                        </div>
                        <div class="social ">
                            <div class="logo">
                                <span class="fa fa-user-times"></span>
                                <div class="status">
                                    <span>100000</span>
                                    블랙리스트
                                </div>
                            </div>
                        </div>
                        <div class="social">
                            <div class="logo">
                                <span class="fa fa-pie-chart" ></span>
                                <div class="status">
                                    <span>100000</span>
                                    통계
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="content-area member-area hidden">

                        <div class="hire-status">
                            <h2><span class="fa fa-home"></span> Home</h2>
                            <a href="" class="fa fa-arrow-right">
                            </a>
                        </div>
                        <!-- 테이블로하자  -->
                        <div class=my-page-main-box>
                                <div class='flex'>
                                        <a href=""><div class="tab-btn highlighted">회원이다</div></a>
                                    
                                </div>
                                <div class="my-page-main-head flex">
                                    <div class="my-write">
                                        <form>
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
                                            <span class="fa fa-search"></span>
                                        </form>
                                    </div>
                                </div>
                                <table class="mypage-table">
                                    <h1 class="hidden">테이블</h1>
                                    <tbody class="table-content">
                                        <tr>
                                            <td>석태진</td>
                                            <td class="table-title">
                                                <a href="">회원빠따</a>
                                            </td>
                                            <td>2018.12.09 17:38</td>
                                        </tr>
                                        <tr>
                                            <td>노승래</td>
                                            <td class="table-title">
                                                <a href="">회원빠따</a>
                                            </td>
                                            <td>2018.12.09 17:38</td>
                                        </tr>
                                        <tr>
                                            <td>최지현</td>
                                            <td class="table-title">
                                                <a href="">퍼퍼퍼</a>
                                            </td>
                                            <td>2018.12.09 17:38</td>
                                        </tr>
                                        <tr>
                                            <td>[혹혹]</td>
                                            <td class="table-title">
                                                <a href="">당신의 댓글이 추천받았습니다.</a>
                                            </td>
                                            <td>2018.12.09 17:38</td>
                                        </tr>
                                    </tbody>
                                </table>
                                <div class="pager">
                                    <div class="block-wrapping"><span class="fa fa-angle-left"></span></div>
                                    <div class="block-wrapping">
                                        <ul class="list">
                                            <li><a href="">1</a></li>
                                            <li><a href="">2</a></li>
                                            <li><a href="">3</a></li>
                                        </ul>
                                    </div>
                                    <div class="block-wrapping"><span class="fa fa-angle-right"></span></div>
                                </div>
                            </div>
                        <div class="social-media">
                            <div class="social">
                                <div class="logo">
                                    <span class="fa fa-users"></span>
                                    <div class="status">
                                        <span>100000</span>
                                        총 회원수
                                    </div>
                                </div>
                            </div>
                            <div class="social">
                                <div class="logo">
                                    <span class="fa fa-sticky-note"></span>
                                    <div class="status">
                                        <span>100000</span>
                                         총 게시글
                                    </div>
                                </div>
                            </div>
                            <div class="social ">
                                <div class="logo">
                                    <span class="fa fa-user-times"></span>
                                    <div class="status">
                                        <span>100000</span>
                                        블랙리스트
                                    </div>
                                </div>
                            </div>
                            <div class="social">
                                <div class="logo">
                                    <span class="fa fa-pie-chart" ></span>
                                    <div class="status">
                                        <span>100000</span>
                                        통계
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
            </div>
        </div>
    </div>
</body>

</html>