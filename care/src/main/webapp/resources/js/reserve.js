document.addEventListener('DOMContentLoaded', function () {
        var calendarEl = document.getElementById('calendar');


        var calendar = new FullCalendar.Calendar(calendarEl, {
            locale: 'fr',
            eventDisplay: 'block',
            firstDay: 1,

            
            headerToolbar: {
                left: 'prev,next today',
                center: 'title',
               // right: 'dayGridMonth,timeGridWeek,timeGridDay'
               right: ''
            },
             events: [
      {
        title: '하루종일',
        start: '2023-08-10'
      },
      {
        title: 'Long Event',
        start: '2023-08-07',
        end: '2023-08-10'
      },
      {
        groupId: '999',
        title: 'Repeating Event',
        start: '2023-08-09T16:00:00'
      },
      {
        groupId: '999',
        title: 'Repeating Event',
        start: '2023-08-16T16:00:00'
      },
      {
        title: 'Conference',
        start: '2023-08-11',
        end: '2023-08-13'
      },
      {
        title: 'Meeting',
        start: '2023-08-12T10:30:00',
        end: '2023-08-12T12:30:00'
      },
      {
        title: 'Lunch',
        start: '2023-08-12T12:00:00'
      },
      {
        title: 'Meeting',
        start: '2023-08-12T14:30:00'
      },
      {
        title: 'Birthday Party',
        start: '2023-08-13T07:00:00'
      },
      {
        title: 'Click for Google',
        url: 'https://google.com/',
        start: '2023-08-28'
      }
    ],
            locale: 'ko',
            editable: false,
            dayCellContent: function(info) {
				var number = document.createElement("a");
				number.classList.add("fc-daygrid-day-number");
				number.innerHTML = info.dayNumberText.replace("일",'');
				if(info.view.type === "dayGridMonth")
					{
					return{html: number.outerHTML};
					}
				return{domNodes:[]};	
            },
            droppable: false, // this allows things to be dropped onto the calendar
            eventClick: function (el) {
                el.jsEvent.preventDefault();
                $("#showEventModal").modal('show');
                $("#showEventModal").on('shown.bs.modal', function (e) {
                    $('#loading_zone').hide();
                    $('#target_zone').show();
                });
                $("#target_zone").load(decodeURIComponent( el.event.id));

                console.log($("#target_zone"));
            }
        });

        calendar.render();

    });

    