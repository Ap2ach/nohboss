<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Page Title</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" type="text/css" media="screen" href="/css/admin/member.css" />

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/gh/lykmapipo/themify-icons@0.1.2/css/themify-icons.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link href="https://fonts.googleapis.com/css?family=Nanum+Pen+Script" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Do+Hyeon" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Do+Hyeon|Gamja+Flower" rel="stylesheet">
    <script src="https://code.jquery.com/jquery-3.3.1.min.js" integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8="
        crossorigin="anonymous"></script>
    <script src="css/newadmin.js"></script>
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
                            <a href="newadmin.html"><span class="fa fa-cog">관리자홈</span></a>
                        </li>
                        <li class="main-nav"><a href="test2.html"><span class="ti-home">홈</span></a></li>
                        <li class="main-nav"><a><span class="fa fa-money">할인</span></a>
                            <ul class="hidden sub-menus">
                                <li><a><i class="fa fa-home" aria-hidden="true"></i></a></li>
                                <li><a><i class="fa fa-info" aria-hidden="true"></i></a></li>
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
                            <a><span class="fa fa-users all-members">모든회원</span></a>
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
                            <li class="user"><i class="fa fa-user" aria-hidden="true"></i>석태진</li>
                            <li class="user"><i class="fa fa-user" aria-hidden="true"></i>노승래</li>
                            <li class="user"><i class="fa fa-user" aria-hidden="true"></i>안수균</li>
                            <li class="user"><i class="fa fa-user" aria-hidden="true"></i>최지현</li>
                            <li class="user"><i class="fa fa-user" aria-hidden="true"></i>뉴렉</li>
                        </ul>
                    </div>
                    <div class="border-image">
                        <div class="user-image"></div>
                    </div>
                    <div class="user-position">
                        닉네임 : 노렉
                    </div>
                    <div class="user-information">
                        <div class="title">OOO회원</div>
                        <div class="infor">ID</div>
                        <div class="infor">별명</div>
                        <div class="infor">???</div>
                        <div class="infor">뭐가있냐</div>
                        <div class="infor">허리아파</div>
                    </div>
                    <div class="user-management">
                        <div class="modify">회원경고</div>
                        <div class="modify">회원강퇴</div>
                    </div>

                </div>
                <div class="content-area">

                    <div class="hire-status">
                        <h2><span class="fa fa-users"></span>모든회원</h2>
                        <a href="" class="fa fa-arrow-right">
                        </a>
                    </div>
                    <!-- 테이블로하자  -->
                    <div class=my-page-main-box>
                        <div class='flex'>
                            <a href="">
                                <div class="tab-btn highlighted">총멤버</div>
                            </a>

                        </div>
                        <div class="my-page-main-head flex">
                            <div class="my-write">
                                <form>
                                    <select name="초기">
                                        <option selected>회원</option>
                                    </select>
                                    <select>
                                        <option selected>최신</option>
                                        <option>이름 순</option>
                                        <option>가입 순</option>
                                        <option>오래된 순</option>
                                    </select>
                                    <input class="my-write-text" type="text" value=" " />
                                    <span class="fa fa-search"></span>
                                </form>
                            </div>
                        </div>
                        <div class="table-container">
                        <table class="mypage-table fitst">
                            <h1 class="hidden">테이블</h1>
                            <thead class="head-table" aria-colspan="2">
                                <tr>
                                    <td>이름</td>
                                    <td>아이디</td>
                                    <td>가입한 날짜 및 시간</td>
                                </tr>
                            </thead>
                            <tbody class="table-content">
                                <tr>
                                    <td>석태진</td>
                                    <td class="table-title">
                                        <a href="">taejin</a>
                                    </td>
                                    <td>2018.12.09 17:38</td>
                                </tr>
                                <tr>
                                    <td>안수균</td>
                                    <td class="table-title">
                                        <a href="">sugyun</a>
                                    </td>
                                    <td>2018.12.09 17:38</td>
                                </tr>
                                <tr>
                                    <td>최지현</td>
                                    <td class="table-title">
                                        <a href="">chlwlgus</a>
                                    </td>
                                    <td>2018.12.09 17:38</td>
                                </tr>
                                <tr>
                                    <td>노승래</td>
                                    <td class="table-title">
                                        <a href="">nolec</a>
                                    </td>
                                    <td>2018.12.09 17:38</td>
                                </tr>
                                <tr>
                                    <td>노승래</td>
                                    <td class="table-title">
                                        <a href="">nolec</a>
                                    </td>
                                    <td>2018.12.09 17:38</td>
                                </tr>
                                <tr>
                                    <td>노승래</td>
                                    <td class="table-title">
                                        <a href="">nolec</a>
                                    </td>
                                    <td>2018.12.09 17:38</td>
                                </tr>
                                <tr>
                                    <td>노승래</td>
                                    <td class="table-title">
                                        <a href="">nolec</a>
                                    </td>
                                    <td>2018.12.09 17:38</td>
                                </tr>
                            </tbody>
                        </table>
                        <table class="mypage-table">
                                <h1 class="hidden">테이블</h1>
                                <thead class="head-table" aria-colspan="2">
                                    <tr>
                                        <td>이름</td>
                                        <td>아이디</td>
                                        <td>가입한 날짜 및 시간</td>
                                    </tr>
                                </thead>
                                <tbody class="table-content">
                                    <tr>
                                        <td>석태진</td>
                                        <td class="table-title">
                                            <a href="">taejin</a>
                                        </td>
                                        <td>2018.12.09 17:38</td>
                                    </tr>
                                    <tr>
                                        <td>안수균</td>
                                        <td class="table-title">
                                            <a href="">sugyun</a>
                                        </td>
                                        <td>2018.12.09 17:38</td>
                                    </tr>
                                    <tr>
                                        <td>최지현</td>
                                        <td class="table-title">
                                            <a href="">chlwlgus</a>
                                        </td>
                                        <td>2018.12.09 17:38</td>
                                    </tr>
                                    <tr>
                                        <td>노승래</td>
                                        <td class="table-title">
                                            <a href="">nolec</a>
                                        </td>
                                        <td>2018.12.09 17:38</td>
                                    </tr>
                                    <tr>
                                        <td>노승래</td>
                                        <td class="table-title">
                                            <a href="">nolec</a>
                                        </td>
                                        <td>2018.12.09 17:38</td>
                                    </tr>
                                    <tr>
                                        <td>노승래</td>
                                        <td class="table-title">
                                            <a href="">nolec</a>
                                        </td>
                                        <td>2018.12.09 17:38</td>
                                    </tr>
                                    <tr>
                                        <td>노승래</td>
                                        <td class="table-title">
                                            <a href="">nolec</a>
                                        </td>
                                        <td>2018.12.09 17:38</td>
                                    </tr>
                                </tbody>
                            </table>
                    </div>
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
                </div>
            </div>
        </div>
    </div>
</body>

</html>