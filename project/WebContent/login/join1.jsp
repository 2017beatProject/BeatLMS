<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>ȸ������ ������</title>
<link rel="stylesheet" href="../css/960.css">
<link rel="stylesheet" href="../css/menu.css">
<link rel="stylesheet" href="../css/header.css">
<style type="text/css">
.pop-layer {
	display: none;
	position: absolute;
	top: 50%;
	left: 50%;
	width: 410px;
	height: auto;
	background-color: #fff;
	border: 7px solid orange;
	border-radius: 7px;
	z-index: 10;
}

.pop-layer .pop-container {
	padding: 20px 25px;
}

.pop-layer p.ctxt {
	color: #666;
	line-height: 25px;
}

.pop-layer .btn-r {
	width: 100%;
	margin: 10px 0 20px;
	padding-top: 10px;
	border-top: 1px solid #DDD;
	text-align: right;
}

a.cbtn {
	display: inline-block;
	height: 25px;
	padding: 0 14px 0;
	border: 1px solid orange;
	background-color: orange;
	font-size: 13px;
	color: #fff;
	line-height: 25px;
	text-decoration: none;
	border-radius: 3px;
}

a.cbtn:hover {
	border: 1px solid #091940;
	background-color: #1f326a;
	color: #fff;
}

#check{
position: relative;
left: 30px;
width: 100px;
}

#join,#memberJoin{
position: absolute;
}

#join{
top:400px;
left: 500px;
}
#memberJoin{
top:400px;
left: 600px;
}

.content{
height: 300px;
}



</style>
<script type="text/javascript" src="../js/jquery-1.12.4.js"></script>
<script type="text/javascript">
	function layer_open(el) {

		var temp = $('#' + el); //���̾��� id�� temp������ ����
		var bg = temp.prev().hasClass('bg'); //dimmed ���̾ �����ϱ� ���� boolean ����

		if (bg) {
			$('.layer').fadeIn();
		} else {
			temp.fadeIn(); //bg Ŭ������ ������ �Ϲݷ��̾�� �����Ѵ�.
		}

		// ȭ���� �߾ӿ� ���̾ ����.
		if (temp.outerHeight() < $(document).height())
			temp.css('margin-top', '-' + temp.outerHeight() / 2 + 'px');
		else
			temp.css('top', '0px');
		if (temp.outerWidth() < $(document).width())
			temp.css('margin-left', '-' + temp.outerWidth() / 2 + 'px');
		else
			temp.css('left', '0px');

		temp.find('a.cbtn').click(function(e) {
			if (bg) {
				$('.layer').fadeOut();
			} else {
				temp.fadeOut(); //'�ݱ�'��ư�� Ŭ���ϸ� ���̾ �������.
			}
			e.preventDefault();
		});

		$('.layer .bg').click(function(e) {
			$('.layer').fadeOut();
			e.preventDefault();
		});

	}
</script>
</head>
<body>
	<jsp:include page="../template/header.jsp"></jsp:include>
	<jsp:include page="../template/loginjoin.jsp"></jsp:include>
	<jsp:include page="../template/menu.jsp"></jsp:include>

	<!-- content -->
	<div class="content">
		<div>
			<a href="join.jsp"><button type="button" id="join">�Ϲݰ���</button></a>
		</div>
		<div>
			<a href="#" class="btn-example" onclick="layer_open('layer1');return false;">
			<button type="button" id="memberJoin">��������</button>
			</a>
			<div id="layer1" class="pop-layer">
				<div class="pop-container">
					<div class="pop-conts">
						<!--content //-->
						<div class="ctxt mb20">
							<div>&nbsp;</div>
							<div>
								<label>&nbsp;&nbsp;��&nbsp;&nbsp;��&nbsp;&nbsp;</label> 
								<input type="text" name="" /> 
								<input type="submit" value="��&nbsp;&nbsp;��" id="check" />
							</div>
							<div>&nbsp;</div>
							<div>
								<label>&nbsp;&nbsp;��&nbsp;&nbsp;��&nbsp;&nbsp;</label> 
								<input type="text" name="" />
							</div>
							<div>&nbsp;</div>
							<div>
								<label>�������</label> <input type="date" name="" />
							</div>
							<div>&nbsp;</div>
						</div>

						<div class="btn-r">
							<a href="#" class="cbtn">�ݱ�</a>
						</div>
						<!--// content-->
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="clear"></div>

	<jsp:include page="../template/footer.jsp"></jsp:include>
</body>
</html>