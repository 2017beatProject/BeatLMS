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
<link rel="stylesheet" href="../css/join1.css">

<style type="text/css">
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
	    <div id="pageName"><strong>ȸ������</strong></div>
		<div>
			<a href="join.jsp"><button type="button" id="join">�Ϲݰ���</button></a>
		</div>
		<div>
			<a href="#" class="btn-example" onclick="layer_open('layer1');return false;">
			<button type="button" id="memberJoin">��������</button>
			</a>
			<div id="pageEnd">&nbsp;</div>
			<div id="layer1" class="pop-layer">
				<div class="pop-container">
					<div class="pop-conts">
						<!--content //-->
						<div class="ctxt mb20">
						    <div id="popname"><strong>��������</strong></div>
							<div>&nbsp;</div>
							<div>
								<label>&nbsp;&nbsp;��&nbsp;&nbsp;��&nbsp;&nbsp;</label> 
								<input type="text" name="" id="sabun"/> 
								<input type="submit" value="��&nbsp;&nbsp;��" id="check" />
							</div>
							<div>&nbsp;</div>
							<div>
								<label>&nbsp;&nbsp;��&nbsp;&nbsp;��&nbsp;&nbsp;</label> 
								<input type="text" name="" id="name"/>
							</div>
							<div>&nbsp;</div>
							<div>
								<label>�������</label> <input type="date" name="" id="bDay" />
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