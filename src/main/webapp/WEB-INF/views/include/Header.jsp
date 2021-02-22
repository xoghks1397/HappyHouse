<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="root" value="${pageContext.request.contextPath}" />
<head>

</head>
<body>
	<header>
		<div class="header-area ">
			<div id="sticky-header" class="main-header-area">
				<div class="container-fluid">
					<div class="header_bottom_border">
						<div class="row align-items-center">
							<div class="col-xl-4 col-lg-4 ">
								<div class="logo">
									<a href="${root}/"> <img class="img-fluid"
										src="${root}/res/img/logo.png" alt="">
									</a>
								</div>
							</div>
							<div class="col-xl-7 col-lg-7">
								<div class="main-menu d-none d-lg-block">
									<nav>
										<ul id="navigation">
											<c:if test="${not empty user}">
												<li><a class="active">${user}님 환영합니다</a></li>
											</c:if>
											<li><a class="active" href="${root }/">홈</a></li>
											<li><a class="active" href="/happyhouse/resources/index.html">게시판</a></li>
											<c:if test="${empty user}">
												<li><a class="active" href="${root }/Login/login">로그인/회원가입</a></li>
												<li><a class="active" href="${root }/findPassword">비밀번호 찾기</a></li>
											</c:if>

											<c:if test="${not empty user}">
												<li><a class="active" href="${root }/house/searchAround?id=${user}">내주변정보</a></li>
												<li><a href="#">회원정보 <i class="ti-angle-down"></i></a>
													<ul class="submenu">
														<li><a href="${root}/member/update?id=${user}">내 정보 수정</a></li>
														<c:if test="${user == 'ssafy'}">
															<li><a class="active" href="member/searchMember">회원관리</a></li>
														</c:if>
														<c:if test="${user ne 'ssafy'}">
															<li>
															<a href="javascript:deleteConfirm('${user}')">회원탈퇴</a>
															</li> <!--href="${root}/member/del?id=${user}"  -->
														</c:if>
														<li><a class="active" href="${root}/Login/logout">로그아웃</a></li>
													</ul></li>
											</c:if>
										</ul>
									</nav>
								</div>
							</div>
							<div class="col-12">
								<div class="mobile_menu d-block d-lg-none"></div>
							</div>
						</div>
					</div>

				</div>
			</div>
		</div>
	</header>
	<!-- header-end -->
	<script type="text/javascript">
		function deleteConfirm(data) {
			var chk = confirm("탈퇴하시겠습니까?");
			if (chk) {
				location.href='${root}/member/delete?id='+data;
			}
		}	
	</script>
</body>
</html>