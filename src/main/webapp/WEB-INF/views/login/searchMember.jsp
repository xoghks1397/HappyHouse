<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="root" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Update Your Information</title>
<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script type="text/javascript">
$(function(){
	$("#hint1").click(function(){
		var name=$("#text").val();
		$.ajax({
			url : "../member/searchAjax",
			type : "get",
			data : { name : name },
			success : function(data){
				 console.log(data);
				$("#result").html("<h4>"+data+"</h4>");
			},
			error : function(xhr,status,msg){
				alert("error: "+msg);
			}
		});
	});

});
</script>

<!-- Font Icon -->
<link rel="stylesheet"
	href="../res/fonts/material-icon/css/material-design-iconic-font.min.css">

<!-- Main css -->
<link rel="stylesheet" href="../res/css/sign.css">
</head>

<style>
.firma-ara {
	padding-bottom: 100px;
	padding-top: 100px;
}

.form-arka-plan {
	/* background-image:
		url("https://cdn.filepicker.io/api/file/1WxRtkAQG5h70aoPQdGA/convert?format=jpeg&quality=50"); */
	background-position: center;
	background-repeat: no-repeat;
	background-size: cover;
	background-position: center;
}

.acik-renk-form {
	background: rgba(255, 255, 255, 0.58);
}

.siyah-cerceve {
	/* 	-webkit-text-fill-color: white; */
	-webkit-text-stroke-width: 1px;
	-webkit-text-stroke-color: black;
}
</style>

<body>


	<!------ Include the above in your HEAD tag ---------->

	<section class="search-banner text-white py-3 form-arka-plan"
		id="search-banner">
	
		<div class="container py-5 my-5">
			<div class="row text-center pb-4">
				<div class="col-md-12">
					<h2 class="siyah-cerceve">íì ì ë³´ ê²ì</h2>
				</div>
			</div>
			<div class="row">
				<div class="col-md-12">
					<div class="card acik-renk-form">
						<div class="card-body">
							<p class="font-weight-light text-dark">ì íí´ì ì°¾ì¼ì¸ì.</p>
							<div class="row">

								<div class="col-md-4">
									<div class="form-group ">
										<select id="iller" class="form-control">
											<option selected>ì ííì­ìì¤</option>
											<option>ìì´ëë¡ ê²ì</option>
										</select>
									</div>
								</div>

					

							</div>
							<p class="font-weight-light text-dark">ìë ¥</p>
							<div class="row">
								<div class="col-md-9">
									<div class="form-group ">
										<input type="text" class="form-control" name="text" id="text"
											placeholder="ì ííì  ì¹´íê³ ë¦¬ì ë§ì¶ì´, ì ë³´ë¥¼ ìë ¥íì¸ì">
									</div>
								</div>
								
								<div class="col-md-3">
									<input style="padding-right:3px;" id="hint1" type="button" class="btn btn-warning  pl-5 pr-5" value="ì ë³´ê²ì">
								</div>
								<div id="result" class="font-weight-light text-dark" style="magin:auto;">
								
								</div>
						
							</div>
						</div>
					</div>

				</div>
			</div>
		</div>
		
	</section>
	
</body>
<!-- This templates was made by Colorlib (https://colorlib.com) -->
</html>