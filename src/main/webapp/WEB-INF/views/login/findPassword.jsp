<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="root" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html class="no-js" lang="zxx">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Sign Up Form by Colorlib</title>

<!-- Font Icon -->
<link rel="stylesheet"
	href="fonts/material-icon/css/material-design-iconic-font.min.css">

<!-- Main css -->
<link rel="stylesheet" href="${root }/res/css/sign.css">
</head>
<body>

	<div class="main">
		<section class="sign-in">
			<div class="container">
				<div class="signin-content">
					<div class="signin-image">
						<figure>
							<img src="${root }/res/images/find.png" alt="sing up image" style="margin-top:100px;">
						</figure>
						<a href="${root }/member/signup" class="signup-image-link">Create an account</a>
					</div>

					<div class="signin-form" style="margin-top: 75px;">
						<h2 class="form-title" style="font-size:25px;]">비밀번호 찾기</h2>
						<form action="${root }/member/find" method="POST" class="register-form" id="login-form">
							<div class="form-group">
								<label for="id"></label> 
								<input type="text" name="id" id="id" 
									placeholder="아이디을 입력하세요." />
							</div>
							<div class="form-group">
								<label for="email"></label> 
								<input type="text" name="email" id="email" 
									placeholder="이메일을 입력하세요." />
							</div>
							<div class="form-group form-button">
								<input type="submit"  style="width : 90%; height : 7%; background:orange; font-color:white;" name="signin" id="signin"
									class="form-submit" value="비밀번호로 찾기" />
							</div>
						</form>
					</div>
				</div>
			</div>
		</section>

	</div>

	<!-- JS -->
	<script src="../vendor/jquery/jquery.min.js"></script>
	<script src="../res/js/main.js"></script>
</body>
<!-- This templates was made by Colorlib (https://colorlib.com) -->
</html>