(function ($) {
"use strict";
// TOP Menu Sticky
$(window).on('scroll', function () {
	var scroll = $(window).scrollTop();
	if (scroll < 400) {
    $("#sticky-header").removeClass("sticky");
    $('#back-top').fadeIn(500);
	} else {
    $("#sticky-header").addClass("sticky");
    $('#back-top').fadeIn(500);
	}
});


//include/error
$(document).ready(function() {
	var msg = $("#errorMsg").text();
	console.log(msg);
	if (msg == "회원가입을 축하드립니다.") {
		alert("Please log in. \n You will be taken to the login page.");
		$(location).attr("href", "/happyhouse/Login/login");
	} else {
		alert("The ID exists or the password does not match.\n check please.");
		$(location).attr("href", "/happyhouse/member/signup");
	}
});

})(jQuery);	