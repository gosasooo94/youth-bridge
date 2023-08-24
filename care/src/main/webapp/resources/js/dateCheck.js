$(function(){
$('.existing-start-dates').change(function(){
        // 로그인 프로세스 호출
        $.ajax({
            type: 'post',         // 전송방식
            async: true,         // 비동신통신
            url:'dateCheck.do',      // **** 요청
            contentType:'application/x-www-form-urlencoded;charset=UTF-8',  // 한글
            //data: id="+$(".existing-start-dates").val(),        // 클라이언트에서 보내는 데이타
            data : { startdate: $(".existing-start-dates").val() },
            success:function(result){            // 성공하면 함수연결
            console.log(result)
               //alert("resultData = "+result)
             $('#datetimepickerResult').html(result);               
          }
        });
   })
   

   })