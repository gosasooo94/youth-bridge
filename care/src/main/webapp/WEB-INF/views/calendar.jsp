<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import= "com.javaclass.domain.ScheduleVO" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%
	@SuppressWarnings("unchecked")
	List<ScheduleVO> list = (ArrayList<ScheduleVO>)request.getAttribute("showSchedule");
System.out.println("Size of showSchedule attribute: " + (list != null ? list.size() : "null"));
%>
<script type="text/javascript" src="resources/js/schedule.js"></script>
<script>
document.addEventListener('DOMContentLoaded', function(){
	
	var calendarEl = document.getElementById('calendar');
	
	var calendar = new FullCalendar.Calendar(calendarEl, {
		plugins: ['interaction', 'dayGrid', 'timeGrid', 'list'],
		header: {
			left: 'prev,next today',
			center: 'title',
			right: 'dayGridMonth,timeGridWeek,timeGridDay,listMonth'
		},
		locale : "ko",
		navLinks: true, // can click day/week names to navigate views
		businessHours: true, // display business hours
		editable: true,
		events: [
<% 
	if(list == null){
		out.println("No schedule data available");
	} else {
	for (int i=0; i<list.size(); i++) {
		ScheduleVO vo = (ScheduleVO)list.get(i);
%>
	{
		title : '<%= vo.getSubject() %>',
		start : '<%= vo.getStartDate() %>',
		end : '<%= vo.getEndDate() %>'
	},
<%
	}
	}
%>
		{
			title : 'default',
			start : "2019-01-01",
			end : "2019-01-01"
		}
		]
	});
	
	calendar.render();
});
</script>
</head>
<body>

</body>
</html>