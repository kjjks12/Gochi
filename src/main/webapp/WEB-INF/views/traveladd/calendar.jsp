<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html>
<head>
<link rel='stylesheet' type='text/css' href='${pageContext.request.contextPath}/resources/css/fullcalendar.css' />
<link rel='stylesheet' type='text/css' href='${pageContext.request.contextPath}/resources/css/fullcalendar.print.css' media='print' />
<script type='text/javascript' src='${pageContext.request.contextPath}/resources/jquery/jquery-1.5.2.min.js'></script>
<script type='text/javascript' src='${pageContext.request.contextPath}/resources/jquery/jquery-ui-1.8.11.custom.min.js'></script>
<script type='text/javascript' src='${pageContext.request.contextPath}/resources/fullcalendar/fullcalendar.min.js'></script>
    <jsp:include page="/WEB-INF/views/include/include_top_css.jsp" />
    
    
<script type='text/javascript'>

	$(document).ready(function() {
	
	
		/* initialize the external events
		-----------------------------------------------------------------*/
	
		$('#external-events div.external-event').each(function() {
		
			// create an Event Object (http://arshaw.com/fullcalendar/docs/event_data/Event_Object/)
			// it doesn't need to have a start or end
			var eventObject = {
				title: $.trim($(this).text()) // use the element's text as the event title
			};
			
			// store the Event Object in the DOM element so we can get to it later
			$(this).data('eventObject', eventObject);
			
			// make the event draggable using jQuery UI
			$(this).draggable({
				zIndex: 999,
				revert: true,      // will cause the event to go back to its
				revertDuration: 0 , //  original position after the drag
				cursor: "move", //   cursorìµìì ëëê·¸ íë ëì ë§ì°ì¤ í¬ì¸í°ì ëª¨ìì ë³íìí´
				opacity: 0.5 // í¬ëªë ì¤ì 
			});
			
		});
	
	
		/* initialize the calendar
		-----------------------------------------------------------------*/
		
		$('#calendar').fullCalendar({
			header: {
				left: 'prev,next today',
				center: 'title',
				right: 'month,agendaWeek,agendaDay'
			},
			editable: true, // ìì ê°ë¥íì§
			droppable: true, // ë¬ë ¥ì DROP ê°ë¥íì§
			drop: function(date, allDay) { // drop ë°ìì ì´ë²¤í¸
			
		
				var originalEventObject = $(this).data('eventObject');
				var copiedEventObject = $.extend({}, originalEventObject);
				
				copiedEventObject.start = date;
				copiedEventObject.allDay = allDay;
				
				//alert($(this).text()+"            "+date + "          "+originalEventObject)
					
					
				
				$('#calendar').fullCalendar('renderEvent', copiedEventObject, true);
				
				if ($('#drop-remove').is(':checked')) { // ì²´í¬ë°ì¤ê° ì²´í¬ëì´ìë¤ë©´ 
					$(this).remove();
				}
				
			}
		});
		
	
	});

</script>
<style type='text/css'>

	body {
		text-align: center;
		font-size: 14px;
		font-family: "Lucida Grande",Helvetica,Arial,Verdana,sans-serif;
		}
		
	#wrap {
		width: 1100px;
		margin: 0 auto;
		}
		
	#external-events {
		float: left;
		width: 150px;
		padding: 0 10px;
		border: 1px solid #ccc;
		background: #eee;
		text-align: left;
		margin-left: 20px;
		margin-top: 30px;
		}
		
	#external-events h4 {
		font-size: 16px;
		margin-top: 0;
		padding-top: 1em;
		}
		
	.external-event { /* try to mimick the look of a real event */
		margin: 10px 0;
		padding: 2px 4px;
		background: #3366CC;
		color: #fff;
		font-size: .85em;
		cursor: pointer;
		}
		
	#external-events p {
		margin: 1.5em 0;
		font-size: 11px;
		color: #666;
		}
		
	#external-events p input {
		margin: 0;
		vertical-align: middle;
		}

	#calendar {
		float: right;
		width: 900px;
		margin-right: 100px;
		margin-top: 30px;
		
		}

</style>
</head>
<body>

<div id='wrap'>

<div id='external-events'>
<h4>Draggable Events</h4>
<div class='external-event' style="background-color: red">Drag & Drop !!</div>
<div class='external-event'style="background-color: grean">이동중</div>
<div class='external-event' style="background-color:  fuchsia;">먹거리</div>
<div class='external-event'style="background-color: navy;">놀거리</div>
<div class='external-event'>볼거리</div>
<p>
<input type='checkbox' id='drop-remove' /> <label for='drop-remove'>remove after drop</label>
</p>
<a href="${pageContext.request.contextPath}/traveladd/travel_add" id="calendarPageMove" class="btn btn-reverse" type="button">일정스토리</a>
</div>
</div>
<div id='calendar'></div>

<div style='clear:both'></div>


</body>
</html>
