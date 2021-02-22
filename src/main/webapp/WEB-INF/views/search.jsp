<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
<link rel="shortcut icon" type="image/x-icon" href="${root}/res/img/favicon.png">
<!-- Place favicon.ico in the root directory -->

<!-- CSS here -->
<link rel="stylesheet" href="${root}/res/css/bootstrap.min.css">
<link rel="stylesheet" href="${root}/res/css/owl.carousel.min.css">
<link rel="stylesheet" href="${root}/res/css/magnific-popup.css">
<link rel="stylesheet" href="${root}/res/css/font-awesome.min.css">
<link rel="stylesheet" href="${root}/res/css/themify-icons.css">
<link rel="stylesheet" href="${root}/res/css/nice-select.css">
<link rel="stylesheet" href="${root}/res/css/flaticon.css">
<link rel="stylesheet" href="${root}/res/css/jquery-ui.css">
<link rel="stylesheet" href="${root}/res/css/gijgo.css">
<link rel="stylesheet" href="${root}/res/css/animate.css">
<link rel="stylesheet" href="${root}/res/css/slick.css">
<link rel="stylesheet" href="${root}/res/css/slicknav.css">

<link rel="stylesheet" href="${root}/res/css/style.css">
<!-- <link rel="stylesheet" href="${root}/res/css/responsive.css"> -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=d1265a4c7958f16240a8ed2be97d8ab5"></script>
<!-- services 라이브러리 불러오기 -->
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=d1265a4c7958f16240a8ed2be97d8ab5&libraries=services"></script>
<script type="text/javascript">
	$(function() {
		var lat = ${houseinfo.lat};
		var lng = ${houseinfo.lng};
		var container = document.getElementById('map'); //지도를 담을 영역의 DOM 레퍼런스
		var options = { //지도를 생성할 때 필요한 기본 옵션
			center : new kakao.maps.LatLng(lat, lng), //지도의 중심좌표.
			level : 5
		//지도의 레벨(확대, 축소 정도)
		};
		var map = new kakao.maps.Map(container, options); //지도 생성 및 객체 리턴
	});
	
	$(document).ready(function() {
		$("#set-btn").click(function() {
			let place = $("#searchword").val();//~동
			let amount = $("#amount").val(); //1000만~2000만
			let building = $("#building_type").val();//type
			let transaction = $("#transaction_type").val();//type
			location.href='${root}/house/search?search_option=${opt[0]}&search_word='+place+'&price='+amount;
		});
		$("#reset-btn").click(function() {
			let place = $("#searchword").val();//~동
			let building = $("#building_type").val();//type
			let transaction = $("#transaction_type").val();//type
			location.href='${root}/house/search?search_option=${opt[0]}&search_word='+place;
		});
	});
</script>
</head>

<body>
<%@ include file="/WEB-INF/views/include/Header.jsp" %>

	<!-- bradcam_area  -->
	<div class="bradcam_area bradcam_bg_2">
		<div class="container">
			<div class="row">
				<div class="col-xl-12">
					<div class="bradcam_text text-center">
						<h3>Buildings</h3>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--/ bradcam_area  -->

	<!-- where_togo_area_start  -->
	<div class="where_togo_area">
		<div class="container">
			<div class="row align-items-center">
				<!-- 				<div class="col-lg-3"> -->
				<!-- 					<div class="form_area"> -->
				<!-- 						<h3>Where you want to visit?</h3> -->
				<!-- 					</div> -->
				<!-- 				</div> -->
				<div class="col">
					<div class="search_wrap">
						<form class="search_form" action="${root}/house/search" method="post">
							<div class="input_field">
								<select name="search_option">
									<option value="0" data-display="Search option">Search option(Dong)</option>
									<option value="1">House Name</option>
									<option value="0">Dong</option>
								</select>
							</div>
							<div class="input_field">
								<select name="building_type">
									<option value="0" data-display="Building type">All</option>
									<option value="1">Apartment</option>
									<option value="2">House</option>
								</select>
							</div>
							<div class="input_field">
								<select name="transaction_type">
									<option value="0" data-display="Transaction type">All</option>
									<option value="1">Sales</option>
									<option value="2">Rent</option>
								</select>
							</div>
							<div class="input_field" >
								<input type="text" placeholder="Where to visit?" id="searchword" name="search_word" value='${search_word}'>
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


	<div class="popular_places_area">
		<div class="container">
			<div class="row">
				<div class="col-lg-4">
					<div class="filter_result_wrap">
						<h3>Filter Result</h3>
						<div class="filter_bordered">
							<div class="filter_inner">
								<div class="row">
									<div class="col-lg-12">
										<div class="single_select" >
											<select id="building_type">
												<option data-display="House type">Building type</option>
												<option value="0">ALL</option>
												<option value="1">Apartment</option>
												<option value="2">House</option>
											</select>
										</div>
									</div>
									<div class="col-lg-12">
										<div class="single_select">
											<select id="transaction_type">
												<option data-display="Transaction type">Transaction type</option>
												<option value="0">ALL</option>
												<option value="1">Sales</option>
												<option value="2">Rent</option>
											</select>
										</div>
									</div>
									<div class="col-lg-12">
										<div class="range_slider_wrap">
											<span class="range">Price range</span>
											<div id="slider-range"></div>
											<p>
												<input type="text" class="col-lg-12" id="amount" readonly style="border: 0; color: #7A838B; font-weight: 400;">
											</p>
										</div>
									</div>
								</div>
							</div>

							<div class="reset_btn">
								<button class="boxed-btn3" id="set-btn" >Find</button>
								<button class="boxed-btn4" id="reset-btn" >Reset</button>
							</div>
						</div>
					</div>
				</div>
				<div class="col-lg-8" id="map"></div>
			</div>
			<div class="row mt-lg-5 d-flex justify-content-center">
				<div class="col-lg-12">
					<c:choose>
						<c:when test="${empty deals }">
							<div class="row">
								<div class="col-lg-12 text-center">
									<h2>해당하는 거래 내역이 없습니다.</h2>
								</div>
							</div>
						</c:when>
						<c:otherwise>
							<div class="row">
								<c:forEach var="deal" items="${deals}" varStatus="loop">
									<div class="col-lg-4 col-md-4"  id="table">
											<div class="single_place">
											<div class="thumb">
												<c:if test="${paging.nowPage eq 1}">
													<img src="${root}/res/apt/${loop.index+1}.png" alt="">
												</c:if>
												<c:if test="${paging.nowPage ne 1}">
													<img src="${root}/res/apt/${loop.index+10}.png" alt="">
												</c:if>
											</div>
											<div></div>
											<div class="place_info">
												<a href="${root }/house/view/${deal.no}">
													<h3>${deal.aptName}</h3>
												</a>
												<p>서울시 ${deal.dong} ${deal.jibun} ${deal.aptName}</p>
												<a href="${root}/house/view/${deal.no}" class="price">${deal.dealAmount}만원</a>
											</div>
										</div>
									</div>
								</c:forEach>
							</div>
							<div style="display: block; text-align: center;">		
								<c:if test="${paging.startPage != 1 }">
									<a href="${root}/house/houseList?nowPage=${paging.startPage - 1 }&cntPerPage=${paging.cntPerPage}
											&search_option=${opt[0]}&building_type=${opt[1]}&transaction_type=${opt[2]}&search_word=${opt[3]}&price=${opt[4]}">${p }&lt;</a>
								</c:if>
								<c:forEach begin="${paging.startPage }" end="${paging.endPage }" var="p">
									<c:choose>
										<c:when test="${p == paging.nowPage }">
											<b>${p }</b>
										</c:when>
										<c:when test="${p != paging.nowPage }">
											<a href="${root}/house/houseList?nowPage=${p }&cntPerPage=${paging.cntPerPage}
											&search_option=${opt[0]}&building_type=${opt[1]}&transaction_type=${opt[2]}&search_word=${opt[3]}&price=${opt[4]}">${p }</a>
										</c:when>
									</c:choose>
								</c:forEach>
								<c:if test="${paging.endPage != paging.lastPage}">
									<a href="${root}/house/houseList?nowPage=${paging.endPage+1 }&cntPerPage=${paging.cntPerPage}
											&search_option=${opt[0]}&building_type=${opt[1]}&transaction_type=${opt[2]}&search_word=${opt[3]}&price=${opt[4]}">${p }&gt;</a>
								</c:if>
							</div>
							<div class="row">
								<div class="col-lg-12">
									<div class="more_place_btn text-center">
										<a class="boxed-btn4" href="#">More Places</a>
									</div>
								</div>
							</div>
						</c:otherwise>
					</c:choose>
				</div>
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

	<!-- link that opens popup -->
	<!--     
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://static.codepen.io/assets/common/stopExecutionOnTimeout-de7e2ef6bfefd24b79a3f68b414b87b8db5b08439cac3f1012092b2290c719cd.js"></script>

    <script src=" https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"> </script> -->
	<!-- JS here -->
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
	<script src="${root}/res/js/jquery-ui.min.js">
		
	</script>
	<script src="${root}/res/js/nice-select.min.js"></script>
	<script src="${root}/res/js/jquery.slicknav.min.js"></script>
	<script src="${root}/res/js/jquery.magnific-popup.min.js"></script>
	<script src="${root}/res/js/plugins.js"></script>
	<script src="${root}/res/js/range.js"></script>
	<!-- <script src="${root}/res/js/gijgo.min.js"></script> -->
	<script src="${root}/res/js/slick.min.js"></script>



	<!--contact js-->
	<script src="${root}/res/js/jquery.ajaxchimp.min.js"></script>
	<script src="${root}/res/js/jquery.form.js"></script>
	<script src="${root}/res/js/jquery.validate.min.js"></script>
	<script src="${root}/res/js/mail-script.js"></script>


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