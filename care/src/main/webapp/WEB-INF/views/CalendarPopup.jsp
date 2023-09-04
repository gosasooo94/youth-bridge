<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>일정 추가</title>

<link rel="styleet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<link href="resources/css/schedule.css">

<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="//code.jquery.com/jquery-3.2.1.min.js"></script>
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-uㅑ.js"></script>
<script src="resources/js/schedule.js"></script>

</head>
<body>

<div class = "group" id = "popupGroup">
	<div calss = "group-head">
		<h1 class = "zTree-h1"> 일정 추가 </h1>
	</div>
	
	<div class = "group-body">
	<form id = "scheduleData">
		<div class = "top">
			<input class = "subject" id = "subject" type = "text" name = "subject" placeholder = "일정을 입력해주세요.">
		</div>
		
		<div class = "domain">
			<h3 class = "zTree-h3"> 시작 </h3>
		</div>
		
		<div class = "domain">
			<input class = "date" id = "startDate" type = "text" name = "startDate" id = "startDate">
		</div>
		
		<div class = "domain">
			<h3 class = "zTree-h3"> 종료 </h3>
		</div>
		
		<div class = "domain">
			<input class = "date" id = "endDate" type = "text" name = "endDate" id = "endDate" >
		</div>
		
	</form>
	
		<button class = "ok-button" type = "button" onclick="click_ok()">확인</button>
		
	</div>
</div>

</body>
</html>