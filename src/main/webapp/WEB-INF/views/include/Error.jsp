<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="root" value="${pageContext.request.contextPath}" />
<!doctype html>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js"></script>
<script type="text/javascript">
$(document).ready(function() {
	alert("이 페이지는 로그인 후 이용 가능합니다!! \n 로그인 페이지로 이동합니다.");
	$(location).attr("href", "${root}/Login/login");
});
</script>

<head>
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>HappyHouse</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>에러</title>
</head>
<body>
</body>
</html>