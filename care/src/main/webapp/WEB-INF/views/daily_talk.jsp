<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE html>
<html lang="en">
   <head>
      <!-- basic -->
      <meta charset="utf-8">
      <meta http-equiv="X-UA-Compatible" content="IE=edge">
      <!-- mobile metas -->
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <meta name="viewport" content="initial-scale=1, maximum-scale=1">
      <!-- site metas -->
      <title>일상대화퀴즈</title>
      <meta name="keywords" content="">
      <meta name="description" content="">
      <meta name="author" content="">
      <!-- site icon -->
      <link rel="icon" href="resources/images/fevicon.png" type="image/png" />
      <!-- bootstrap css -->
      <link rel="stylesheet" href="resources/css/bootstrap.min.css" />
      <!-- site css -->
      <link rel="stylesheet" href="resources/css/style.css" />
      <!-- responsive css -->
      <link rel="stylesheet" href="resources/css/responsive.css" />
      <!-- color css -->
      <link rel="stylesheet" href="resources/css/colors.css" />
      <!-- select bootstrap -->
      <link rel="stylesheet" href="resources/css/bootstrap-select.css" />
      <!-- scrollbar css -->
      <link rel="stylesheet" href="resources/css/perfect-scrollbar.css" />
      <!-- custom css -->
      <link rel="stylesheet" href="resources/css/custom.css" />
      <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
      <![endif]-->
      <%
      String id = (String)session.getAttribute("IdLogin");
      String sdsid = (String)session.getAttribute("SdsLogin");
      %>
   </head>
   <body class="dashboard dashboard_1">
      <div class="full_container">
         <div class="inner_container">
            <!-- sidebar 메뉴  -->
            <nav id="sidebar" name="sidebar">
               <div class="sidebar_blog_1">
                  <div class="sidebar-header">
                     <div class="logo_section">
                        <a href="index.jsp"><img class="logo_icon img-responsive" src="resources/images/logo/logo_icon.png" alt="#" /></a>
                     </div>
                  </div>
                  <div class="sidebar_user_info">
                     <div class="icon_setting"></div>
                     <div class="user_profle_side">
                        <div class="user_info">
                        </div>
                     </div>
                  </div>
               </div>
               <div class="sidebar_blog_2">
                  <ul class="list-unstyled components">
                     <li class="active">
                        <a href="#advice" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle"><i><img src="resources/images/icon/counselling-icon.png" style="width: 30px;"></i><span>상담</span></a>
                        <ul class="collapse list-unstyled" id="advice">
                           <li>
                              <a href="counseling_center.do">> <span>상담소 찾기</span></a>
                           </li>
                           <li>
                              <c:if test="${Login eq null && SdsLogin eq null}"><a href="reservationList.do">> <span>예약하기</span></a></c:if>
                              <c:if test="${Login ne null && SdsLogin eq null}"><a href="reservationList.do">> <span>예약하기</span></a></c:if>
                              <c:if test="${SdsLogin ne null && Login eq null}"><a href="reservation.do">> <span>일정등록하기</span></a></c:if>

                           </li>
                           <li>
                              <a href="counselling_entry.do">> <span>상담하기</span></a>
                           </li>
                        </ul>
                     </li>
                     <li>
                        <a href="#diary" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle"><i><img src="resources/images/icon/diary-icon.png" style="width: 30px;"></i><span>일기장</span></a>
                        <ul class="collapse list-unstyled" id="diary">
                           <li>
                              <a href="diary.html">> <span>일기</span></a>
                           </li>
                           <li>
                              <a href="emotions.html">> <span>감정그래프</span></a>
                           </li>
                        </ul>
                     </li>
                     <li><a href="bucket_list.html"><i><img src="resources/images/icon/bucketList-icon.png" style="width: 30px;"></i> <span>버킷리스트</span></a></li>
                     <li>
                        <a href="#apps2" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle"><i><img src="resources/images/icon/narration-icon.png" style="width: 30px;"></i> <span>의사소통훈련</span></a>
                        <ul class="collapse list-unstyled" id="apps2">
                           <li><a href="daily_talk.do">> <span>일상대화</span></a></li>
                           <li><a href="company_talk.do">> <span>업무대화</span></a></li>
                        </ul>
                     </li>
                     <li><a href="freedom_board.html"><i><img src="resources/images/icon/board-icon.png" style="width: 30px;"></i> <span>자유게시판</span></a></li>
                     <li>
                        <a href="#apps" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle"><i><img src="resources/images/icon/information-icon.png" style="width: 30px;"></i> <span>정보게시판</span></a>
                        <ul class="collapse list-unstyled" id="apps">

                           <li><a href="jobList.do">> <span>일자리</span></a></li>
                           <li><a href="fairList.do">> <span>박람회</span></a></li>

                        </ul>
                     </li>
                     <li><a href="advocacy.html"><i><img src="resources/images/icon/support-icon.png" style="width: 30px;"></i> <span>지원정책</span></a></li>
                  </ul>
               </div>
            </nav>
            <!-- end sidebar 메뉴 끝 -->
            <!-- right content -->
            <div id="content">
               <!-- topbar -->
               <div class="topbar">
                  <nav class="navbar navbar-expand-lg navbar-light">
                     <div class="full">
                        <button type="button" id="sidebarCollapse" class="sidebar_toggle"><i class="fa fa-bars"></i></button>
                        <div class="logo_section">
                           <a href="index.html"><img class="img-responsive" src="resources/images/logo/logo.png" alt="#" /></a>
                        </div>
                        <div class="right_topbar">
                           <div class="icon_info">
                              <ul>
                                 <li><a href="#"><i class="fa fa-bell-o"></i><span class="badge">2</span></a></li>
                              </ul>
                              <ul class="user_profile_dd">
                                 <li>
<%-- choose는 확실히 구분될때, if는 조건으로 구분해야할 때 사용 --%>                                 
<%-- 회원, 상담사 모두 null이면 로그인하러가기가 뜸 --%>                                                                     
<c:if test="${Login eq null && SdsLogin eq null}"><a class="dropdown-toggle" href="login.do"><span class="name_user">로그인하기</span></a></c:if>
<%-- 회원 닉네임 나오게 하는 부분(null이면 로그인 하러가기 나오고, 로그인하면 마이페이지, 로그아웃 나오게함) --%>                                    
<c:if test="${Login ne null && SdsLogin eq null}"><a class="dropdown-toggle" data-toggle="dropdown"><span class="name_user">${ Login }</span></a>
                                    <div class="dropdown-menu">
                                    	<form action="myPage.do"><input type="hidden" name="id" value="${ IdLogin }" /><input class="dropdown-item" type="submit" name="member" value="마이페이지" /></form>
                                      <!-- <a class="dropdown-item" name="member" href="myPage.do">마이페이지</a> -->
                                      <a class="dropdown-item" href="logout.do"><span>로그아웃</span> <i class="fa fa-sign-out"></i></a>
                                    </div></c:if>
<%-- 상담사 닉네임 나오게 하는 부분(null이면 로그인 하러가기 나오고, 로그인하면 마이페이지, 로그아웃 나오게함) --%>                                    
<c:if test="${SdsLogin ne null && Login eq null}"><a class="dropdown-toggle" data-toggle="dropdown"><span class="name_user">${ NickLogin }</span></a>
                                    <div class="dropdown-menu">
                                    <form action="sdsMyPage.do"><input type="hidden" name="sdsid" value="${ SdsLogin }" /><input class="dropdown-item" type="submit" name="sdsmember" value="마이페이지" /></form>
                                      <!-- <a class="dropdown-item" name="sdsmember" href="sdsMyPage.do">마이페이지</a> -->
                                      <a class="dropdown-item" href="sdslogout.do"><span>로그아웃</span> <i class="fa fa-sign-out"></i></a>
                                    </div></c:if>
<%-- 상담사 닉네임 나오게 하는 부분(null이면 로그인 하러가기 나오고, 로그인하면 마이페이지, 로그아웃 나오게함) + 상담사 권한이 'N'이면 로그아웃만 나옴(마이페이지 이용 불가) --%>                                    
<%-- <c:if test="${SdsLogin ne null && SdsCheck eq 'N' && Login eq null}"><a class="dropdown-toggle" data-toggle="dropdown"><span class="name_user"><%= sdsnick %></span></a>
									<div class="dropdown-menu">
									<a class="dropdown-item" href="sdslogout.do"><span>로그아웃</span> <i class="fa fa-sign-out"></i></a>
									</div></c:if>               --%>                                                          									
                                 </li>
                              </ul>
                           </div>
                        </div>
                     </div>
                  </nav>
               </div>
               <!-- end topbar -->
               <!-- dashboard inner -->
               <div class="midde_cont">
                  <div class="container-fluid">
                     <div class="row column_title">
                        <div class="col-md-12">
                           <div class="page_title">
                              <h2>의사소통훈련</h2>
                           </div>
                        </div>
                     </div>

                     <div class="row column1">
                        <div class="col-md-12">
                           <div class="white_shd full margin_bottom_30">
                              <div class="full graph_head">
                                 <div class="heading1 margin_0">
                                    <h2>일상 대화 퀴즈</h2>
                                 </div>

    </div>
     <%-- 문제 --%>
      <%
        String[] data = {
            "아침에 일어난 당신은 방문을 열고 나오니 부모님과 마주치게 되었습니다. 다음 중 적절한 발언은 무엇인가요?`좋은 아침이에요!`무시한다`다시 자러 갈게요.`xx 좋은 아침이네요!",
            "등굣길에서 친구를 만났습니다. 반가운 마음에 친구를 불러서 같이 가고 싶은 당신이 해야 할 말은 무엇인가요?`어디 가냐 XX야, 같이 가야지.`좋은 아침이야 친구야, 친한척해라`친구야 반갑다. 같이 가자!`나버리고 혼자 가니?",
            "지인과 의견이 달라 다툼이 생길 것 같습니다. 다음 중 하면 안 되는 말은 무엇일까요?`제 생각은 이런 이유로 조금 다른데 어떤 거 같나요?`그 의견도 좋은 생각인 거 같은데 같이 생각해 볼까요?`조금만 더 생각해 보고 의견을 공유해 볼까요?`제 말이 맞는 거 같은 데 왜 그렇게 말씀하시죠?",
            "길을 걷다가 친구들끼리 싸우는 것을 보았습니다. 다음 중 당신이 하면 안 되는 말은 무엇인가요??`(싸움을 말리며) 싸움은 나쁜 거야!`(싸움을 말리며) 친구끼리 사이좋게 지내야지 둘 다 멈춰!`(싸움을 지켜보며) 재밌네, 계속 싸워라!`(싸움을 말리며) 둘이 싸우는 것을 보니 슬프구나.",
            "어딘가로 향하던 중 옆집에 사는 할아버지를 만났습니다. 할아버지는 당신에게 우체국의 위치를 물어보는데 다음 중 해야 하는 말은 무엇인가요?(당신은 우체국의 위치를 알고 있습니다.)`앞에 보이는 마트에서 왼쪽으로 돌아서 가면 있어요!`저는 모르겠는데요?`말없이 무시하고 지나간다.`왜 그걸 알려드려야 하는 거죠?",
            "당신은 여자(남자) 친구와 데이트 약속을 잡았습니다. 그런데 당신은 그만 약속에 늦었는데요. 다음 중 하면 안 되는 말은 무엇일까요?`늦어서 미안해.`많이 기다렸지, 앞으로는 늦지 않을게.`사람이 살다 보면 늦을 수도 있지, 너무 뭐라 하지 마.`좀 더 일찍 나와야 했는데, 앞으로 안 늦도록 노력할게.",
            "어머니가 당신에게 심부름을 부탁했습니다. 다음 중 상황에 맞는 말은 무엇일까요?`심부름 값은 얼마 주실 건데요?`(장바구니를 집어 들며) 조심히 다녀오겠습니다!`제가 왜요?`저 말고 동생 시키면 안 되나요?",
            "길을 가던 중 모르는 사람과 부딪히게 되었습니다. 상대방이 먼저 사과를 하고 있을 때 하면 안 되는 말은 무엇일까요?`저도 조심해야 했는데 죄송합니다.`다치신 곳은 없으신가요?`저는 괜찮습니다. 조심히 들어가세요!`눈을 어디에 뜨고 다니시는 겁니까?",
            "형제(자매, 남매) 간에 다툼이 일어났습니다. 다음 중 해야 하는 말은 무엇일까요?`죽고 싶냐?`엄마, (형)이 또 저 때려요!`미안해! 다시는 안 그럴게!`아잇XX, 주먹맛 좀 볼래?",
            "자러 갈 시간입니다. 자기 전에 가족들에게 해야 할 말은 무엇일까요?`잘 거니까 깨우지 마라.`안녕히 주무세요!`잘 시간인데 티브이 좀 끄면 안 돼?`굳잠!"
            		
        };
		//정답
        int score = 0;
        String[] answers = {"1", "3", "4","3","1","3","2","4","3","2"};
    %>



    <form method="post">
        <% for (int i = 0; i < data.length; i++) { %>
            <%-- 문제와 선택지 출력 --%>
            <p><%= (i + 1) + ". " + data[i].split("`")[0] %></p>
            <% for (int j = 1; j < data[i].split("`").length; j++) { %>
                <input type="radio" name="answer<%= i %>" value="<%= j %>" />
                <%= data[i].split("`")[j] %><br>
            <% } %>
            <%--  선택한 답을 받아오는 부분 --%>
            <input type="hidden" name="question<%= i %>" value="<%= data[i].split("`")[0] %>" />
            <br>
        <% } %>
        <input type="submit" value="제출" />
    </form>

    <%-- 답을 선택한 경우 --%>
    <%
        if (request.getMethod().equals("POST")) {
            for (int i = 0; i < data.length; i++) {
                String question = data[i].split("`")[0];
                String userAnswer = request.getParameter("answer" + i);

                if (userAnswer != null && userAnswer.equals(answers[i])) {
                    score++;
                }
            }
            out.println("정답 개수 / 전체 문항수 >> " + score + " / " + data.length );
        }
    %>

          
 			  </div>
              </div>
   
  
                  <!-- footer -->
                  <div class="container-fluid">
                     <div class="footer">
                        <p>Copyright © 2018 Designed by html.design. All rights reserved.<br><br>
                           Distributed By: <a href="https://themewagon.com/">ThemeWagon</a>
                        </p>
                     </div>
                  </div>
               </div>
               <!-- end dashboard inner -->
            </div>
         </div>
      </div>
      <!-- jQuery -->
      <script src="resources/js/jquery.min.js"></script>
      <script src="resources/js/popper.min.js"></script>
      <script src="resources/js/bootstrap.min.js"></script>
      <!-- wow animation -->
      <script src="resources/js/animate.js"></script>
      <!-- select country -->
      <script src="resources/js/bootstrap-select.js"></script>
      <!-- owl carousel -->
      <script src="resources/js/owl.carousel.js"></script> 
      <!-- chart js -->
      <script src="resources/js/Chart.min.js"></script>
      <script src="resources/js/Chart.bundle.min.js"></script>
      <script src="resources/js/utils.js"></script>
      <script src="resources/js/analyser.js"></script>
      <!-- nice scrollbar -->
      <script src="resources/js/perfect-scrollbar.min.js"></script>
    
      <script>
         var ps = new PerfectScrollbar('#sidebar');
      </script>
      <!-- custom js -->
      <script src="resources/js/custom.js"></script>
      <script src="resources/js/chart_custom_style1.js"></script>

   </body>
</html>