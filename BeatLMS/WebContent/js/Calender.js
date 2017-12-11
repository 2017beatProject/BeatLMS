function dateSelect(){
			$("#bDay").datepicker({
				'buttonImage': "calendar.gif",
				'showOn': "focus",
				'hideIfNoPrevNext':true,
				'constrainInput':'true',
				'dateFormat':"yy-mm-dd",
				'navigationAsDateFormat':true,
				'nextText':'',
				'prevText':'',
				'defaultDate':'-20y',
				'yearRange':'-64:-13',
				'changeYear':'true',
				'changeMonth':'true',			
				'showMonthAfterYear':'true',
				'dayNamesMin':"월화수목금토일",
				'monthNamesShort': ["1월","2월","3월","4월","5월","6월","7월","8월","9월","10월","11월","12월"]
			
			});
			
			
			
			$('#ui-datepicker-div').css({	
				'position':'absolute',
				'top':'190px',
				'left':'350px'
			});		
			
		}