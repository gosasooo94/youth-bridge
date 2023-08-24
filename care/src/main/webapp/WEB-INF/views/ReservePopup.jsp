<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.HashMap" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>일정 추가</title>

<link rel="styleet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<link href="resources/css/schedule.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.css" integrity="sha512-aOG0c6nPNzGk+5zjwyJaoRUgCdOrfSDhmMID2u4+OIslr0GjpLKo7Xm0Ao3xmpM4T8AmIouRkqwj1nrdVsLKEQ==" crossorigin="anonymous" referrerpolicy="no-referrer" />

<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="//code.jquery.com/jquery-3.2.1.min.js"></script>
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script src="resources/js/schedule.js"></script>
<script src="resources/js/cate.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js" integrity="sha512-894YE6QWD5I59HgZOGReFYm4dnWc1Qt5NtvYSaNcOP+u1T9qYdvdihz0PPSiiqn/+/3e7Jo4EaG7TubfWGUrMQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js" integrity="sha512-uto9mlQzrs59VwILcLiRYeLKPPbS/bT71da/OEBYEwcdNUk8jYIy+D176RYoop1Da+f9mvkYrmj5MCLZWEtQuA==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
  <script src="resources/js/picker.js"></script>
  <!-- datetimepicker plug -->
  <link rel="stylesheet" type="text/css" href="resources/css/jquery.datetimepicker.css"/ >
<script src="resources/js/jquery.js"></script>
<script src="resources/js/jquery.datetimepicker.full.min.js"></script>
<!-- datetimepicker 한국어 플러그인 -->
<script src="resources/js/datepicker-ko-KR.js"></script>
<!-- 빈칸이 있으면 그 칸에 대한 경고 및 입력시 확인시켜주는 경고창 -->
<script src="resources/js/reservePopupAlert.js"></script>
<!-- 일정 비동기로 체크해주는 js -->
<script src="resources/js/dateCheck.js"></script>
<!-- datetimepicker 한국어로 변경 -->
<script>
$.datetimepicker.setLocale('kr');
</script>
<!-- reserve.jsp에서 넘어온값 -->
<%
String sdsmemcode = request.getParameter("sdsmemcode");
// 상담사 번호(sdsmemcode)을 이용하여 처리
int memcode = (Integer)session.getAttribute("MemLogin");
%> 
<script>

 </script>
</head>
<body>

<div class = "group" id = "popupGroup">
   <div class = "group-head">
      <h1 class = "zTree-h1"> 일정 추가 </h1>
   </div>
   
   <div class = "group-body">
   <%-- ReserveController참고하면 form에 대한 부분 이해 가능(입력) --%>
   <form id = "scheduleData" method="post" action="insertReserve.do">
        <div>
         <!--  <h3 class = "zTree-h3"> 회원코드 상담사이름</h3> -->
          <%-- hidden으로 숨겨놓음 가끔 고장난거 같으면 한번 직접 입력해주면 고쳐짐 --%>
          <input type="hidden" id="memcode" name="memcode" value="${MemLogin }" /><br/>
          <input type="hidden" id="sdsmemcode" name="sdsmemcode" value="<%=sdsmemcode %>" />
        </div>
      <br/>
      <div class = "top">
         <input class="subject" id="title" type="text" name="mctitle" placeholder="내용을 입력해주세요.(25자)">
      </div>
      
      <div>
      <p class="label" >상담분류</p>
      <input class="insert" type="hidden" name="mccate" id="cate"  />
      <input id="cate" type="radio" name="mccate1" value="대인관계 문제 해결" class="radio" onclick="getCate(event);" /><label for="대인관계 문제 해결">대인관계 문제 해결</label><br/>
      <input id="cate" type="radio" name="mccate1" value="스트레스와 불안" class="radio" onclick="getCate(event);" /><label for="스트레스와 불안">스트레스와 불안</label><br/>
      <input id="cate" type="radio" name="mccate1" value="진로에 대한 고민" class="radio" onclick="getCate(event);" /><label for="진로에 대한 고민">진로에 대한 고민</label><br/>
      <input id="cate" type="radio" name="mccate1" value="자존감 하락" class="radio" onclick="getCate(event);" /><label for="자존감 하락">자존감 하락</label><br/>
      </div>    
      
      <div class = "domain">
         <h3 class = "zTree-h3"> 시작 </h3>
      </div>
      
      <div class = "domain">
         <input id="datetimepicker" class="existing-start-dates" value="" autocomplete="off" name="startdate" type="text" >
         <span id="datetimepickerResult" style="width:150px;color:red"></span>
      </div>
      
      <div class = "domain">
         <h3 class = "zTree-h3"> 종료 </h3>
      </div>
      
      <div class = "domain">
         <input id="datetimepicker1" class="existing-end-dates" autocomplete="off" name="enddate" type="text" >
         <span id="datetimepicker1Result" style="width:150px;color:red"></span>
      </div>
      
      <input class="ok-button" id="btn" onclick="alertClick()" type="submit" value="확인"></input>
      
   </form>
   
      
   </div>
</div>

</body>
</html>