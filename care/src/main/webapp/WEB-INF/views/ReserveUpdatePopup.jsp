<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>일정 수정 및 삭제</title>

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
  <!-- datetimepicker plug -->
  <link rel="stylesheet" type="text/css" href="resources/css/jquery.datetimepicker.css"/ >
<script src="resources/js/jquery.js"></script>
<script src="resources/js/jquery.datetimepicker.full.min.js"></script>
<!-- datetimepicker 한국어 플러그인 -->
<script src="resources/js/datepicker-ko-KR.js"></script>
<!-- 빈칸이 있으면 그 칸에 대한 경고 및 입력시 확인시켜주고 수정되었다고 알려주는 경고창 -->
<script src="resources/js/reservePopupAlert.js"></script>
<!-- 삭제하면 알려주는 경고창 -->
<script src="resources/js/deletealert.js"></script>
<script>
$.datetimepicker.setLocale('kr');
</script>
<!-- reserve.jsp에서 넘어온값 -->
<%
String mrcode = request.getParameter("mrcode");
String sdsmemcode = request.getParameter("sdsmemcode");
// 상담사 번호(sdsmemcode)을 이용하여 처리
    int memcode = (Integer)session.getAttribute("MemLogin");
%> 
</head>
<body>

<div class = "group" id = "popupGroup">
   <div class = "group-head">
      <h1 class = "zTree-h1"> 일정 수정 </h1>
   </div>
   
   <div class = "group-body">
   <%-- ReserveController참고하면 form에 대한 부분 이해 가능(수정) --%>
   <form id = "scheduleData" action="updateReserve.do" method="POST">
      <div>
      <p class="label" >일정코드</p>
      <input type="hidden" name="mrcode" value="<%=mrcode %>" />
      <input type="hidden" name="memcode" value="${MemLogin}" />
      </div>
      <br/>
      <div class = "top">
         <input class="subject" id="title" type="text" name="mctitle" placeholder="내용을 입력해주세요.(25자)">
      </div>
      <br/>
      <div>
      <p class="label" >상담분류</p>
      <input class="insert" type="text" name="mccate" id="cate"  />
      <input id="cate" type="radio" name="mccate1" value="대인관계 문제 해결" class="radio" onclick="getCate(event);" /><label for="대인관계 문제 해결">대인관계 문제 해결</label><br/>
      <input id="cate" type="radio" name="mccate1" value="스트레스와 불안" class="radio" onclick="getCate(event);" /><label for="스트레스와 불안">스트레스와 불안</label><br/>
      <input id="cate" type="radio" name="mccate1" value="진로에 대한 고민" class="radio" onclick="getCate(event);" /><label for="진로에 대한 고민">진로에 대한 고민</label><br/>
      <input id="cate" type="radio" name="mccate1" value="자존감 하락" class="radio" onclick="getCate(event);" /><label for="자존감 하락">자존감 하락</label><br/>
      </div>   
      <br/>
      
      <div class = "domain">
         <h3 class = "zTree-h3"> 시작 </h3>
      </div>
      
      <div class = "domain">
         <input id="datetimepicker" autocomplete="off" name="startdate" type="text" >
      </div>
      
      <div class = "domain">
         <h3 class = "zTree-h3"> 종료 </h3>
      </div>
      
      <div class = "domain">
         <input id="datetimepicker1" autocomplete="off" name="enddate" type="text" >
      </div>
      
      <input class="ok-button" id="btn" onclick="alertClick()" type="submit" value="수정하기"></input>
      
   </form>
   <br/>
   <br/>
   <%-- ReserveController참고하면 form에 대한 부분 이해 가능(삭제) --%>
   <form id = "scheduleData1" action="deleteReserve.do" method="POST">
   		<input type="hidden" name="mrcode" value="<%=mrcode %>" />
   		<input class="ok-button" id="btn2" onclick="alertClick()" type="submit" value="삭제하기"></input>
   </form>
   </div>
</div>

</body>



</html>