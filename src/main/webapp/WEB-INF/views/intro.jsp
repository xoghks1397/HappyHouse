<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="root" value="${pageContext.request.contextPath}" />
<head>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Bootstrap User Management Data Table</title>
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/icon?family=Material+Icons">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style>
@import url('https://fonts.googleapis.com/css2?family=Black+Han+Sans&display=swap');
@import url('https://fonts.googleapis.com/css2?family=Noto+Sans&display=swap');
@import url(//fonts.googleapis.com/css?family=Montserrat:300,500);
.team4 {
  font-family: "Montserrat", sans-serif;
	color: #8d97ad;
  font-weight: 300;
}

.team4 h1, .team4 h2, .team4 h3, .team4 h4, .team4 h5, .team4 h6 {
  color: #3e4555;
}

.team4 .font-weight-medium {
	font-weight: 500;
}

.team4 h5 {
    line-height: 22px;
    font-size: 18px;
}

.team4 .subtitle {
    color: #8d97ad;
    line-height: 24px;
		font-size: 13px;
}

.team4 ul li a {
  color: #8d97ad;
  padding-right: 15px;
  -webkit-transition: 0.1s ease-in;
  -o-transition: 0.1s ease-in;
  transition: 0.1s ease-in;
}

.team4 ul li a:hover {
  -webkit-transform: translate3d(0px, -5px, 0px);
  transform: translate3d(0px, -5px, 0px);
	color: #316ce8;
}
.titleFont{
	font-family: 'Black Han Sans', sans-serif;
}
.introFont{
	font-family: 'Noto Sans', sans-serif;
}
</style>
<script>
	$(document).ready(function() {
		$('[data-toggle="tooltip"]').tooltip();
	});
</script>
</head>
<body>
	<div class="py-5 team4">
		<div class="container">
			<div class="row justify-content-center mb-4">
				<div class="col-md-12 text-center">
					<h1 class="titleFont" class="mb-3">나도 카카오</h1>
					<h3 class="titleFont" class="subtitle">삼성에서 배워 카카오에 충성한다. 나도 카카오!!</h3>
				</div>
			</div>
			<div class="row">
				<!-- column  -->
				<div class="col-lg-6 mb-4">
					<!-- Row -->
					<div class="row">
						<div style="text-align : center;" class="col-md-12">
							<img
								src="${root}/res/img/team/1.png"
								alt="wrapkit" class="img-fluid rounded-circle" />
						</div>
						<div class="col-md-12 text-center">	
							<div class="pt-2">
								<h3 class="introFont" class="mt-4 font-weight-medium mb-0">이태환</h3>
								<h4 class="introFont"  class="subtitle mb-3">네이버, NHN, 카카오에 꼭 가고 싶습니다!!</h4>
								<ul class="list-inline">
									<li class="list-inline-item"><a href="#"
										class="text-decoration-none d-block px-1"><i
											class="icon-social-facebook"></i></a></li>
									<li class="list-inline-item"><a href="#"
										class="text-decoration-none d-block px-1"><i
											class="icon-social-twitter"></i></a></li>
									<li class="list-inline-item"><a href="#"
										class="text-decoration-none d-block px-1"><i
											class="icon-social-instagram"></i></a></li>
									<li class="list-inline-item"><a href="#"
										class="text-decoration-none d-block px-1"><i
											class="icon-social-behance"></i></a></li>
								</ul>
							</div>
						</div>
					</div>
					<!-- Row -->
				</div>
				<!-- column  -->
				<!-- column  -->
				<div class="col-lg-6 mb-4">
					<!-- Row -->
					<div class="row">
						<div style="text-align : center;" class="col-md-12">
							<img
								src="${root}/res/img/team/2.png"
								alt="wrapkit" class="img-fluid rounded-circle" />
						</div>
						<div class="col-md-12 text-center">
							<div class="pt-2">
								<h3 class="introFont" class="mt-4 font-weight-medium mb-0">한진영</h3>
								<h4 class="introFont" class="subtitle mb-3">사랑해요 삼성전자~ 받아줘요 카카오!</h4>
								<ul class="list-inline">
									<li class="list-inline-item"><a href="#"
										class="text-decoration-none d-block px-1"><i
											class="icon-social-facebook"></i></a></li>
									<li class="list-inline-item"><a href="#"
										class="text-decoration-none d-block px-1"><i
											class="icon-social-twitter"></i></a></li>
									<li class="list-inline-item"><a href="#"
										class="text-decoration-none d-block px-1"><i
											class="icon-social-instagram"></i></a></li>
									<li class="list-inline-item"><a href="#"
										class="text-decoration-none d-block px-1"><i
											class="icon-social-behance"></i></a></li>
								</ul>
							</div>
						</div>
					</div>
					<!-- Row -->
				</div>
			</div>
		</div>
	</div>
	<script type="text/javascript">
		function deleteConfirm(data) {
			var chk = confirm(data + "님을 탈퇴시키겠습니까?");
			if (chk) {
				location.href = '${root}/member/deleteMem?id=' + data;
			}
		}
	</script>
</body>
</html>