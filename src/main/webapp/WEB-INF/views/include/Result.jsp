<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="root" value="${pageContext.request.contextPath}" />
<!doctype html>
<link rel="stylesheet" href="${root}/res/css/sign.css">
</script>
<head>
<title>회원가입성공</title>
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>HappyHouse</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">
</head>
<body>
	<p id="errorMsg">${msg}</p>
<!-- JS -->
	<script src="../vendor/jquery/jquery.min.js"></script>
	<script src="../res/js/Error.js"></script>
</body>
</html>