<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<%@page import="com.javaclass.domain.ReserveVO" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>일정표</title>
    <link rel="icon" 
      type="image/png" 
      href="https://findicons.com/files/icons/2805/squareplex/512/google_calendar.png">
    
        <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <link rel="stylesheet" href="{{ asset('css/style.css') }}">
         <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootswatch@4.5.2/dist/flatly/bootstrap.min.css"
              crossorigin="anonymous">
        

        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/fullcalendar@5.7.2/main.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"
              integrity="sha512-iBBXm8fW90+nuLcSKlbmrPcLa0OT92xO1BIsZ+ywDWZCvqsWgccV3gFoRBv0z+8dLJgyAHIhR35VZc2oM/gI1w=="
              crossorigin="anonymous" referrerpolicy="no-referrer"/>
        
        <link href='https://cdn.jsdelivr.net/npm/@fortawesome/fontawesome-free@5.13.1/css/all.css' rel='stylesheet'>
        <link rel="stylesheet"
              href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datetimepicker/4.17.47/css/bootstrap-datetimepicker.css"
              integrity="sha512-63+XcK3ZAZFBhAVZ4irKWe9eorFG0qYsy2CaM5Z+F3kUn76ukznN0cp4SArgItSbDFD1RrrWgVMBY9C/2ZoURA=="
              crossorigin="anonymous" referrerpolicy="no-referrer"/>

    <script src='https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.22.2/moment.min.js'></script>

    <script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
   
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datetimepicker/4.17.47/js/bootstrap-datetimepicker.min.js"
            integrity="sha512-GDey37RZAxFkpFeJorEUwNoIbkTwsyC736KNSYucu1WJWFK9qTdzYub8ATxktr6Dwke7nbFaioypzbDOQykoRg=="
            crossorigin="anonymous" referrerpolicy="no-referrer"></script>
     
    <script>
    document.addEventListener('DOMContentLoaded', function() {
        var calendarEl = document.getElementById('calendar');
            var calendar = new FullCalendar.Calendar(calendarEl, {
                customButtons: { 
                     myCustomButton: { 
                         text: '일정추가', 
                         click: function(event) { 
                           var url = "ReservePopup.do";
                           var name = "ReservePopup";
                           var option ="width = 600, height = 700 left = 100, top = 50, location = no";
                           window.open(url,name,option)
                         } 
                     },
                     myCustomButton2: { 
                         text: '일정수정', 
                         click: function(event) { 
                           var url = "ReserveUpdatePopup.do";
                           var name = "ReserveUpdatePopup";
                           var option ="width = 600, height = 700 left = 100, top = 50, location = no";
                           window.open(url,name,option)
                         } 
                     },
                     myCustomButton3: { 
                         text: '일정삭제', 
                         click: function(event) { 
                           var url = "deleteReserve.do";
                           var name = "deleteReserve";
                           var option ="width = 600, height = 700 left = 100, top = 50, location = no";
                           window.open(url,name,option)
                         } 
                     }
             },
             headerToolbar: {
                 left: 'prev,next today,dayGridMonth',
                 center: 'title',
                 right: 'listWeek,myCustomButton,myCustomButton2,myCustomButton3'
             },
            locale: 'ko',
            
              dayCellContent: function(info) {
                   var number = document.createElement("a");
                   number.classList.add("fc-daygrid-day-number");
                   number.innerHTML = info.dayNumberText.replace("일",'');
                   
                   // 시간을 함께 표시하도록 추가
               var time = document.createElement("div");
               time.classList.add("fc-daygrid-event-time");
               time.textContent = "시간을 표시하고 싶은 내용"; // 원하는 시간 형식을 여기에 추가

               var container = document.createElement("div");
               container.appendChild(number);
               container.appendChild(time);
                   
                   if(info.view.type === "dayGridMonth")
                      {
                      return{html: number.outerHTML};
                      }
                   return{domNodes:[]};   
                   },
                   selectable: true,
                   droppable: true,
                   
                   eventAdd: function () { // 이벤트가 추가되면 발생하는 이벤트
                       console.log()
                   },
                   eventAdd: function(info) {
                       // info.event.title, info.event.start, info.event.end 등의 정보를 활용하여 서버로 데이터 전송
                       // 서버에서 데이터를 처리한 후, 성공적으로 처리되면 아래와 같이 FullCalendar를 업데이트할 수 있습니다.
                       calendar.refetchEvents();
                   },
            // Your calendar configuration options
            events: [
                // Iterate over eventList and generate event objects here
                <c:forEach var="event" items="${eventList}">
                {
                    title: '<c:out value="${event.title}"/>',
                    start: '<c:out value="${event.startdate}"/>',
                    end: '<c:out value="${event.enddate}"/>',
                },
                </c:forEach>
            ]
                              
        });
        
        calendar.render();
    });
</script>
</head>
<body>
    <div class="card mb-4 mt-3 p-2">
        <div id='calendar'></div>
    </div>

</body>
 
    <script src="https://cdn.jsdelivr.net/npm/fullcalendar@5.7.2/main.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/fullcalendar@5.7.2/locales-all.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-Piv4xVNRyMGpqkS2by6br4gNJ7DXjqk09RmUpJ8jgGtD7zP9yug3goQfGII0yAns"
            crossorigin="anonymous"></script>

</html>