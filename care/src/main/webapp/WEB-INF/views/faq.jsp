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
      <title>Youth-Bridge</title>
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
      int memcode = (Integer)session.getAttribute("MemLogin");
      String sdsid = (String)session.getAttribute("SdsLogin");
      int sdsmemcode = (Integer)session.getAttribute("sdsmemLogin");
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
                              <a href="counseling_center1.do">> <span>상담소 찾기</span></a>
                           </li>
                           <li>
                              <c:if test="${Login eq null && SdsLogin eq null}"><a href="reservationList.do">> <span>예약하기</span></a></c:if>
                              <c:if test="${Login ne null && SdsLogin eq null}"><a href="reservationList.do">> <span>예약하기</span></a></c:if>
                              <c:if test="${SdsLogin ne null && Login eq null}"><a href="reservation.do">> <span>일정등록하기</span></a></c:if>

                           </li>
                           <li>
                              <!-- <a href="counselling_entry.do">> <span>상담하기</span></a> -->
                              <a href="chat.do">> <span>상담하기(회원)</span></a>
                              <a href="chat2.do">> <span>상담하기(상담사)</span></a>
                              
                           </li>
                        </ul>
                     </li>
                    
                     <li>
                        <a href="#diary" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle" ><i><img src="resources/images/icon/diary-icon.png" style="width: 30px;"></i><span>일기장</span></a>
                        <ul class="collapse list-unstyled" id="diary">
                               <li>
                              <a onclick="service()" style="cursor:pointer"> <span >일기</span></a>
                           </li>
                           <li>
                              <a onclick="service2()" style="cursor:pointer"><span>감정그래프</span></a>
                           </li>
                        </ul>
                     </li>
					<li><a onclick="service3()" style="cursor:pointer"><i><img src="resources/images/icon/bucketList-icon.png" style="width: 30px",></i> <span>버킷리스트</span></a></li>             
                 
                     <li>
                        <a href="#apps2" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle"><i><img src="resources/images/icon/narration-icon.png" style="width: 30px;"></i> <span>의사소통훈련</span></a>
                        <ul class="collapse list-unstyled" id="apps2">
                           <li><a href="training.do">> <span>대화하기</span></a></li>
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
                     <li><a href="advocacy.do"><i><img src="resources/images/icon/support-icon.png" style="width: 30px;,"></i> <span>지원정책</span></a></li>
                     <li><a href="faq.do"><i><img src="resources/images/icon/support-icon.png" style="width: 30px;"></i> <span>FAQ</span></a></li>
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
                           <a href="index.jsp"><img class="img-responsive" src="resources/images/logo/logo.png" alt="#" /></a>
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
<!-- 모바일에서 기기의 해상도 능력에 상관없이 절대적인 크기로 나오도록 -->
<!-- 예를들어, pc에서의 300px이 모바일 에서도 똑같은 크기로 나오도록 -->

<!-- 제이쿼리 -->

<section class="section section-faq">
  <div class="container mx-auto">
    <h1>FAQ</h1>

    <div class="faq-box">
      <!--
      ul>li*10>div.faq-box__question>span{질문 $}^div.faq-box__answer>lorem*10
    -->
      <ul>
        <li>
          <div class="faq-box__question"><span>Q. YOUTH-BRIDGE가 무엇인가요?</span></div>
          <div class="faq-box__answer">
            <div>
              청년들과 사회적 기회를 연결 하는 <font color="red">다리 역할</font>을 의미합니다.
              </div>
            
          </div>
        </li>
        <li>
          <div class="faq-box__question"><span>Q. 은둔형 외톨이는 어떤 사람들을 말하는 건지 궁금해요!</span></div>
          <div class="faq-box__answer">
            <div>
              - 사회생활에 적응하지 못하고 방이 나 집 안에만 머물며 <U>외부와 단절된 채 활동을 거부하는 사람들</U>을 일컫는 용어입니다.
            </div>
          </div>
        </li>
        <li>
          <div class="faq-box__question"><span>Q. 주요기능이 어떤 것이 있는지 간단히 알려주실 수 있나요?</span></div>
          <div class="faq-box__answer">
            <div>
              <font color="blue">YOUTH-BRIDGE에는 다음과 같은 기능이 있습니다.</font>
            </div>
            <div>
              1. 상담 : 상담을 통해 자신의 심리 상태, 현 상황 체크<br/>
			  2. 일기장 : 일기 작성을 통해 자신의 감정이 변화되는 모습을 체크<br/>
			  3. 정보 : 사용자에게 적합한 지원정책과 일자리 정보 제공<br/>
			  4. 인지 개발 : 의사소통 코칭으로 자신의 성향 파악 및 능력향상
            </div>
          </div>
        </li>
        <li>
          <div class="faq-box__question"><span>Q. 비회원으로 상담기능이 가능한가요?</span></div>
          <div class="faq-box__answer">
           <div>
            결론부터 말씀드리면 불가능합니다.
           </div>
           
            <div>
              상담의 경우 회원과 상담사 둘 모두에게 민감한 부분이 될 수 있고, 비회원분들이 이용할 수 있도록 오픈상담으로 하면<br/> 여러가지 문제들<font color="red">(사회적 문제, 인신공격 등)</font>이 발생할 우려가 있어 회원가입을 하고 이용하셔야 한다는 점 알려드립니다.
            </div>
          </div>
        </li>
        <li>
          <div class="faq-box__question"><span>Q. 일반 회원과 상담사 로그인이 따로 있던데 무엇때문인가요?</span></div>
          <div class="faq-box__answer">
            <div>
              YOUTH-BRIDGE에서는 일반 회원들이 상담을 할 수 있도록 상담 페이지가 마련되어있습니다.
            </div>
            <div>
              상담사들이 회원들이 상담을 신청할 때 일정이 겹치지 않게 편리한 신청을 위해 상담사들이 이용하는 페이지가 있습니다.
            </div>
            <div>
              또한 회원들에게 최고의 상담을 제공하기 위해 상담사 전용 자유게시판을 마련하여 서로의 상담기법을 공유할 수 있는 장을 마련하였기에 상담사들이 로그인이 따로 있는 것입니다.
            </div>
          </div>
        </li>
        <li>
          <div class="faq-box__question"><span>Q. 상담사로 회원가입을 했는데 활동을 바로 시작할 수 없는건 무엇때문인가요?</span></div>
          <div class="faq-box__answer">
           <div>
            일반회원과는 다르게 상담사는 회원가입을 할 때 자신의 자격증을 입력하게 되어있습니다.
           </div>
            <div>
              자격증은 <font color="red">관리자가 확인하여 승인하기 전까지</font>는 상담사의 권한은 주어지지 않은 상태로 있습니다.
            </div>
          </div>
        </li>
        <li>
          <div class="faq-box__question"><span>Q. 문제가 발생하면 어디에 문의하면 되나요?</span></div>
          <div class="faq-box__answer">
          <div>
            관리자 번호(010-0000-0000)으로 전화 혹은 문자로 알려주시면 친절하게 처리하도록 하겠습니다.
          </div>
            <div>
              (<font color="blue">문자는 어떤 기능 혹은 개선점이 필요한지 같이 내용 보내주시면 감사하겠습니다.</font>)
            </div>
          </div>
        </li>
      </ul>
    </div>
  </div>
</section>
	<!-- jQuery -->
	<script src="resources/js/jquery.min.js"></script>
	<script src="resources/js/jquery-3.3.1.min.js"></script>
	<script src="resources/js/popper.min.js"></script>
	<script src="resources/js/bootstrap.min.js"></script>
	<!-- wow animation -->
	<script src="resources/js/animate.js"></script>
	<!-- select country -->
	<script src="resources/js/bootstrap-select.js"></script>
	<!-- owl carousel -->
	<script src="resources/js/owl.carousel.js"></script>
	<!-- chart js./respirces/ -->
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