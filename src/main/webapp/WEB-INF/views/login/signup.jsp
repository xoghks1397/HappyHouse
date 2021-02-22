<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="root" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html class="no-js" lang="zxx">
<head>
<meta charset="UTF-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Sign Up</title>
<!-- Font Icon -->
<link rel="stylesheet"
	href="${root }/res/fonts/material-icon/css/material-design-iconic-font.min.css">

<!-- Main css -->
<link rel="stylesheet" href="${root}/res/css/sign.css">
</head>
<body>

	<div class="main">

		<!-- Sign up form -->
		<section class="signup">
			<div class="container">
				<div class="signup-content">
					<div class="signup-form">
						<h2 class="form-title">Sign up</h2>
						<form action='${root}/member/register' method='post' id = "signupform">
							<div class="form-group">
								<label for="name"><i
									class="zmdi zmdi-account material-icons-name"></i></label> <input
									type="text" name="name" id="name" placeholder="Your Name" />
							</div>
							<div class="form-group">
								<label for="email"><i class="zmdi zmdi-email"></i></label> <input
									type="email" name="email" id="email" placeholder="Your Email" />
							</div>
							<div class="form-group">
								<label for="address"><i class="zmdi zmdi-home"></i></label>
								<input type="text" name="address" id="address"
									placeholder="address" />
							</div>
							<div class="form-group">
								<label for="pass"><i class="zmdi zmdi-lock"></i></label> <input
									type="password" name="pass" id="pass" placeholder="Password" />
							</div>
							<div class="form-group">
								<label for="repass"><i class="zmdi zmdi-lock-outline"></i></label>
								<input type="password" name="repass" id="repass"
									placeholder="Repeat your password" />
							</div>
							<div class="form-group">
								<input type="checkbox" name="agree" id="agree"
									class="agree-term" /> <label for="agree"
									class="label-agree-term"><span><span></span></span>I
									agree all statements in <a href="#" class="term-service">Terms
										of service</a></label>
							</div>
							<div class="form-group form-button">
							<button type="button" id="signupBtn" class="btn btn-summit">Register</button>
							</div>
						</form>
					</div>
					<div class="signup-image">
						<figure>
							<img src="${root }/res/images/signup-image.jpg" alt="sing up image">
						</figure>
						<a href="${root}/" class="signup-image-link">I already have an ID</a>
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