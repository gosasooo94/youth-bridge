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

    