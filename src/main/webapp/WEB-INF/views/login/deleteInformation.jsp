<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="root" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Delete Your Information</title>

    <!-- Font Icon -->
    <link rel="stylesheet" href="../res/fonts/material-icon/css/material-design-iconic-font.min.css">

    <!-- Main css -->
    <link rel="stylesheet" href="../res/css/sign.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
</head>
<body>

    <div class="main">

        <!-- Sign up form -->
            <div class="container">
                <div class="signup-content">
                    <div class="signup-form">
                        <h2 class="form-title">탈퇴하시겠습니까?</h2>
                        <button type="button" class="btn btn-outline-danger">&nbsp예 </button>
                        <button type="button" class="btn btn-outline-primary">아니오</button>
                    </div>
                </div>
            </div>
    </div>

    <!-- JS -->
    <script src="../vendor/jquery/jquery.min.js"></script>
    <script src="../res/js/main.js"></script>
    <a href="#" class="demo"><span class="glyphicon glyphicon-remove"></span>
</a>
</body><!-- This templates was made by Colorlib (https://colorlib.com) -->
</html>