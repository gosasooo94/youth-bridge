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
   </head>
   <body class="dashboard dashboard_1">
      <div class="full_container">
         <div class="inner_container">
            <!-- sidebar 메뉴  -->
            <nav id="sidebar">
               <div class="sidebar_blog_1">
                  <div class="sidebar-header">
                     <div class="logo_section">
                        <a href="index.do"><img class="logo_icon img-responsive" src="resources/images/logo/logo_icon.png" alt="#" /></a>
                     </div>
                  </div>
                  <div class="sidebar_user_info">
                     <div class="icon_setting"></div>
                     <div class="user_profle_side">
                        <div class="user_info">
                           <h6>user</h6>
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
                              <a href="reservation.do">> <span>예약하기</span></a>
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
                              <a href="diary.do">> <span>일기</span></a>
                           </li>
                           <li>
                              <a href="emotions.do">> <span>감정그래프</span></a>
                           </li>
                        </ul>
                     </li>
                     <li><a href="bucket_list.do"><i><img src="resources/images/icon/bucketList-icon.png" style="width: 30px;"></i> <span>버킷리스트</span></a></li>
                     <li>
                        <a href="#apps2" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle"><i><img src="resources/images/icon/narration-icon.png" style="width: 30px;"></i> <span>의사소통훈련</span></a>
                        <ul class="collapse list-unstyled" id="apps2">
                           <li><a href="daily_talk.do">> <span>일상대화</span></a></li>
                           <li><a href="company_talk.do">> <span>회사대화</span></a></li>
                        </ul>
                     </li>
                     <li><a href="freedom_board.do"><i><img src="resources/images/icon/board-icon.png" style="width: 30px;"></i> <span>자유게시판</span></a></li>
                     <li>
                        <a href="#apps" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle"><i><img src="resources/images/icon/information-icon.png" style="width: 30px;"></i> <span>정보게시판</span></a>
                        <ul class="collapse list-unstyled" id="apps">
                           <li><a href="job.do">> <span>일자리</span></a></li>
                           <li><a href="exposition.do">> <span>박람회</span></a></li>
                        </ul>
                     </li>
                     <li><a href="advocacy.do"><i><img src="resources/images/icon/support-icon.png" style="width: 30px;"></i> <span>지원정책</span></a></li>
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
                           <a href="index.do"><img class="img-responsive" src="resources/images/logo/logo.png" alt="#" /></a>
                        </div>
                        <div class="right_topbar">
                           <div class="icon_info">
                              <ul>
                                 <li><a href="#"><i class="fa fa-bell-o"></i><span class="badge">2</span></a></li>
                              </ul>
                              <ul class="user_profile_dd">
                                 <li>
                                    <c:if test="${Login eq null && SdsLogin eq null}"><a class="dropdown-toggle" data-toggle="dropdown"><span class="name_user">로그인하기</span></a></c:if>
                                    <c:if test="${Login ne null && SdsLogin eq null}"><a class="dropdown-toggle" data-toggle="dropdown"><span class="name_user">${ Login }</span></a></c:if>
                                    <c:if test="${SdsLogin ne null && Login eq null}"><a class="dropdown-toggle" data-toggle="dropdown"><span class="name_user">${ NickLogin }</span></a></c:if>
                                    <div class="dropdown-menu">
                                       <a class="dropdown-item" href="profile.do">마이페이지</a>
                                       <a class="dropdown-item" href="#"><span>로그아웃</span> <i class="fa fa-sign-out"></i></a>
                                    </div>
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
                              <h2>예약하기</h2>
                           </div>
                        </div>
                     </div>
                     <div class="row column1">
                        <div class="col-md-6 col-lg-3">
                           <div class="full counter_section margin_bottom_30">
                              <div class="couter_icon">
                                 <div> 
                                    <i class="fa fa-user lavender_color"></i>
                                 </div>
                              </div>
                              <div class="counter_no">
                                 <div>
                                    <p class="total_no" style="margin-top: 3.2%;">상담사 김유성</p>
                                 </div>
                              </div>
                           </div>
                        </div>
                        <div class="col-md-6 col-lg-3">
                           <div class="full counter_section margin_bottom_30">
                              <div class="couter_icon">
                                 <div> 
                                    <i class="fa fa-user apricot_color"></i>
                                 </div>
                              </div>
                              <div class="counter_no">
                                 <div>
                                    <p class="total_no" style="margin-top: 3.2%;">상담사 이태순</p>
                                 </div>
                              </div>
                           </div>
                        </div>
                        <div class="col-md-6 col-lg-3">
                           <div class="full counter_section margin_bottom_30">
                              <div class="couter_icon">
                                 <div> 
                                    <i class="fa fa-user bud_color"></i>
                                 </div>
                              </div>
                              <div class="counter_no">
                                 <div>
                                    <p class="total_no" style="margin-top: 3.2%;">상담사 김택훈</p>
                                 </div>
                              </div>
                           </div>
                        </div>
                        <div class="col-md-6 col-lg-3">
                           <div class="full counter_section margin_bottom_30">
                              <div class="couter_icon">
                                 <div> 
                                    <i class="fa fa-user red_color"></i>
                                 </div>
                              </div>
                              <div class="counter_no">
                                 <div>
                                    <p class="total_no" style="margin-top: 3.2%;">상담사 이진아</p>
                                 </div>
                              </div>
                           </div>
                        </div>
                        <div class="col-md-6 col-lg-3">
                           <div class="full counter_section margin_bottom_30">
                              <div class="couter_icon">
                                 <div> 
                                    <i class="fa fa-user lavender_color"></i>
                                 </div>
                              </div>
                              <div class="counter_no">
                                 <div>
                                    <p class="total_no" style="margin-top: 3.2%;">상담사 김유성</p>
                                 </div>
                              </div>
                           </div>
                        </div>
                        <div class="col-md-6 col-lg-3">
                           <div class="full counter_section margin_bottom_30">
                              <div class="couter_icon">
                                 <div> 
                                    <i class="fa fa-user apricot_color"></i>
                                 </div>
                              </div>
                              <div class="counter_no">
                                 <div>
                                    <p class="total_no" style="margin-top: 3.2%;">상담사 이태순</p>
                                 </div>
                              </div>
                           </div>
                        </div>
                        <div class="col-md-6 col-lg-3">
                           <div class="full counter_section margin_bottom_30">
                              <div class="couter_icon">
                                 <div> 
                                    <i class="fa fa-user bud_color"></i>
                                 </div>
                              </div>
                              <div class="counter_no">
                                 <div>
                                    <p class="total_no" style="margin-top: 3.2%;">상담사 김택훈</p>
                                 </div>
                              </div>
                           </div>
                        </div>
                        <div class="col-md-6 col-lg-3">
                           <div class="full counter_section margin_bottom_30">
                              <div class="couter_icon">
                                 <div> 
                                    <i class="fa fa-user red_color"></i>
                                 </div>
                              </div>
                              <div class="counter_no">
                                 <div>
                                    <p class="total_no" style="margin-top: 3.2%;">상담사 이진아</p>
                                 </div>
                              </div>
                           </div>
                        </div>
                     </div>
                     <div class="row column3">
                        <!-- testimonial -->
                        <div class="col-md-6">
                           <div class="dark_bg full margin_bottom_30">
                              <div class="full graph_head">
                                 <div class="heading1 margin_0">
                                    <h2>상담사</h2>
                                 </div>
                              </div>
                              <div class="full graph_revenue">
                                 <div class="row">
                                    <div class="col-md-12">
                                       <div class="content testimonial">
                                          <div id="testimonial_slider" class="carousel slide" data-ride="carousel">
                                             <!-- Wrapper for carousel items -->
                                             <div class="item carousel-item active">
                                                <div class="img-box" style="width: 400px; height: 400px;"><img src="resources/images/layout_img/user_img.jpg" alt=""></div>
                                                <p class="testimonial"></p>
                                                <p class="overview"><b style="font-size: 40px;">김유성</b></p>
                                             </div>
                                          </div>
                                       </div>
                                    </div>
                                 </div>
                              </div>
                           </div>
                        </div>
                        <!-- end testimonial -->
                        <div class="col-md-6" >
                           <div class="dash_blog" style="min-height:630px;">
                              <div class="dash_blog_inner">
                                 <div class="dash_head">
                                    <h3><span><i class="fa fa-comments-o"></i> 정보</span></h3>
                                 </div>
                                 <div class="full padding_infor_info" style="height: 400px;">
                                    <div class="price_table">
                                       <div class="table-responsive">
                                          <table class="table">
                                             <tbody>
                                                <tr>
                                                   <th style="width:80%; font-size: 26px;">⦁ 우주대학교 의학전문대학원 의학과 석사 졸업</th>
                                                </tr>
                                                <tr>
                                                   <th style="font-size: 26px;">⦁ 우주대학교병원 수련의 수료</th>
                                              </tr>
                                                <tr>
                                                   <th style="font-size: 26px;">⦁ 고구려대학교 안산병원 정신건강의학과 전공의수료</th>
                                                 </tr>
                                                <tr>
                                                   <th style="font-size: 26px;">⦁ 정신건강의학과 전문의</th>
                                                   </tr>
                                                   <tr>
                                                      <th style="font-size: 26px;">⦁ 언제대학교 섭식장애 정신건강연구소 연구직 겸임</th>
                                                      </tr>
                                             </tbody>
                                          </table>
                                       </div>
                                    </div>
                                 </div>
                                <div class="read_more">
								    	<div class="center">
								    	    <a class="main_bt read_bt" href="javascript:void(0);" onclick="openReservationPopup()">예약하기</a>
								    	</div>
								</div>
                              </div>
                           </div>
                        </div>
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
     <script src="resources/js/reservation.js"></script>
</script>
      <!-- custom js -->
      <script src="resources/js/custom.js"></script>
      <script src="resources/js/chart_custom_style1.js"></script>
   </body>
</html>