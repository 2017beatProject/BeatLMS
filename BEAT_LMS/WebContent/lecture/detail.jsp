<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" href="../css/960.css">
<link rel="stylesheet" href="../css/menu.css">
<link rel="stylesheet" href="../css/header.css">
<link rel="stylesheet" href="../css/lecture_detail.css">
<link rel="stylesheet" href="../css/footer.css">
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
		
			temp.css('top', '150px');
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
	<jsp:include page="../template/aside_menu_lecture.jsp"></jsp:include>

	

	<!-- content -->
	<div class="content grid_10">
		<img class="imgs" id="topimg" alt="" src="../imgs/menu_topimg1.jpg">
		<div class="layout">
			<p>
				<b>�����Ұ�</b>
			</p>
			<div>
				<img class="imgs" alt="" src="../imgs/info_img1.jpg">
				<!-- �̹���ũ�� 400/223 �ȼ� -->
				
				<table>
					<tr>
						<th colspan="2">JAVA������ �缺����</th>
					</tr>
					<tr>
						<td>������</td>
						<td>������1</td>
					</tr>
					<tr>
						<td>��&nbsp;&nbsp;��</td>
						<td>����1</td>
					</tr>
					<tr>
						<td>���ǱⰣ</td>
						<td>2018-01-01~2018-01-01</td>
					</tr>
					<tr>
						<td>���ǽð�</td>
						<td>09:00~18:00</td>
					</tr>
					<tr>
						<td>�����ο�</td>
						<td>20��</td>
					</tr>
					<tr>
						<td>��������</td>
						<td>0000-0000</td>
					</tr>

				</table>
			</div>
			<div class="info">
				<div class="btn">
					<a href="#" class="detailPop"
						onclick="layer_open('layer');return false;">
						<button type="button" id="applybtn">������û</button>
					</a>
				</div>
				<div id="layer" class="pop-layer">
					<div class="pop-container">
						<div class="pop-conts">
							<!--content //-->
							<div class="ctxt mb20">
								<div id="">
									������û �Ǿ����ϴ�. <a href="#" class="cbtn">�ݱ�</a>
								</div>
							</div>
						</div>
					</div>
				</div>
				<p>
					<b>������ǥ</b>
				</p>
				<br> SI, ERP �� CRM���α׷��� ������, �� ���α׷��� ������ �� �� ������Ʈ ������ ��ü ���� �����
				JAVA�� �����ϰ�, �ڹٿ� ����Ŭ(DBMS)�� ������ ORM �����ӿ�ũ�� IBATIS�� MYBATIS�� ���� �� �� �ִ�
				����� �����ϰ� MAVEN�� ��������� SPRING �����ӿ�ũ�� �����Ͽ� ���� ���� �����ӿ�ũ�� ȭ��ó��, ������ó��,
				���� ������Ʈ ������ �ǹ��� ������ �� �ֵ��� ������Ʈ�� ���� �����Ѵ�.<br> ��������� ����Ǵ� ǥ��
				�����ӿ�ũ�� ���� ���� �����ӿ�ũ�� ����� Ư¡�� �����ϰ� ���� �ҽ������ ����ȭ�ǰ�, ���� �� ����� Ȱ���Ͽ� Ư��
				����ڿ� ���ӵ��� �ʴ� �ý����� ���� �� �� �ְ� ������ �ٷ� ���� �� �� �ִ� �ǹ��� �����ڸ� �缺�� �� �ִ� �����
				�����ϴ� ���� ��ǥ�� �Ѵ�.<br> ��������� ����� SI��ü Ȥ�� S/W���� ���� ����� �ֱ� �䱸������ �ݿ�,
				�������� �����ӿ�ũ�� Spring �����ӿ�ũ�� �ǹ���������Ʈ�� �߽����� �н��ϰ� ���� SM��ü���� ����� ���, ������
				����� �� ���ø����̼��� ���� ������ ���� Struts �����ӿ�ũ�� �н��Ͽ� ������ �ٷ� ������ ������ �ǹ��� ������
				�缺�� ��ǥ�� �Ѵ�.<br> �Ʒð��� ���� �� �� �������� ������ �ڹ� ���α׷� ���� �ɷ��� Ȱ���Ͽ� SI,
				ERP �� CRM���α׷��� �����ڳ� �� ���α׷��� ������ �� �� ������Ʈ �����ڷ� ����� �� �ִ�.<br>
				<p>
					<b>��������</b>
				</p>
				<br> <img alt="" src="../imgs/info_img2.jpg"> <br>
				<p>
					<b>��������</b>
				</p>
				<br> <img alt="" src="../imgs/info_img3.jpg">

			</div>
		</div>
	</div>
	<!-- content END  -->
	<div class="clear"></div>


	<jsp:include page="../template/footer.jsp"></jsp:include>
</body>
</html>