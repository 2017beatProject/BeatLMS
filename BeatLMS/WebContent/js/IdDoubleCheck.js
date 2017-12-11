function IddoubleCheck(){
			$('#id button').on('click',function() {		
				 mid= $('#id').find('input').eq(0).val();			 		 		 
						$.ajax({
							'url' : '/BEAT_LMS/target/join.json',
							'type' : 'POST',						
							'error' : function() {
								alert("경고");
							},
							'success' : function(data) {
								$("#id span").remove();
								var tf=true;
								datakit=data.list[0].mid;
								
								for(var i=0;i<data.list.length;i++){
									midlist=data.list[i].mid;
									if(mid==midlist){
										tf=false;
										break;
									}
								}// 반복문으로 중복값이 있는지 검사							
								
								if(tf==true){
									$('<span> 중복되지 않은 아이디입니다</span>').appendTo('#id');
									idchk=true;
									$('span').css({
										"color":"green",
										"font-size":"13px",
										"position":"absolute",
										"left":"310px",
											"top":"0px"										
									});
								}else if(tf==false){$('<span> 중복된 아이디입니다</span>').appendTo('#id');
									idchk=false;
									$('span').css({
										"color":"deeppink",
										"font-size":"13px",
										"position":"absolute",
										"left":"310px",
											"top":"0px"										
									});
								}	
								
								
								
							}
						
							
						});
					});
			
		}