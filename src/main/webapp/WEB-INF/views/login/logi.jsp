<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="root" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Sign Up</title>

<!-- Font Icon -->
<link rel="stylesheet"
	href="../res/fonts/material-icon/css/material-design-iconic-font.min.css">

<!-- Main css -->
<link rel="stylesheet" href="../res/css/sign.css">
<link rel="stylesheet" href="../res/css/login.css">
</head>
<title>Login V1</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- CSS here -->
<link rel="stylesheet" href="../res/css/bootstrap.min.css">
<link rel="stylesheet" href="../res/css/owl.carousel.min.css">
<link rel="stylesheet" href="../res/css/magnific-popup.css">
<link rel="stylesheet" href="../res/css/font-awesome.min.css">
<link rel="stylesheet" href="../res/css/themify-icons.css">
<link rel="stylesheet" href="../res/css/nice-select.css">
<link rel="stylesheet" href="../res/css/flaticon.css">
<link rel="stylesheet" href="../res/css/gijgo.css">
<link rel="stylesheet" href="../res/css/animate.css">
<link rel="stylesheet" href="../res/css/slick.css">
<link rel="stylesheet" href="../res/css/slicknav.css">
<link rel="stylesheet"
	href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.11.2/themes/smoothness/jquery-ui.css">

<!-- script -->
<link href="https://cdn.jsdelivr.net/npm/select2@4.1.0-beta.1/dist/css/select2.min.css" rel="stylesheet" />
<script src="https://cdn.jsdelivr.net/npm/select2@4.1.0-beta.1/dist/js/select2.min.js"></script>
</head>
<body>
	<p class="tip">Click on button in image container</p>
	<div class="cont">
		<div class="form sign-in">
			<h2>Welcome back,</h2>
			<label> <span>Email</span> <input type="email" />
			</label> <label> <span>Password</span> <input type="password" />
			</label>
			<p class="forgot-pass">Forgot password?</p>
			<button type="button" class="submit">Sign In</button>
			<button type="button" class="fb-btn">
				Connect with <span>facebook</span>
			</button>
		</div>
		<div class="sub-cont">
			<div class="img">
				<div class="img__text m--up">
					<h2>New here?</h2>
					<p>Sign up and discover great amount of new opportunities!</p>
				</div>
				<div class="img__text m--in">
					<h2>One of us?</h2>
					<p>If you already has an account, just sign in. We've missed
						you!</p>
				</div>
				<div class="img__btn">
					<span class="m--up">Sign Up</span> <span class="m--in">Sign
						In</span>
				</div>
			</div>
			<div class="form sign-up">
				<h2>Time to feel like home,</h2>
				<label> <span>Name</span> <input type="text" />
				</label> <label> <span>Email</span> <input type="email" />
				</label> <label> <span>Password</span> <input type="password" />
				</label>
				<button type="button" class="submit">Sign Up</button>
				<button type="button" class="fb-btn">
					Join with <span>facebook</span>
				</button>
			</div>
		</div>
	</div>

	<a href="https://dribbble.com/shots/3306190-Login-Registration-form"
		target="_blank" class="icon-link"> <img
		src="http://icons.iconarchive.com/icons/uiconstock/socialmedia/256/Dribbble-icon.png">
	</a>
	<a href="https://twitter.com/NikolayTalanov" target="_blank"
		class="icon-link icon-link--twitter"> <img
		src="https://cdn1.iconfinder.com/data/icons/logotypes/32/twitter-128.png">
	</a>
	
	<script type="text/javascript" async=""
		src="https://www.google-analytics.com/analytics.js"></script>
	<script type="text/javascript" async="" src="https://cdnjs.cloudflare.com/ajax/libs/tilt.js/1.0.3/tilt.jquery.min.js"></script>
	<script type="text/javascript" async="" src="https://unpkg.com/@popperjs/core@2"></script>
	<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
	<script src="../res/js/vendor/bootstrap/js/bootstrap.min.js"></script>
	<script>
		$('.js-tilt').tilt({
			scale : 1.1
		})
	</script>

	<script async=""
		src="https://www.googletagmanager.com/gtag/js?id=UA-23581568-13"></script>
	<script>
		window.dataLayer = window.dataLayer || [];
		function gtag() {
			dataLayer.push(arguments);
		}
		gtag('js', new Date());

		gtag('config', 'UA-23581568-13');
		document.querySelector('.img__btn').addEventListener('click', function() {
		  document.querySelector('.cont').classList.toggle('s--signup');
		});
	</script>

	<script src="js/main.js"></script>


</body>
</html>