<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix='c' uri="http://java.sun.com/jsp/jstl/core" %>
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
      <title>Pluto - Responsive Bootstrap Admin Panel Templates</title>
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
      
<script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
<script type="text/javascript" src="resources/js/exposition.js"></script>
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
                           <h6>이게 맞지</h6>
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
                              <c:if test="${Login eq null && SdsLogin eq null}"><a href="sdsList.do">> <span>예약하기</span></a></c:if>
                              <c:if test="${Login ne null && SdsLogin eq null}"><a href="sdsList.do">> <span>예약하기</span></a></c:if>
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
                              <h2>정보</h2>
                           </div>
                        </div>
                     </div>
                     <div class="row column1">
                        <div class="col-md-12">
                           <div class="white_shd full margin_bottom_30">
                              <div class="full graph_head">
                                 <div class="heading1 margin_0">
                                    <h2>박람회</h2>
                                 </div>
                              </div>
                              <div class="full price_table padding_infor_info">
                                 <div class="row">
                                    <!-- column contact --> 
                                    <c:forEach items="${fairList }" var="fair">
                                    <div class="col-lg-4 col-md-6 col-sm-6 col-xs-12 profile_details margin_bottom_30">
                                       <div class="contact_blog">
                                          <h4 class="brief"><br></h4>
                                          <div class="contact_inner">
                                             <div class="left">
                                                <h3>${fair.fairname }</h3>
                                                <ul class="list-unstyled">
                                                   <li><i class="fa fa-globe"></i>시작날짜 : ${fair.fairstart }</li>
                                                   <li><i class="fa fa-bullhorn"></i>종료날짜 : ${fair.fairend }</li>
                                                   <li><i class="fa fa-bullhorn"></i>주소 : ${fair.fairaddr }</li>
                                                </ul>
                                             </div>
                                             <div class="right">
                                                <div class="profile_contacts">
                                                   <img class="img-responsive" src=${fair.fairpoto } alt="#" />
                                                </div>
                                             </div>
                                             <div class="bottom_list">
                                                <div class="right_button">
                                                   <button type="button" class="btn btn-primary btn-xs" onclick="window.open('${fair.fairurl }') ">
                                                   <i class="fa fa-user"> </i>상세보기
                                                   </button>
                                               </div>
                                             </div>
                                          </div>
                                       </div>
                                    </div>
                                      </c:forEach>
                                    <!-- end column contact blog -->
                                    <!-- column contact --> 
                                  
                                 </div>
                              </div>
                           </div>
                        </div>
                        <!-- end row -->
                     </div>
				</div>

                     
                    

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