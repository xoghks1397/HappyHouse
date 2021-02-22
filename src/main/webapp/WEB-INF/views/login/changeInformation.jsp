<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="root" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html class="no-js" lang="zxx">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Update Your Information</title>

    <!-- Font Icon -->
    <link rel="stylesheet" href="../res/fonts/material-icon/css/material-design-iconic-font.min.css">

    <!-- Main css -->
    <link rel="stylesheet" href="../res/css/sign.css">
</head>
<body>

    <div class="main">

        <!-- Sign up form -->
        <section class="signup">
            <div class="container">
                <div class="signup-content">
                    <div class="signup-form">
                        <h2 class="form-title">Update</h2>
                      	 	<form action='${root}/member/updateInfo' method='post'>
                            <div class="form-group">
                                <label for="name"><i class="zmdi zmdi-account material-icons-name"></i></label>
                                <input type="text" name="name" id="name" value="${member.name}" readonly></input>
                            </div>
                            <div class="form-group">
                                <label for="email"><i class="zmdi zmdi-email"></i></label>
                                <input type="email" name="email" id="email" value="${member.email}"/>
                            </div>
                            <div class="form-group">
                                <label for="address"><i class="zmdi zmdi-home"></i></label>
                                <input type="text" name="address" id="address" value="${member.address}"/>
                            </div>
                            <div class="form-group">
                                <label for="pass"><i class="zmdi zmdi-lock"></i></label>
                                <input type="password" name="pass" id="pass" value="${member.password}"/>
                            </div>
                            <div class="form-group">
                                <label for="repass"><i class="zmdi zmdi-lock-outline"></i></label>
                                <input type="password" name="repass" id="repass" placeholder="Repeat your updating password"/>
                            </div>
                            <div class="form-group">
                                <input type="checkbox" name="agree-term" id="agree-term" class="agree-term" />
                                <label for="agree-term" class="label-agree-term"><span><span></span></span>I agree all statements in  <a href="#" class="term-service">Terms of service</a></label>
                            </div>
                            <div class="form-group form-button">
                                <input type="submit" name="signup" id="signup" class="form-submit" value="Update"/>
                            </div>
                        </form>
                    </div>
                    <div class="signup-image">
                        <figure><img src="../res/images/update.jpg" alt="update image" id="hyuna"></figure>
                    </div>
                </div>
            </div>
        </section>
    </div>

    <!-- JS -->
    <script src="../vendor/jquery/jquery.min.js"></script>
    <script src="../resjs/main.js"></script>
</body><!-- This templates was made by Colorlib (https://colorlib.com) -->
</html>