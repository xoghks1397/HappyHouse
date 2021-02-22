<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="root" value="${pageContext.request.contextPath}" />
<!doctype html>
<html class="no-js" lang="zxx">

<head>
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>HappyHouse</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- <link rel="manifest" href="site.webmanifest"> -->
<link rel="shortcut icon" type="image/x-icon" href="img/favicon.png">
<!-- Place favicon.ico in the root directory -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js"></script>
<!-- CSS here -->
<link rel="stylesheet" href="${root}/res/css/bootstrap.min.css">
<link rel="stylesheet" href="${root}/res/css/owl.carousel.min.css">
<link rel="stylesheet" href="${root}/res/css/magnific-popup.css">
<link rel="stylesheet" href="${root}/res/css/font-awesome.min.css">
<link rel="stylesheet" href="${root}/res/css/themify-icons.css">
<link rel="stylesheet" href="${root}/res/css/nice-select.css">
<link rel="stylesheet" href="${root}/res/css/flaticon.css">
<link rel="stylesheet" href="${root}/res/css/gijgo.css">
<link rel="stylesheet" href="${root}/res/css/animate.css">
<link rel="stylesheet" href="${root}/res/css/slick.css">
<link rel="stylesheet" href="${root}/res/css/slicknav.css">
<link rel="stylesheet"
	href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.11.2/themes/smoothness/jquery-ui.css">

<link rel="stylesheet" href="${root}/res/css/style.css">
<!-- <link rel="stylesheet" href="css/responsive.css"> -->
</head>

<body>
	<%@ include file="/WEB-INF/views/include/Header.jsp"%>

	<!-- slider_area_start -->
	<div class="slider_area">
		<div class="slider_active owl-carousel">
			<div
				class="single_slider  d-flex align-items-center slider_bg_1 overlay">
				<div class="container">
					<div class="row align-items-center">
						<div class="col-xl-12 col-md-12">
							<div class="slider_text text-center">
								<h3>HappyHouse</h3>
								<p>The easiest way to find your perfect home</p>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div
				class="single_slider  d-flex align-items-center slider_bg_2 overlay">
				<div class="container">
					<div class="row align-items-center">
						<div class="col-xl-12 col-md-12">
							<div class="slider_text text-center">
								<h3>HappyHouse</h3>
								<p>The easiest way to find your perfect home</p>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div
				class="single_slider  d-flex align-items-center slider_bg_3 overlay">
				<div class="container">
					<div class="row align-items-center">
						<div class="col-xl-12 col-md-12">
							<div class="slider_text text-center">
								<h3>HappyHouse</h3>
								<p>The easiest way to find your perfect home</p>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div
				class="single_slider  d-flex align-items-center slider_bg_4 overlay">
				<div class="container">
					<div class="row align-items-center">
						<div class="col-xl-12 col-md-12">
							<div class="slider_text text-center">
								<h3>HappyHouse</h3>
								<p>The easiest way to find your perfect home</p>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div
				class="single_slider  d-flex align-items-center slider_bg_5 overlay">
				<div class="container">
					<div class="row align-items-center">
						<div class="col-xl-12 col-md-12">
							<div class="slider_text text-center">
								<h3>HappyHouse</h3>
								<p>The easiest way to find your perfect home</p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- slider_area_end -->

	<!-- where_togo_area_start  -->
	<div class="where_togo_area">
		<div class="container">
			<div class="row align-items-center">
				<div class="col">
					<div class="search_wrap">
						<form class="search_form" action="${root}/house/search"
							method="post">
							<div class="input_field">
								<select name="search_option">
									<option value="0" data-display="Search option">모두선택</option>
									<option value="0">동</option>
									<option value="1">이름</option>
								</select>
							</div>
							<div class="input_field">
								<select name="building_type">
									<option value="0" data-display="Building type">모두선택</option>
									<option value="1">아파트</option>
									<option value="2">주택</option>
								</select>
							</div>
							<div class="input_field">
								<select name="transaction_type">
									<option value="0" data-display="Transaction type">모두선택</option>
									<option value="1">매매</option>
									<option value="2">전월세</option>
								</select>
							</div>
							<div class="input_field">
								<input type="text" placeholder="Where to visit?" name="search_word" value='${search_word}'>
							</div>
							<div class="search_btn">
								<input class="boxed-btn4 " type="submit" value="Search">
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- where_togo_area_end  -->

	<!-- popular_destination_area_start  -->
	<div class="popular_destination_area">
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-lg-6">
					<div class="section_title text-center mb_70">
						<h3>자주 본 지역</h3>
					</div>
				</div>
			</div>
			<div class="row" id="popList">
			</div>
		</div>
	</div>
	<!-- popular_destination_area_end  -->

	<footer class="footer">
		<div class="footer_top">
			<div class="container">
				<div class="row">
					<div class="col-xl-4 col-md-6 col-lg-4 ">
						<div class="footer_widget">
							<div class="footer_logo">
								<a href="${root}/BtnServlet/intro"> <img src="${root}/res/img/logo.png" alt="">
								</a>
							</div>
							<p>
								11th floor, 212, Teheran-ro, Gangnam-gu, Seoul, Republic of
								Korea <br> HappyHouse(본사) <br> <a href="#">+10
									1234 5678</a> <br> <a href="#">admin@happyhouse.com</a>
							</p>
							<div class="socail_links">
								<ul>
									<li><a href="#"> <i class="ti-facebook"></i>
									</a></li>
									<li><a href="#"> <i class="ti-twitter-alt"></i>
									</a></li>
									<li><a href="#"> <i class="fa fa-instagram"></i>
									</a></li>
									<li><a href="#"> <i class="fa fa-pinterest"></i>
									</a></li>
									<li><a href="#"> <i class="fa fa-youtube-play"></i>
									</a></li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="copy-right_text">
			<div class="container">
				<div class="footer_border"></div>
				<div class="row">
					<div class="col-xl-12">
						<p class="copy_right text-center">
							<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
							Copyright &copy;
							<script>
								document.write(new Date().getFullYear());
							</script>
							All rights reserved | This site is made with <i
								class="fa fa-heart-o" aria-hidden="true"></i> by <a
								href="https://colorlib.com" target="_blank">ssafy</a>
							<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
						</p>
					</div>
				</div>
			</div>
		</div>
	</footer>
	<!-- link that opens popup -->
	<!--     
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://static.codepen.io/assets/common/stopExecutionOnTimeout-de7e2ef6bfefd24b79a3f68b414b87b8db5b08439cac3f1012092b2290c719cd.js"></script>

    <script src=" https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"> </script> -->
	<!-- JS here -->
	<script src="${root}/res/js/vendor/modernizr-3.5.0.min.js"></script>
	<script src="${root}/res/js/vendor/jquery-1.12.4.min.js"></script>
	<script src="${root}/res/js/popper.min.js"></script>
	<script src="${root}/res/js/bootstrap.min.js"></script>
	<script src="${root}/res/js/owl.carousel.min.js"></script>
	<script src="${root}/res/js/isotope.pkgd.min.js"></script>
	<script src="${root}/res/js/ajax-form.js"></script>
	<script src="${root}/res/js/waypoints.min.js"></script>
	<script src="${root}/res/js/jquery.counterup.min.js"></script>
	<script src="${root}/res/js/imagesloaded.pkgd.min.js"></script>
	<script src="${root}/res/js/scrollIt.js"></script>
	<script src="${root}/res/js/jquery.scrollUp.min.js"></script>
	<script src="${root}/res/js/wow.min.js"></script>
	<script src="${root}/res/js/nice-select.min.js"></script>
	<script src="${root}/res/js/jquery.slicknav.min.js"></script>
	<script src="${root}/res/js/jquery.magnific-popup.min.js"></script>
	<script src="${root}/res/js/plugins.js"></script>
	<script src="${root}/res/js/gijgo.min.js"></script>
	<script src="${root}/res/js/slick.min.js"></script>



	<!--contact js-->
	<script src="${root}/res/js/contact.js"></script>
	<script src="${root}/res/js/jquery.ajaxchimp.min.js"></script>
	<script src="${root}/res/js/jquery.form.js"></script>
	<script src="${root}/res/js/jquery.validate.min.js"></script>
	<script src="${root}/res/js/mail-script.js"></script>
	<script src="${root}/res/js/main.js"></script>
	<script>
		$(document).ready(function() {
			if('${msg}' != "")
				alert('${msg}');
	       $.ajax({
	           url:"http://localhost:8000/happyhouse/house/pop.do",  
	           type:'GET',
	           contentType:'application/json;charset=utf-8',
	           dataType:'json',
	           success:function(data, status, xhr) {
	        	   for(var i =0; i<data.length; i++){
	        		   let str = 
	        				"<div class='col-lg-4 col-md-6'>"+
							"<div class='single_destination' onclick=location.href='${root}/house/search?search_word="+data[i]+"'>"+
							"<div class='thumb'>"+
							"<img src='${root}/res/img/destination/"+(i+1)+".png' alt=''>"+
							"</div>"+
							"<div class='content'>"+
							"<p class='d-flex align-items-center'>"+
							data[i]+"<a href='${root}/house/search?search_word="+data[i]+"'>"+(i+1)+"</a>"
							"</p>"+
							"</div>"+
							"</div>"+
							"</div>"
						$("#popList").append(str);
	        	   }
	           },
	           error:function(xhr,status,msg){
	               console.log("상태값 : " + status + " Http에러메시지 : "+msg);
	           }
	       });   
	   });
		
		$('#datepicker').datepicker({
			iconsLibrary : 'fontawesome',
			icons : {
				rightIcon : '<span class="fa fa-caret-down"></span>'
			}
		});
	</script>
</body>

</html>