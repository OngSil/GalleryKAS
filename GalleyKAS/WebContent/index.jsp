<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE html>
<html lang="en">
<head>
	<title> GALLERY KAS</title>
	




<meta charset="UTF-8">
<!-- <meta name='robots' content='noindex,follow' /> -->
<meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1, minimum-scale=1, maximum-scale=1">
<link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR:300,400,700&amp;display=swap&amp;subset=korean" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Noto+Serif+KR:300,400,700&amp;display=swap&amp;subset=korean" rel="stylesheet">
<link rel="stylesheet" id="global-css" href="css/global.css" type="text/css" media="all">
<link rel="stylesheet" id="content-css" href="css/content.css" type="text/css" media="all">
<link rel="shortcut icon" type="image/x-icon" href="images/favicon.ico">
<script src="js/jquery-1.12.4.min.js" integrity="sha256-ZosEbRLbNQzLpnKIkEdrPv7lOy9C27hHQ+Xp8a4MxAQ=" crossorigin="anonymous"></script>
<meta name="description" content="GALLERY HYUNDAI">


<style>
	[v-cloak] { display: none; }
</style>
<script src="js/jquery.form.min.js"></script>
<script src="js/jquery.validate.min.js"></script>
<script src="js/vue.min.js"></script>
<script src="js/jquery.cookie.js"></script>


<script src="js/moment.min.js"></script>
<script src="js/moment-timezone-with-data.min.js"></script>

<script src="js/vue-filter.js"></script>
<script src="js/App.js"></script>
<script>
	$(function() {
		var option = {};
		option.locale = 'ko_KR';
		App.init(option);
	});
</script>

	<!--
	<title></title>
	<meta name="description" content="GALLERY HYUNDAI" />
	<meta property="og:title" content="GALLERY HYUNDAI" />
	<meta property="og:description" content="description" />
	<meta property="og:image" content="http://asp-image.bugsm.co.kr/album/images/500/7914/791412.jpg" />
	-->
</head>


<body class="home">
	<div id="acc-nav">
		<a href="#content">본문 바로가기</a>
	</div>
	<div id="wrap">
		<header>


<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>


<nav class="navbar navbar-expand-md navbar-dark fixed-top " style="background-color:white; !important;box-shadow: rgba(0, 0, 0, 0.2) 0px 2px 20px;">
    <a class="navbar-brand" href="index.kas" style="margin-left:7%;height:105px; padding-top:40px; "><img src="imgs/logo.png" alt="logo"></a>

    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation" style="background-color:black;">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarCollapse">
      <ul class="navbar-nav mr-auto" style="padding-left:42%;">
        <li class="nav-item active" >
          <a class="nav-link" href="exhibit.kas?m=artists" style="color:black; !important;  padding-right:100px;font-size:20px;!important;">Artists<span class="sr-only">(current)</span></a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="exhibit.kas?m=exhibition" style="color:black; !important; padding-right:100px;font-size:20px;!important;">Exhibitions</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="review.kas?m=review&cp=1&ps=5" style="color:black; !important; padding-right:100px;font-size:20px;!important;">Review</a>
        </li>
        <li class="nav-item">
		          <a class="nav-link" href="exhibit.kas?m=about" style="color:black; !important; padding-right:100px;font-size:20px;!important;">About</a>
        </li>
        <li class="nav-item" style="position:relative;">
          <a class="nav-link" href="exhibit.kas?m=search" tabindex="-1" aria-disabled="true" style="color:black; !important;font-size:20px;!important;">Search</a>
        
        <c:if test="${empty loginUser}">
        
            <!-- <a class="login" href="member.kas?m=form" style="margin-right:115px; margin-top:-50px;float:right;">Login</a> -->

            <a class="login" href="member.kas?m=form" style="position:absolute;top:-15px;right:7px;">Login</a>
        </c:if>
         <c:if test="${!empty loginUser}">
		    <a class="login" href="#" onclick="logout()" style="margin-right:115px; margin-top:-50px;float:right;">Logout</a>
 			<c:if test="${!empty likeList}">
              <a class="MyList" style="margin-top:-50px;margin-right:200px;float:right;" href="exhibit.kas?m=getMyList">MyList</a>
            </c:if>
        </c:if>	 
        
        </li>
      
      </ul>
      </div>
      
 <!-- 
        <div id="login" >
	  	<c:if test="${empty loginUser}">
            <a class="login" href="member.kas?m=form" style="margin-right:115px; margin-top:-50px;float:right;">Login</a>
        </c:if>
         <c:if test="${!empty loginUser}">
		    <a class="login" href="#" onclick="logout()" style="margin-right:115px; margin-top:-50px;float:right;">Logout</a>
 			<c:if test="${!empty likeList}">
              <a class="MyList" style="margin-top:-50px;margin-right:200px;float:right;" href="exhibit.kas?m=getMyList">MyList</a>
            </c:if>
        </c:if>	       
	  </div>
	  
	   -->
	  

  </nav>




         


      <div class="poster">
					<p></p>
				</div>   			

    <script src="js/jquery-1.12.4.js"></script>
    
    <script language="javaScript">
	    function f(key){
	    	
		  <c:forEach items="${artist}" var="artists">
		    if('${artists.key}' == key ){
		    	
		    	$('.poster p').prepend('<img src=${artists.value}>');	
				
		    }
		  </c:forEach>
	    }
    	
        function f2(key){
  		  <c:forEach items="${artist}" var="artists">
  		    if('${artists.key}' == key ){
  		    	$('.poster p').empty()

  		    }
  		  </c:forEach>
  	    }
    	
    </script>	
	
        
        </header>

		<div id="container">
			
				<!-- Content -->
				<article id="content" class="test">
		<section class="main-slide">
			<ul style="height: 558px; transition-duration: 300ms;"><li class="clone" style="position: absolute; top: 0px; left: 0px; opacity: 0; width: 100%; transition-duration: 2000ms; z-index: 0;">
							<a href="https://www.galleryhyundai.com/story/view/20000000130">
								<figure><img src="imgs/main_img.png" alt=""></figure>
								<div class="text ">
									<span class="artist">［drənæda］</span>
									<span class="title">Myoung Ho Lee</span>
									<span class="date">22 September - 25 November, 2020</span>
								</div>
							</a>
						</li>
				
					
						<li class="" style="position: absolute; top: 0px; left: 0px; opacity: 0; width: 100%; transition-duration: 2000ms; z-index: 0;">
							<a href="https://www.galleryhyundai.com/exhibition/view/20000000016">
								<figure><img src="imgs/main_img1_1.jpg" alt=""></figure>
								<div class="text ">
									<span class="artist">The Path</span>
									<span class="title">Kim Tschang-Yeul</span>
									<span class="date">23 October - 29 November, 2020</span>
								</div>
							</a>
						</li>
					
				
					
						<li class="current" style="position: absolute; top: 0px; left: 0px; opacity: 1; width: 100%; transition-duration: 2000ms; z-index: 10;">
							<a href="https://www.galleryhyundai.com/story/view/20000000130">
								<figure><img src="imgs/main_img2.png"" alt=""></figure>
								<div class="text ">
									<span class="artist">［drənæda］</span>
									<span class="title">Myoung Ho Lee</span>
									<span class="date">22 September - 25 November, 2020</span>
								</div>
							</a>
						</li>
					
				
			<li class="clone" style="position: absolute; top: 0px; left: 0px; opacity: 0; width: 100%; transition-duration: 2000ms; z-index: 0;">
							<a href="https://www.galleryhyundai.com/exhibition/view/20000000016">
								<figure><img src="imgs/main_img.png3" alt=""></figure>
								<div class="text ">
									<span class="artist">The Path</span>
									<span class="title">Kim Tschang-Yeul</span>
									<span class="date">23 October - 29 November, 2020</span>
								</div>
							</a>
						</li></ul>
		<div class="paging"><button type="button" class="">1</button><button type="button" class="current">2</button></div></section>

		<section class="fixed-posts">
			<div class="post-list column-3">
				<ul>
					
						
						<li class="video">
							<a href="/story/view/20000000133">
								<figure><img src="imgs/sub_img1.jpg" alt=""></figure>
								<span class="category">Video</span>
								<span class="title">Kim Tschang-Yeul 김창열 : The Path </span>
							</a>
						</li>
						
					
						
						<li>
							<a href="/story/view/20000000132">
								<figure><img src="imgs/sub_img2.jpg" alt=""></figure>
								<span class="category">Books</span>
								<span class="title">Kim Tschang-Yeul 김창열 : The Path</span>
							</a>
						</li>
						
					
						
						<li>
							<a href="/story/view/20000000129">
								<figure><img src="imgs/sub_img3.jpg" alt=""></figure>
								<span class="category">Press</span>
								<span class="title">Iván Navarro 이반 나바로 : Mind the Artist</span>
							</a>
						</li>
						
					
				</ul>
			</div>
		</section>

		
			<section class="sticky-post ">
				<a href="/story/view/20000000130">
					<figure><img src="imgs/minjeong.jpg" alt=""></figure>
					<div class="text">
						<span class="category">News</span>
						<span class="title">Myoung Ho Lee 이명호 :［drənæda］</span>
						<span class="excerpt">Myoung Ho Lee’s solo exhibition [drənæna] is on view at Goeun Museum of Photography in Busan.</span>
					</div>
				</a>
			</section>
		

		<section class="recent-posts vuelayer">
			<div class="post-list column-4"><ul>
				<li class="">
					<a href="/story/view/20000000131">
						<figure><img src="imgs/press_1.jpg" alt=""></figure> 
						<span class="category">News</span> <span class="title">Kang Seung Lee 이강승 : Solidarity Spores</span> 
						<span class="excerpt">Kang Seung Lee revisits the 1992 LA riots in "untitled 
						(la recoluciin es la solución!)." </span>
					</a>
				</li>
				<li class="">
					<a href="/story/view/20000000126">
						<figure><img src="imgs/essays_1.jpg" alt=""></figure> <span class="category">Essays</span> 
						<span class="title">Yang Jung Uk 양정욱 : 곤란한 그림 </span> 
						<span class="excerpt">Yang Jung Uk presents his essay Awkward Drawings 
						accompanied by new drawings. </span>
					</a>
				</li>
				
				<li class="">
					<a href="/story/view/20000000125">
						<figure><img src="imgs/press_1.jpg" alt=""></figure> 
						<span class="category">Books</span> 
						<span class="title">Choi Minhwa 최민화 : Once Upon a Time</span> 
						<span class="excerpt">The newly published exhibition catalogue
						 contains 32 paintings, developed through 20 years of relentless study 
						 and studio practice.</span></a>
				</li>
				
				<li class="">
					<a href="/story/view/20000000124">
					<figure><img src="imgs/essays_1.jpg" alt=""></figure> <span class="category">News</span> 
					<span class="title">Kang Seung Lee 이강승  : Queer Correspondence</span> 
					<span class="excerpt">Los Angeles-based artists Kang Seung Lee and Be
					atriz Cortez have participated in the second Queer Correspondence commission</span>
					</a>
				</li>
		<!-- 	
				<li class="video">
					<a href="/story/view/20000000123">
					<figure><img src="imgs/press_1.jpg" alt=""></figure> <span class="category">
					Video</span> 
					<span class="title">Iván Navarro 이반 나바로 : Homeless Lamp, the Juice Sucker</span> 
					<span class="excerpt">Iván Navarro’s Homeless Lamp, the Juice Sucker 
					(2004-5) has been featured in The Guggenheim Circular.</span>
					</a>
				</li>
				
				<li class="">
					<a href="/story/view/20000000122">
						<figure><img src="/public/2020/08/12/18/27/22/0eedc199-56ea-4a9e-a558
						-3b89ebba93ae.crop_small.jpg" alt=""></figure> 
						<span class="category">News</span> 
						<span class="title">Myoung Ho Lee 이명호 : Among the Trees</span> 
						<span class="excerpt">Myoung Ho Lee’s Tree series is presented 
						in Among the Trees at Hayward Gallery in London.</span>
						</a>
				</li>
				
				<li class="">
					<a href="/story/view/20000000121">
						<figure><img src="/public/2020/08/12/15/38/27/26
						b15877-7e31-4416-af95-090e64c10dd8.crop_small.jpg" alt="">
						</figure> 
						<span class="category">Press</span> 
						<span class="title">Ik-Joong Kang 강익중 : Interview with Mark Tetto </span> 
						<span class="excerpt">Ik-Joong Kang, who captures and records the world 
						on 3-inches canvases, met Mark Tetto from Living Sense magazine.</span>
					</a>
				</li>
				
				<li class="video"><a href="/story/view/20000000119"><figure><img src="/public/2020/07/25/15/32/47/ccdd2931-c232-4ba9-824a-8c0208369cd9.crop_small.png" alt=""></figure> <span class="category">Video</span> <span class="title">Kang-Seung Lee 이강승 : 모어 毛漁</span> <span class="excerpt">&lt;모어 毛漁&gt;, an online live performance which was on stream on July 11, is now available on the MMCA YouTube channel. </span></a></li></ul></div> <div class="pagination"><a href="javascript:;" class="load-more">Load More</a></div></section>
		 -->	
	
	</article>

	<script src="js/Main.js"></script>
	<script>
		$(function () {
			var listVo = {
				pageIndex : 1,
				recordCountPerPage : 8,
			};
			var options = { listVo: listVo };
			Main.init(options);
		});


		function vueUpdated(vm) {
			Ui.execute();
		}

	</script>
				<!-- //Content -->
			
		</div>

		<footer id="footer">

		<div class="social-channel">
		   <ul>
			  
		  <li class="instagram"><a href="https://www.instagram.com/galleryhyundai/" target="blank">HYUNGSUB KIM</a></li>
		  <li class="facebook"><a href="https://www.facebook.com/galleryhyundai" target="blank">JOOHYUN ANN</a></li>
		  <li class="twitter"><a href="https://twitter.com/GalleryHyundai1" target="blank">JIHEE SEO</a></li>
		   </ul>
		</div>
		<div id="newsletter" class="newsletter-form">
		   <h2>Subscribe to stay up-to-date on our artists, exhibitions, news, and more.</h2>
		   <form id="newsletterForm" name="newsletterForm" method="POST" autocomplete="off" novalidate
				 onsubmit="return onsubmitNewsLetter()">
			  <div class="box">
				 <input type="text" name="email" id="email" required placeholder="Email address" maxlength="50">
				 <button type="submit">ì ì¡</button>
			  </div>
			  <p>By submitting your email address, you consent to receive our Newsletter. Your consent is revocable at any time by clicking the unsubscribe link within our mailings. Personal information is not used for any purpose other than to provide the information requested.</p>
			  <input type="checkbox" name="privacy" id="privacy">
			  <label for="privacy" tabindex="0">I agree</label>
		   </form>
		   <button type="button" class="close btnCloseNewsLetter">ë«ê¸°</button>
		</div>
	<address>#3 89 Mapo-daero Mapo-gu Seoul Republic of Korea</address>
	<p class="copyright">Gallery KAS - All rights reserved 2020</p>
		<script>
		   $(function() {
			  $('.btnCloseNewsLetter').on('click', function() {
				 $('form#newsletterForm')[0].reset();
			  });

		   });

		   function onsubmitNewsLetter() {
			  var $form = $('form#newsletterForm');
			  var $email = $form.find('#email');
			  var $privacy = $form.find('#privacy');

			  if (!$email.val().trim()) {
				 alert('ì´ë©ì¼ì£¼ìë¥¼ ìë ¥í´ ì£¼ì¸ì.');
				 $email.focus();
				 return false;
			  }
			  if (!$privacy.is(":checked")) {
				 alert('ê°ì¸ì ë³´ ìì§ ë° ì´ì©ì ëìí´ ì£¼ì¸ì.');
				 return false;
			  }

			  $.ajax({dataType : 'json', type : 'post',
				 contentType : 'application/json',
				 url : '/gallery/newslp/submit',
				 data : JSON.stringify({
					email : $email.val().trim(),
				 }),
			  }).done(function(data) {
				 if ('duplicated' == data.result) {
					alert('ì´ë¯¸ ë±ë¡ë ì´ë©ì¼ ì£¼ììëë¤.');
					return false;
				 } else {
					alert('ë±ë¡ëììµëë¤.');
					$('form#newsletterForm')[0].reset();
					$('.btnCloseNewsLetter').trigger('click');
					return false;
				 }

			  });
			  return false;

		   }
		</script>

			  </footer>
	</div>
	<script type="text/javascript" src="js/uijs/ui.js"></script>


</body>
</html>