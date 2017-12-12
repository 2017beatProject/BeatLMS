
    	function submitCheck() {    		
    		for (var j = 0; j < inputList.length; j++) {
    			if (document.getElementById(inputList[j]).value == "") {
    				document.getElementById(errList[j]).style.opacity = "1";
    				document.getElementById(errList[j]).style.color = "deeppink";
    				//document.getElementById(inputList[j]).style.backgroundColor = "deeppink";
    				returnTfCount++;
    			}
    		}

    		if (document.getElementById("pwInput").value != document
    				.getElementById("pwInputRe").value) {
    			document.getElementById("pwInputReErr").style.opacity = "1";
    			document.getElementById("pwInputReErr").style.color = "deeppink";
    			returnTfCount++;
    		}
    		
    		
    		
    		
    		
    	}
    	function resetText() {
    		for (var i = 0; i < errList.length; i++) {
    			document.getElementById(errList[i]).style.opacity = "0";
    			//document.getElementById(inputList[i]).style.backgroundColor = "white";
    		}
    	}

    	function showPW() {
    		pwToggle = !pwToggle;
    		if (pwToggle) {
    			document.getElementById("pwInput").setAttribute('type', 'text');
    			document.getElementById("pwInputRe").setAttribute('type', 'text');
    		} else {
    			document.getElementById("pwInput").setAttribute('type', 'password');
    			document.getElementById("pwInputRe").setAttribute('type',
    					'password');
    		}
    	}
    	
    	
    	