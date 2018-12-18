 window.addEventListener("load", function () {
     var slideIndex = 0;//기본값을 0으로 일단 줘봅시다

    slideshow();    //슬라이드를 구현할 function제작을 해야겠

     function currentslide(){

     }

     function slideshow() {//슬라이드를 구현할 함수 생성
         //처음에 슬라이드를 위한 재료들을 준비하자
         var slides = document.querySelectorAll('.mySlides');
         //슬라이드쇼를 위한 객체 가져오기
         var dots = document.querySelectorAll('.dot');
         //도트들도 가져온
         var i; //슬라이드를 i번부터 하나씩 늘려 돌리겠다!
         for (i = 0; i < slides.length; i++) {
             slides[i].style.display = "none";
         }//슬라이드의 갯수는 총 3개!! for문을 이용하여 3개의 슬라이드를
         //display none값으로 설정을 하겠다!
         slideIndex++;//그 후에 slideindex를 하나씩 늘려서 
         if (slideIndex > slides.length) {
             slideIndex = 1;
         }
         console.log(dots[1].className.replace("dot","도트를 바꿔라"));
         for(i = 0; i < dots.length; i++){
            dots[i].className = dots[i].className.replace("active","");
         }
         //slideindex가 사진의 갯수보다 많아질 경우 다시 처음으로 되돌릴 것이다
         dots[slideIndex - 1].className += " active";
        //  console.log(slideIndex);
        //  console.log(dots[slideIndex - 1].className);
         slides[slideIndex - 1].style.display = "block";
         
         //그리고 마지막으로 slideIndex-1를 이용하여 
         //slides 를 block처리하여 하나씩 표출하겠다.
         setTimeout(slideshow, 5000);
     }
 });

//  window.addEventListener("load", function(){

//     var num = 0;

//         // moving();
     
//     function moving(){
//         var maincontent = document.querySelector(".main-content");
//         var todaybest1 = maincontent.querySelectorAll(".today-best1");
//         var todaybest2 = maincontent.querySelectorAll(".today-best2");

//         var underc = 0;
//         var rightc = 0;
//         var setintervalid = setInterval(function(){
//         underc++;
            

//         //트랜스폼 추가!!!

//         console.log("기능을 추가할그야");

//         todaybest1[0].style.top = underc+"px";
//         todaybest2[2].style.bottom = underc +"px";


//         if(underc ==320)
//         clearInterval(setintervalid);

//     });
    
 
        // var under = "animation:best-moving1 1.5s forwards";
        // var left = "animation:best-moving2 2s forwards";
        // var left2 = "animation:best-moving2 2.5s forwards";
        // var st = "style";
        // todaybest1[0].setAttribute(st,under);
        // todaybest1[1].setAttribute(st,left); 
        // todaybest1[2].setAttribute(st,left2);
        // var right = "animation:best-moving3 2.5s forwards";
        // var right2 = "animation:best-moving3 2s forwards";
        // var up = "animation:best-moving4 1.5s forwards";
        // todaybest2[0].setAttribute(st,right);
        // todaybest2[1].setAttribute(st,right2);
        // todaybest2[2].setAttribute(st,up);
        // num++;
        // if(num==1){
        // }


     



        // var pos = 0;
        // var id = setInterval(frame,1);
        // var id = setInterval(undereframe,1)
        // function frame(){
        //     if(pos == 465){      
        //         clearInterval(id);
        //     }else{
        //         pos++;
        //         todaybest1[1].style.right = pos+"px";
        //         todaybest1[2].style.right = pos+"px";
        //     }
        // }
        // function undereframe(){
        //     if(pos == 500){      
        //         clearInterval(id);
        //     }else{
        //         pos++;
        //         todaybest1[0].style.top = pos+"px";
        //     }
        // }

// window.addEventListener("load", function () {
//     var slideIndex = 1;//기본값을 1로 주고
//     slideshow(slideIndex);    //슬라이드를 구현할 function에 slideIndex를 담아보자

//     function currentslide(n) {//도트 클릭을 위한 함수를 만들자
//         //n값 즉 내가 클릭하여 얻는 n값이 들어가면 
//         //slideshow(n)에 들어가여 원하는 작동을 하는 함수를 구현 
//         slideshow(slideIndex = n);
//     }

//     function slideshow(n) {//슬라이드를 구현할 함수 생성//n을 매개변수로 받음
//         //처음에 슬라이드를 위한 재료들을 준비하자
//         var slides = document.querySelectorAll('.mySlides');
//         //슬라이드쇼를 위한 객체 가져오기
//         var dots = document.querySelectorAll('.dot');
//         //도트들도 가져온다

//         if (n > slides.length) { slideIndex = 1; }
//         //slideindex가 사진의 갯수보다 많아질 경우 다시 처음으로 되돌릴 것이다.
//         if (n < 1) { slideIndex = slides.length; }
//         //3개가 slideIndex랑?????
//         var i; //슬라이드를 i번부터 하나씩 늘려 돌리겠다!
//         for (i = 0; i < slides.length; i++) {
//             slides[i].style.display = "none";
//         }//슬라이드의 갯수는 총 3개!! for문을 이용하여 3개의 슬라이드를
//         //display none값으로 설정을 하겠다!




//         slides[slideIndex - 1].style.display = "block";
//         dots[slideIndex - 1].className += " active";
//         //그리고 마지막으로 slideIndex-1를 이용하여 
//         //slides 를 block처리하여 하나씩 표출하겠다.
//         setTimeout(slideshow, 4000);
//     }

// });
// window.addEventListener("load",function(){

//     var sub = this.document.querySelectorAll(".sub");
//     var sublist1 = sub[0].querySelector(".sub-list1");
//     var sublist2 = sub[1].querySelector(".sub-list2");
//     var sublist3 = sub[2].querySelector(".sub-list3");
//     sub[0].onmouseover = function(){
//         sublist1.classList.remove("hidden");
//     }
//     sub[0].onmouseout = function(){
//         sublist1.classList.add("hidden");
//     }
//     sub[1].onmouseover = function(){
//         sublist2.classList.remove("hidden");
//     }
//     sub[1].onmouseout = function(){
//         sublist2.classList.add("hidden");
//     }
//     sub[2].onmouseover = function(){
//         sublist3.classList.remove("hidden");
//     }
//     sub[2].onmouseout = function(){
//         sublist3.classList.add("hidden");
//     }
// });




// jQuery(window).load(function(){

//     /* Isotope Portfolio */
// 	var $container = jQuery('.main-content');
// 	$container.autobox({
// 		filter: '*',
// 		animationOptions: {
// 			duration: 500,
// 			easing: 'linear',
// 			queue: false
// 		}
// 	});

// 	jQuery(window).resize(function() {
// 		setTimeout(function() {jQuery('.main-content').autobox('reLayout');},550);
// 	});

// 	jQuery('.main-content').isotope('reLayout');

// 	jQuery('ul.image-filter a').click(function(){
// 		var selector = jQuery(this).attr('data-filter');
// 		$container.isotope({
// 			filter: selector,
// 			animationOptions: {
// 				duration: 500,
// 				easing: 'linear',
// 				queue: false
// 			}
// 		});
// 	  return false;
// 	});

// 	var $optionSets = jQuery('ul.image-filter'),
// 	       $optionLinks = $optionSets.find('a');
// 	       $optionLinks.click(function(){
// 	          var $this = jQuery(this);
// 		  // don't proceed if already selected
// 		  if ( $this.hasClass('selected') ) {
// 		      return false;
// 		  }
// 	   var $optionSet = $this.parents('ul.image-filter');
// 	   $optionSet.find('.selected').removeClass('selected');
// 	   $this.addClass('selected');
// 	});

// 	jQuery('.auto-item').hover(function() {
// 		var item = jQuery(this);
// 		var textholder = item.find('.foliotextholder')

// 		item.find('.folio_underlay').css({paddingBottom:35 + textholder.height()+"px"});
// 	});

// });


// window.addEventListener("load",function(e){
    
//     var imagefilter = document.querySelector(".image-filter");
//     var filter = imagefilter.querySelectorAll("a");
//     var image = document.querySelectorAll(".entry");

//     filter[0].onclick = function moving(e){
//         e.preventDefault();
//         filter[0].className = filter[0].className.replace("selected","");
//         filter[0].className += " selected";

//         filter[1].className = filter[1].className.replace("selected","");
//         filter[2].className = filter[2].className.replace("selected","");
//         filter[3].className = filter[3].className.replace("selected","");

//         var i;

//         for(i=0; i<image.length;i++)
//         image[i].classList.add("auto-item");
//         // image[i].className.replace("auto-item","");
//     }

//     filter[1].onclick = function moving(e){
//         e.preventDefault();

//         filter[1].className = filter[1].className.replace("selected","");
//         filter[1].className += " selected";

//         filter[0].className = filter[0].className.replace("selected","");
//         filter[2].className = filter[2].className.replace("selected","");
//         filter[3].className = filter[3].className.replace("selected","");

//         for(i=0; i<image.length;i++){
//             image[i].classList.remove("auto-item");
//             image[i].classList.add("hidden");
//         }
//         image[3].classList.add("fast-food");
//     }
    
//     filter[2].onclick = function moving(e){
//         e.preventDefault();

//         filter[2].className = filter[2].className.replace("selected","");
//         filter[2].className += " selected";

//         filter[0].className = filter[0].className.replace("selected","");
//         filter[1].className = filter[1].className.replace("selected","");
//         filter[3].className = filter[3].className.replace("selected","");

//         for(i=0; i<image.length;i++){
//             image[i].classList.remove("auto-item");
//             image[i].classList.add("hidden");
//         }
//         image[2].classList.add("korea");
//     }

//     filter[3].onclick = function moving(e){
//         e.preventDefault();

//         filter[3].className = filter[3].className.replace("selected","");
//         filter[3].className += " selected";

//         filter[0].className = filter[0].className.replace("selected","");
//         filter[1].className = filter[1].className.replace("selected","");
//         filter[2].className = filter[2].className.replace("selected","");
//     }

// });


