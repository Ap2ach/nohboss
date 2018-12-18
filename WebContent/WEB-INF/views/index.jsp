<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Page Title</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" type="text/css" media="screen" href="css/index.css" />
    <script src="js/index.js"></script>
    <link href="https://fonts.googleapis.com/css?family=Do+Hyeon|Gamja+Flower" rel="stylesheet">
    <script src="https://code.jquery.com/jquery-3.3.1.min.js" integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8="
        crossorigin="anonymous"></script>
    
        <script>
            $(document).ready(function(){

            })
        </script>
</head>

<body>
    <div class="container">
        <div class="header-container">
            <header id="header">
                <div class="slideshow-container">
                    <div class="mySlides fade">
                        <div class="numbertext">1 / 3</div>
                        <img src="css/image/banner2.jpg" style="width:100%; object-fit: fill">
                        <div class="text">WELCOME TO MUZIHOK</div>
                    </div>

                    <div class="mySlides fade">
                        <div class="numbertext">2 / 3</div>
                        <img src="css/image/banner3.jpg" style="width:100%">
                        <div class="text">ENJOY YOUR LIFE</div>
                    </div>

                    <div class="mySlides fade">
                        <div class="numbertext">3 / 3</div>
                        <img src="css/image/banner4.jpg" style="width:100%">
                        <div class="text">THANK YOU SO MUCH</div>
                    </div>
                    <div class="hidden">
                        <span class="dot" onclick="currentslide(1)"></span>
                        <span class="dot" onclick="currentslide(2)"></span>
                        <span class="dot" onclick="currentslide(3)"></span>
                    </div>
                </div>

                <div class="underline"></div>
                <div class="logo">
                    <a href="">
                        <img src="css/image/그림1.png" width="166" height="60" alt="MuziHok">
                    </a>
                </div>
                <nav class="menu-lists">
                    <ul>
                        <li class="hok-hover visit-main"><a href="index">Home</a></li>
                        <li class="hok-hover sub"><a href="hokdiscount.html">HOK! DISCOUNT</a>
                            <!-- <div class="sub-list">
                                <ul>
                                    <li><a><span>hokburiburi</span></a></li>
                                    <li><a><span>yesburi</span></a></li>
                                    <li><a><span>discount</span></a></li>
                                </ul>
                            </div> -->
                        </li>
                        <li class="hok-hover sub"><a href=hokmap.html>HOK! MAP</a>
                            <!-- <div class="sub-list">
                                <ul>
                                    <li><a><span>혹하쥬</span></a></li>
                                    <li><a><span>혹하쥬</span></a></li>
                                    <li><a><span>혹하쥬</span></a></li>
                                </ul>
                            </div> -->
                        </li>
                        <li class="hok-hover sub"><a href="hokboard.html">HOK!</a>
                            <!-- <div class="sub-list">
                                <ul>
                                    <li><a><span>혹하쥬</span></a></li>
                                    <li><a><span>혹하쥬</span></a></li>
                                    <li><a><span>혹하쥬</span></a></li>
                                </ul>
                            </div> -->
                        </li>
                    </ul>
                </nav>
                <nav class="login-lists">
                    <ul>
                        <li class="btn"><a href="">LOGIN</a></li>
                        <li class="btn"><a href="">REGIST</a></li>
                    </ul>
                </nav>

            </header>
        </div>

        <main id="main">
            <img class="main-image" src="css/image/ny_city-1348x500.jpg" style="height: 100%;"/>
            <p style="width: 1300px;
            text-align: justify;
            margin: auto; margin-top: 20px; font-size: 30px">
                Mauris quis lacus est. Sed ultricies sapien auctor,
                lacinia nisi blandit, suscipit nulla. Maecenas
                lobortis tempus augue sit amet lacinia.
                In ultricies justo eget volutpat ornare.
                Suspendisse ut interdum urna.
                Maecenas a nunc non sem condimentum tempor.
                Mauris quis lacus est. Sed ultricies sapien auctor,
                lacinia nisi blandit, suscipit nulla.
                Maecenas lobortis tempus augue sit amet lacinia.
                In ultricies justo eget volutpat ornare.
                Suspendisse ut interdum urna.
                Maecenas a nunc non sem condimentum tempor.
            </p>
            <div class="clear" style="margin-bottom:50px"></div>
            <div class="photo-book">
                <div class="best-text">
                    <span>TODAY'S BEST</span>
                </div>
                <!-- <ul class="image-filter">
                    <li>
                        <a class="" href="#">Show All</a>
                        <span></span>
                    </li>
                    <li>
                        <a class="" href="#">FastFood</a>
                    </li>
                    <li>
                        <a class="" href="#">korea</a>
                    </li>
                    <li>
                        <a class="" href="#">Japan</a>
                    </li>
                </ul> -->
                <!-- <div class="image-filter"><a><span>TODAY'S BEST</span></a></div> -->
                <div class="content-wrap fourcol">
                    <div class="main-content autobox">
                        <h1 class="hidden">오늘의 혹혹혹!</h1>
                        <div class="entry item1" >
                        <div class="holder">
                                <h2>짜잔</h2>
                                    <a href="#" style="background:pink; transform: translate(0, 20%);">
                                        <img src="css/image/image1.jpg" /></a>
                            </div>
                        </div>
                        <div class="entry item2" >
                            <div class="holder">
                                <h2>image2</h2>
                                    <a href="#" style="background:green">
                                        <img src="css/image/image2.jpg" /></a>
                            </div>
                        </div>
                        <div class="entry item3" >
                            <div class="holder">
                                <h2>image3</h2>
                                    <a href="#" style="background:gray">
                                        <img src="css/image/image3.jpg" /></a>
                            </div>
                        </div>
                        <div class="entry item4" >
                            <div class="holder">
                                <h2>image4</h2>
                                    <a href="#" style="background:black">
                                        <img src="css/image/image4.jpg" /></a>
                            </div>
                        </div>
                        <div class="entry item5" >
                            <div class="holder">
                                <h2>image5</h2>
                                    <a href="#" style="background:red">
                                        <img src="css/image/image5.jpg" /></a>
                            </div>
                        </div>
                        <div class="entry item6">
                            <div class="holder">
                                <h2>image6</h2>
                                    <a href="#" style="background:yellow">
                                        <img src="css/image/image6.jpg" /></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <aside id="aside">

            </aside>

        </main>
        <footer id="footer">
            <div class="footer-content">
                Copyright &copy
                2018 MUZIHOK.<br>All rights reserved.
            </div>
        </footer>
    </div>
</body>

</html>