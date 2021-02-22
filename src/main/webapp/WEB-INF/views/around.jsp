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
	
</script>
</head>

<body>
	<%@ include file="/WEB-INF/views/include/Header.jsp"%>

	<div class="destination_banner_wrap overlay">
		<div class="destination_text text-center">
			<h3>${gu}</h3>
			<p>${info}</p>
		</div>
	</div>

	<div class="popular_places_area">
		<div class="container">
			<div class="row mt-lg-5 d-flex justify-content-center">
				<div class="col-lg-12">
					<c:choose>
						<c:when test="${empty aroundInfos}">
							<div class="row">
								<div class="col-lg-12 text-center">
									<h2>해당하는 내역이 없습니다.</h2>
								</div>
							</div>
						</c:when>
						<c:otherwise>
							<div class="row">
								<c:forEach var="info" items="${aroundInfos}">
									<div class="col-lg-4 col-md-4">
										<div class="single_place">
											<h3>${info.name}</h3>
											<c:if test="${logo eq 'env'}">
												<div class="place_info">
													<p>${info.address}</p>
													<p>사유:${info.checkReason}</p>
												</div>
											</c:if>
											<c:if test="${logo eq 'pre'}">
												<div class="place_info">
													<h3>${info.name}</h3>
													<p>${info.address}</p>
													<p>평일:${info.week}</p>
													<p>주말:${info.weekend}</p>
												</div>
											</c:if>
											<c:if test="${logo eq 'hos'}">
												<div class="place_info">
													<h3>${info.name}</h3>
													<p>${info.address}</p>
													<p>연락처:${info.phone}</p>
												</div>
											</c:if>
										</div>
									</div>
								</c:forEach>
							</div>
						</c:otherwise>
					</c:choose>
				</div>
				<div style="display: block; text-align: center;">
					<c:if test="${paging.startPage != 1 }">
						<a
							href="${root}/BtnServlet/env?sigun=${gu}&nowPage=${paging.startPage - 1 }&cntPerPage=${paging.cntPerPage}">${p }&lt;</a>
					</c:if>
					<c:forEach begin="${paging.startPage }" end="${paging.endPage }"
						var="p">
						<c:choose>
							<c:when test="${p == paging.nowPage }">
								<b>${p }</b>
							</c:when>
							<c:when test="${p != paging.nowPage }">
								<a
									href="${root}/BtnServlet/env?sigun=${gu}&nowPage=${p}&cntPerPage=${paging.cntPerPage}">${p }</a>
							</c:when>
						</c:choose>
					</c:forEach>
					<c:if test="${paging.endPage != paging.lastPage}">
						<a
							href="${root}/BtnServlet/env?sigun=${gu}&nowPage=${paging.endPage+1 }&cntPerPage=${paging.cntPerPage}">${p }&gt;</a>
					</c:if>
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
								<a href="${root}/BtnServlet/intro"> <img
									src="${root}/res/img/logo.png" alt="">
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