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
<script src="resources/js/reservePopupAlert.js"></script>
<script>
$.datetimepicker.setLocale('kr');
</script>
<script>



 </script>
</head>
<body>

<div class = "group" id = "popupGroup">
   <div class = "group-head">
      <h1 class = "zTree-h1"> 일정 추가 </h1>
   </div>
   
   <div class = "group-body">
   <form id = "scheduleData" method="post" action="insertReserve.do">
        <div>
          <h3 class = "zTree-h3"> 회원코드 </h3>
           <input type="text" id="memcode" name="memcode" />
        </div>
      <div>
      <p class="label" >상담분류</p>
      <input class="insert" type="hidden" name="cate" id="cate"  />
      <input id="cate" type="radio" name="cate" value="대인관계 문제 해결" class="radio" onclick="getCate(event);" /><label for="대인관계 문제 해결">대인관계 문제 해결</label><br/>
      <input id="cate" type="radio" name="cate" value="스트레스와 불안" class="radio" onclick="getCate(event);" /><label for="스트레스와 불안">스트레스와 불안</label><br/>
      <input id="cate" type="radio" name="cate" value="진로에 대한 고민" class="radio" onclick="getCate(event);" /><label for="진로에 대한 고민">진로에 대한 고민</label><br/>
      <input id="cate" type="radio" name="cate" value="자존감 하락" class="radio" onclick="getCate(event);" /><label for="자존감 하락">자존감 하락</label><br/>
      </div>    
      <br/>
      <div class = "top">
         <input class="subject" id="title" type="text" name="title" placeholder="내용을 입력해주세요.(25자)">
      </div>
      
      <div class = "domain">
         <h3 class = "zTree-h3"> 시작 </h3>
      </div>
      
      <div class = "domain">
         <!-- <input class = "datepicker" id = "startDate" type = "text" name = "startDate" id = "startDate"> -->
         <input id="datetimepicker" autocomplete="off" name="startdate" type="text" >
      </div>
      
      <div class = "domain">
         <h3 class = "zTree-h3"> 종료 </h3>
      </div>
      
      <div class = "domain">
         <!-- <input class = "datepicker" id = "endDate" type = "text" name = "endDate" id = "endDate" > -->
         <input id="datetimepicker1" autocomplete="off" name="enddate" type="text" >
      </div>
      
      <input class="ok-button" id="btn" onclick="alertClick()" type="submit" value="확인"></input>
      
   </form>
   
      
   </div>
</div>

</body>



</html>