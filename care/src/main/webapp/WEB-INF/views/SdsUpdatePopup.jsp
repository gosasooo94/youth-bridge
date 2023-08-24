<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>일정 수정</title>

<link rel="styleet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<link href="resources/css/schedule.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.css" integrity="sha512-aOG0c6nPNzGk+5zjwyJaoRUgCdOrfSDhmMID2u4+OIslr0GjpLKo7Xm0Ao3xmpM4T8AmIouRkqwj1nrdVsLKEQ==" crossorigin="anonymous" referrerpolicy="no-referrer" />

<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="//code.jquery.com/jquery-3.2.1.min.js"></script>
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-uㅑ.js"></script>
<script src="resources/js/schedule.js"></script>
<script src="resources/js/cate.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js" integrity="sha512-894YE6QWD5I59HgZOGReFYm4dnWc1Qt5NtvYSaNcOP+u1T9qYdvdihz0PPSiiqn/+/3e7Jo4EaG7TubfWGUrMQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js" integrity="sha512-uto9mlQzrs59VwILcLiRYeLKPPbS/bT71da/OEBYEwcdNUk8jYIy+D176RYoop1Da+f9mvkYrmj5MCLZWEtQuA==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
  <script src="resources/js/picker.js"></script>
  <link rel="stylesheet" type="text/css" href="resources/css/jquery.datetimepicker.css"/ >
<script src="resources/js/jquery.js"></script>
<script src="resources/js/jquery.datetimepicker.full.min.js"></script>
<script src="resources/js/datepicker-ko-KR.js"></script>
<script src="resources/js/sdsreservePopupAlert.js"></script>
<script src="resources/js/Sdsdeletealert.js"></script>
<script>
$.datetimepicker.setLocale('kr');
</script>
<%
String srcode = request.getParameter("srcode");
// 상담사 번호(sdsmemcode)을 이용하여 처리
    int sdsmemcode = (Integer)session.getAttribute("sdsmemLogin");
%> 
</head>
<body>
  <div class = "group-head">
      <h1 class = "zTree-h1"> 일정 수정 </h1>
   </div>
   
   <div class = "group-body">
   <%-- ReserveController참고하면 form에 대한 부분 이해 가능(수정) --%>
   <form id = "scheduleData" action="updateSdsReserve.do" method="POST">
      <div>
      <p class="label" >일정코드</p>
      <input type="text" name="srcode" value="<%=srcode %>" />
      <input type="text" name="sdsmemcode" value="${sdsmemLogin}" />
      </div>
      <br/>
      
      <div class = "top">
         <input class="subject" id="sctitle" type="text" name="sctitle" placeholder="내용을 입력해주세요.(25자)">
      </div>
      <br/>

      <br/>
      <div class = "domain">
         <h3 class = "zTree-h3"> 시작 </h3>
      </div>
      
      <div class = "domain">
         <input id="datetimepicker" autocomplete="off" name="sdsstartdate" type="text" >
      </div>
      
      <div class = "domain">
         <h3 class = "zTree-h3"> 종료 </h3>
      </div>
      
      <div class = "domain">
         <input id="datetimepicker1" autocomplete="off" name="sdsenddate" type="text" >
      </div>
      
      <input class="ok-button" id="btn" onclick="alertClick()" type="submit" value="수정하기"></input>
      
   </form>
   <br/>
   <br/>
   <%-- ReserveController참고하면 form에 대한 부분 이해 가능(삭제) --%>
   <form id = "scheduleData1" action="deleteSdsReserve.do" method="POST">
   		<input type="hidden" name="srcode" value="<%=srcode %>" />
   		<input class="ok-button" id="btn2" onclick="alertClick()" type="submit" value="삭제하기"></input>
   </form>
   </div>


</body>



</html>