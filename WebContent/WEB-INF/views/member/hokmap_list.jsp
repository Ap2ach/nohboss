<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>혹맵</title>
    <link rel="stylesheet" type="text/css" media="screen" href="../css/hokmap/hokmap.css" />
    <link rel="stylesheet" type="text/css" media="screen" href="../css/inc/asidelist.css" />
    <link rel="stylesheet" type="text/css" media="screen" href="../css/inc/common.css" />
    <link rel="stylesheet" type="text/css" media="screen" href="../css/inc/pager.css" />
    <link rel="stylesheet" type="text/css" media="screen" href="../css/inc/searchform.css" />
    <link rel="stylesheet" type="text/css" media="screen" href="../css/member/join.css" />
    <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=a621bc0c3c3a2693ab4fd406c0080068&libraries=services"></script>
    <!-- Bootstrap core CSS -->
    <link href="/css/hokmap/bootstrap.min.css" rel="stylesheet">
    <!-- Custom styles for this template -->
    <link href="/css/hokmap/1-col-portfolio.css" rel="stylesheet">
    <link rel="icon" type="image/png" href="http://example.com/myicon.png">

</head>

<body>
    <jsp:include page="/WEB-INF/views/inc/loginheader.jsp"></jsp:include>
    
    <!-- The Modal -->
    <jsp:include page="/WEB-INF/views/inc/modal.jsp"></jsp:include>
   
	<jsp:include page="/WEB-INF/views/inc/search.jsp"></jsp:include>
    <div id="body">
        <div class="content-container" style="display:flex;">
            <div class="aside-container"></div>
            <div class="main-container">
                <!-- Page Content -->
                <div class="container">

                    <!-- Page Heading -->
                    <h1 class="my-4">혹!
                        <small>할 지도</small>
                    </h1>

                    <!-- Project One -->
                    <div class="row">
                        <div class="col-md-7">
                            <a href="#">
                                <img class="img-fluid rounded mb-3 mb-md-0" src="../image/etc/twice.jpg" alt="">
                            </a>
                        </div>
                        <div class="col-md-5">
                            <h3>Project One</h3>
                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Laudantium veniam
                                exercitationem expedita
                                laborum at voluptate. Labore, voluptates totam at aut nemo deserunt rem magni pariatur
                                quos
                                perspiciatis atque eveniet unde.</p>
                            <a class="btn btn-dark" href="#">위치 검색</a>
                        </div>
                    </div>
                    <!-- /.row -->
                    <hr>
                    <!-- Project Two -->
                    <div class="row">
                        <div class="col-md-7">
                            <a href="#">
                                <img class="img-fluid rounded mb-3 mb-md-0" src="../image/slide-image/twice2.jpg"
                                    alt="">
                            </a>
                        </div>
                        <div class="col-md-5">
                            <h3>Project Two</h3>
                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ut, odit velit cumque vero
                                doloremque
                                repellendus distinctio maiores rem expedita a nam vitae modi quidem similique ducimus!
                                Velit, esse
                                totam tempore.</p>
                            <a class="btn btn-dark" href="#">위치 검색</a>
                        </div>
                    </div>
                    <!-- /.row -->
                    <hr>
                    <!-- Project Three -->
                    <div class="row">
                        <div class="col-md-7">
                            <a href="#">
                                <img class="img-fluid rounded mb-3 mb-md-0" src="../image/slide-image/twice3.jpg"
                                    alt="">
                            </a>
                        </div>
                        <div class="col-md-5">
                            <h3>Project Three</h3>
                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Omnis, temporibus, dolores,
                                at,
                                praesentium ut unde repudiandae voluptatum sit ab debitis suscipit fugiat natus velit
                                excepturi
                                amet commodi deleniti alias possimus!</p>
                            <a class="btn btn-dark" href="#">위치 검색</a>
                        </div>
                    </div>
                    <!-- /.row -->

                    <hr>

                    <!-- Project Four -->
                    <div class="row">

                        <div class="col-md-7">
                            <a href="#">
                                <img class="img-fluid rounded mb-3 mb-md-0" src="../image/slide-image/twice4.jpg"
                                    alt="">
                            </a>
                        </div>
                        <div class="col-md-5">
                            <h3>Project Four</h3>
                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Explicabo, quidem,
                                consectetur, officia
                                rem officiis illum aliquam perspiciatis aspernatur quod modi hic nemo qui soluta aut
                                eius fugit
                                quam in suscipit?</p>
                            <a class="btn btn-dark" href="#">위치 검색</a>
                        </div>
                    </div>
                    <!-- /.row -->
                    <hr>
                    <!-- Pagination -->
                    <ul class="pagination justify-content-center">
                        <li class="page-item">
                            <a class="page-link" href="#" aria-label="Previous">
                                <span aria-hidden="true">&laquo;</span>
                                <span class="sr-only">Previous</span>
                            </a>
                        </li>
                        <li class="page-item">
                            <a class="page-link" href="#">1</a>
                        </li>
                        <li class="page-item">
                            <a class="page-link" href="#">2</a>
                        </li>
                        <li class="page-item">
                            <a class="page-link" href="#">3</a>
                        </li>
                        <li class="page-item">
                            <a class="page-link" href="#" aria-label="Next">
                                <span aria-hidden="true">&raquo;</span>
                                <span class="sr-only">Next</span>
                            </a>
                        </li>
                    </ul>
                </div>
                <!-- /.container -->
            </div>
            <div class="aside-container">
                <div class="map_wrap">
                    <div id="map"></div>
                    <div class="hAddr">
                        <span class="title">지도중심기준 행정동 주소정보</span>
                        <span id="centerAddr"></span>
                        <div><input type="button" name="loc" class="myloc" /></div>
                    </div>
                    <div id="menu_wrap" class="bg_white hidden">
                        <div class="option">
                            <div>
                                <form onsubmit="searchPlaces(); return false;">
                                    <input type="text" id="keyword" size="15">
                                    <button type="submit">검색하기</button>
                                </form>
                            </div>
                        </div>
                        <hr>
                        <ul id="placesList"></ul>
                        <div id="pagination"></div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- 푸터 -->
   	<jsp:include page="/WEB-INF/views/inc/footer.jsp"></jsp:include>
    
    <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
    <script src="/js/member/modal.js"></script>
    <script src="/js/member/join.js"></script>
    <script src="/js/bootstrap/jquery.min.js"></script>
    <script src="/js/bootstrap/bootstrap.bundle.min.js"></script>
    <script src="/js/hokmap/hokmap.js"></script>
</body>

</html>