<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
<link rel="shortcut icon" type="image/x-icon"
	href="${root}/res/${root}/res/img/favicon.png">
<!-- Place favicon.ico in the root directory -->

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
<!-- <link rel="stylesheet" href="${root}/res/css/responsive.css"> -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script type="text/javascript"
	src="//dapi.kakao.com/v2/maps/sdk.js?appkey=d1265a4c7958f16240a8ed2be97d8ab5"></script>
<!-- services 라이브러리 불러오기 -->
<script type="text/javascript"
	src="//dapi.kakao.com/v2/maps/sdk.js?appkey=d1265a4c7958f16240a8ed2be97d8ab5&libraries=services"></script>
<script type="text/javascript">
	$(function() {
		var lat = ${houseinfo.lat};
		var lng = ${houseinfo.lng};
		var container = document.getElementById('map'); //지도를 담을 영역의 DOM 레퍼런스
		var options = { //지도를 생성할 때 필요한 기본 옵션
			center : new kakao.maps.LatLng(lat, lng), //지도의 중심좌표.
			level : 3
		//지도의 레벨(확대, 축소 정도)
		};
		var map = new kakao.maps.Map(container, options); //지도 생성 및 객체 리턴

		var markerPosition = new kakao.maps.LatLng(lat, lng);

		// 마커를 생성합니다
		var marker = new kakao.maps.Marker({
			position : markerPosition
		});

		// 마커가 지도 위에 표시되도록 설정합니다
		marker.setMap(map);

	});
</script>
</head>

<body>
<%@ include file="/WEB-INF/views/include/Header.jsp" %>

	<div class="destination_banner_wrap overlay">
		<div class="destination_text text-center">
			<h3>${houseinfo.aptName}</h3>
			<p>${houseinfo.city}${houseinfo.gugun}${houseinfo.dong}
				${houseinfo.jibun} ${houseinfo.aptName}</p>
		</div>
	</div>

	<div class="destination_details_info">
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-lg-4 col-md-4">
					<div class="destination_info">
						<div class="row">
							<a href="${root}/BtnServlet/env?sigun=${houseinfo.gugun}" role="button" class="btn btn-outline-success">주변 정보</a> &nbsp;
							<a href="${root}/BtnServlet/pre?sigun=${houseinfo.gugun}" role="button" class="btn btn-outline-warning">선별검사소 정보</a> &nbsp;
							<a href="${root}/BtnServlet/hos?sigun=${houseinfo.gugun}" role="button" class="btn btn-outline-danger">병원 정보</a>
						</div>
						<div class="bordered_1px"></div>
						<div class="row">
							<h3>거래정보</h3>
							<div class="bordered_1px"></div>
						</div>
						<div class="row font-weight-bold">
							<div class="col">거래금액</div>
							<div class="col">${houseinfo.dealAmount}만원</div>
						</div>
						<div class="row font-weight-bold">
							<div class="col">건축연도</div>
							<div class="col">${houseinfo.buildYear}년</div>
						</div>
						<div class="row font-weight-bold">
							<div class="col">거래 연월</div>
							<div class="col">${houseinfo.dealYear}년${houseinfo.dealMonth}월</div>
						</div>
						<div class="row font-weight-bold">
							<div class="col">전용면적</div>
							<div class="col">${houseinfo.area}</div>
						</div>
						<div class="row font-weight-bold">
							<div class="col">층수</div>
							<div class="col">${houseinfo.floor}</div>
						</div>
						<div class="row font-weight-bold">
							<div class="col">거래유형</div>
							<div class="col">${houseinfo.type }</div>
						</div>
					</div>
					<div class="bordered_1px"></div>
				</div>
				<div class='col' id='map'></div>
			</div>
		</div>
	</div>

	

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


	<!-- Modal -->
	<div class="modal fade custom_search_pop" id="exampleModalCenter"
		tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle"
		aria-hidden="true">
		<div class="modal-dialog modal-dialog-centered" role="document">
			<div class="modal-content">
				<div class="serch_form">
					<input type="text" placeholder="Search">
					<button type="submit">search</button>
				</div>
			</div>
		</div>
	</div>
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
	<script src="${root}/res/js/jquery.ajaxchimp.min.js"></script>
	<script src="${root}/res/js/jquery.form.js"></script>
	<script src="${root}/res/js/jquery.validate.min.js"></script>


	<script src="${root}/res/js/main.js"></script>
	<script>
		$('#datepicker').datepicker({
			iconsLibrary : 'fontawesome',
			icons : {
				rightIcon : '<span class="fa fa-caret-down"></span>'
			}
		});
	</script>
</body>
</html>