<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>일정 추가</title>

<link rel="styleet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<link href="resources/css/schedule.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.css" integrity="sha512-aOG0c6nPNzGk+5zjwyJaoRUgCdOrfSDhmMID2u4+OIslr0GjpLKo7Xm0Ao3xmpM4T8AmIouRkqwj1nrdVsLKEQ==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<link rel="stylesheet" href="resources/css/ReserveUpdatePopup.css">
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
<script>
$.datetimepicker.setLocale('kr');
</script>
<%
// 상담사 이름(sdsname)을 이용하여 처리
    int memcode = (Integer)session.getAttribute("MemLogin");
String sdsid = (String)session.getAttribute("SdsLogin");
int sdsmemcode = (Integer)session.getAttribute("sdsmemLogin");
%> 

</head>
<body>

<div class = "group" id = "popupGroup">
   <div class = "group-head">
      <h1 class = "zTree-h1"> 일정 추가 </h1>
   </div>
   
   <div class = "group-body">
   <%-- ReserveController참고하면 form에 대한 부분 이해 가능(입력) --%>
   <form id = "scheduleData" method="post" action="insertSdsReserve.do">
        <div>
          <%-- hidden으로 숨겨놓음 가끔 고장난거 같으면 한번 직접 입력해주면 고쳐짐 --%>
         <input type="hidden" id="sdsmemcode" name="sdsmemcode" value="<%=sdsmemcode %>" />
        </div>
      <br/>
      <div class = "domain">
         <input class="subject" id="title" type="text" name="sctitle" placeholder="일정을 입력해주세요.(25자)">
      </div>
      
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
      
      <input class="ok-button" id="btn" onclick="alertClick()" type="submit" value="확인"></input>
      
   </form>
   
      
   </div>
</div>

</body>



</html>