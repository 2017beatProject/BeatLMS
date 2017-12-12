	function idValidation(){
						$('#id span').remove();
						$('#id>div').remove();

						if (getTextLength($('#id input').eq(0).val()) == 0) {
							$("<div> 아이디를 입력해주세요</div>").appendTo("#id");
							returnTfCount++;
						}

						else if (getTextLength($('#id input').eq(0).val()) < 8) {
							$("<div> 아이디는 8자 이상입니다</div>").appendTo("#id");
							returnTfCount++;

						}

						else if (stringRegx.test($('#id input').eq(0).val())) {
							$("<div>한글과 ~!@\#$%<>^&*\()\-=+_\’ 는 포함할 수 없습니다.</div>")
									.appendTo("#id");

							returnTfCount++;
						} else if (!EngRegx.test($('#id input').eq(0).val())) {
							$("<div>아이디에 영문 글자 1개 이상 포함되어 있어야 합니다</div>")
									.appendTo("#id");

							returnTfCount++;

						}
					}