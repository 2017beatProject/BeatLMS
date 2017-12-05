<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="UTF-8"%>
    <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
    <html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
        <script type="text/javascript" src="http://code.jquery.com/jquery-1.12.4.min.js"></script>
        <title>Insert title here</title>
        <link rel="stylesheet" href="../css/960.css">
        <link rel="stylesheet" href="../css/menu.css">
        <link rel="stylesheet" href="../css/header.css">
        <link rel="stylesheet" href="../css/footer.css">
        <style type="text/css">
        	#sideMenu{
                position: relative;
        	}
        
            #aside ul {
                position: relative;
                text-align: center;
                margin-left: 40px;
                padding: 0px;
            }

            #aside>ul li {
                position: relative;
                list-style: none;
                left: -40px;
                width: 140px;
                height: 50px;
            }

            #aside>ul>li>div {
                position: relative;
                text-decoration: none;
                top: 15px;
                color: black;
            }

            #mainmenu {
                text-align: center;
                margin-top: 40px;
                margin-bottom: 40px;
            }

            #menu1>li {
                background-color: orange;
                text-align: center;
            }

            #menu2>li {
                position: relative;
                top: -16px;
            }

            #menu3>li {
                position: relative;
                top: -32px;
            }

            .aside {
                background-color: bisque;
                height: 300px;
                width: 100%;
                margin-left: 0px;
                border-bottom: 5px solid orange;
            }

            .content {
                position: relative;
                /* background-color: azure; */
                width: 820px;
            }

            /*------------------------------------------------  */

            .layout {
                position: relative;
                margin: 30px;
            }

            th {
                text-align: left;
                border-bottom: 2px solid black;
            }

            tr>td:nth-child(1) {
                border-bottom: 1px solid silver;
                text-align: center;
                padding: 5px;
            }

            tr>td:nth-child(2) {
                border-bottom: 0.5px solid #E1E1E1;
            }

            .imgs,
            table {
                display: inline-block;
            }


            .infor {
                border-bottom: 1px solid silver;
                border-top: 1px solid silver;
                margin-bottom: 10px;
                margin-top: 10px;
                padding-top: 10px;
                padding-bottom: 10px;

            }

        </style>
        <script>
            var div1Loc;
            var div2Loc;
            var div3Loc;
            var offset;
            var height;

            function imgSize(seq) {
                for (var i = 1; i <= 3; i++) {
                    $('#menu' + i + ">li").css('background-color', 'bisque');
                }
                $('#menu' + seq + ">li").css('background-color', 'orange');
            }

            function imgOpc() {
                height = $(document).scrollTop();
                height += 10;
                if (height > div1Loc && height < div2Loc) {
                    imgSize(1);
                }
                if (height > div2Loc && height < div3Loc) {
                    imgSize(2);
                }
                if (height > div3Loc) {
                    imgSize(3);
                }
            }

            function fnMove(seq) {
                div1Loc = $("#div1").offset().top - 10;
                div2Loc = $("#div2").offset().top - 10;
                div3Loc = $("#div3").offset().top - 10;
                $('html, body').animate({
                    scrollTop: $("#div" + seq).offset().top - 10
                }, 400);
            }

            $(document).ready(function() {
                imgSize(1);
                imgOpc();
                fnMove(0);
            });

            $(window).scroll(function() {
                imgOpc();
                
                setTimeout(function () { $("#sideMenu").animate({top: $(document).scrollTop()},10); }, 10);
            });
            

        </script>
    </head>

    <body>
        <div id="div0"></div>
        <!-- 타이밍 버그수정 도저히 못해먹겠다, 그냥 하나 만들자 아오 -->
        <jsp:include page="../template/header.jsp"></jsp:include>
        <jsp:include page="../template/loginjoin.jsp"></jsp:include>
        <jsp:include page="../template/menu.jsp"></jsp:include>

        <!-- aside -->
        <div class="aside grid_2" id="sideMenu">
            <div id="mainmenu">
                <label><strong>ABOUT US</strong></label>
            </div>
            <div id="aside">
                <ul id="menu1" onclick="fnMove('1')">
                    <li>
                        <div>조직도</div>
                    </li>
                </ul>
                <ul id="menu2" onclick="fnMove('2')">
                    <li>
                        <div>강사소개</div>
                    </li>
                </ul>
                <ul id="menu3" onclick="fnMove('3')">
                    <li>
                        <div>약력</div>
                    </li>
                </ul>
            </div>
        </div>
        <!-- aside END -->


        <!-- content -->
        <div class="content grid_10">
            <div class="layout">
                <div id="div1">
                    <p>The standard Lorem Ipsum passage, used since the 1500s</p>

                    <p>"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."</p>
                    <p>"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."</p>
                    <p>"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."</p>
                </div>
                <div id="div2">
                    <p>Section 1.10.32 of "de Finibus Bonorum et Malorum", written by Cicero in 45 BC</p>

                    <p>"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?"
                    </p>
                    <p>"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?"
                    </p>
                    <p>"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?"
                    </p>
                </div>
                <div id="div3">
                    <p>1914 translation by H. Rackham</p>

                    <p>"But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?"</p>
                    <p>"But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?"</p>
                    <p>"But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?"</p>
                </div>

            </div>


        </div>
        <!-- content END  -->
        <div class="clear"></div>


        <jsp:include page="../template/footer.jsp"></jsp:include>
    </body>

    </html>
