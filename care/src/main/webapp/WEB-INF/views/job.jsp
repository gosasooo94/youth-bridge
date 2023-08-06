<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
                        <a href="index.html"><img class="logo_icon img-responsive" src="images/logo/logo_icon.png" alt="#" /></a>
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
                        <a href="#advice" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle"><i><img src="images/icon/counselling-icon.png" style="width: 30px;"></i><span>상담</span></a>
                        <ul class="collapse list-unstyled" id="advice">
                           <li>
                              <a href="counseling_center.html">> <span>상담소 찾기</span></a>
                           </li>
                           <li>
                              <a href="reservation.html">> <span>예약하기</span></a>
                           </li>
                           <li>
                              <a href="counselling_entry.html">> <span>상담하기</span></a>
                           </li>
                        </ul>
                     </li>
                     <li>
                        <a href="#diary" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle"><i><img src="images/icon/diary-icon.png" style="width: 30px;"></i><span>일기장</span></a>
                        <ul class="collapse list-unstyled" id="diary">
                           <li>
                              <a href="diary.html">> <span>일기</span></a>
                           </li>
                           <li>
                              <a href="emotions.html">> <span>감정그래프</span></a>
                           </li>
                        </ul>
                     </li>
                     <li><a href="bucket_list.html"><i><img src="images/icon/bucketList-icon.png" style="width: 30px;"></i> <span>버킷리스트</span></a></li>
                     <li>
                        <a href="#apps2" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle"><i><img src="images/icon/narration-icon.png" style="width: 30px;"></i> <span>의사소통훈련</span></a>
                        <ul class="collapse list-unstyled" id="apps2">
                           <li><a href="daily_talk.html">> <span>일상대화</span></a></li>
                           <li><a href="company_talk.html">> <span>회사대화</span></a></li>
                        </ul>
                     </li>
                     <li><a href="freedom_board.html"><i><img src="images/icon/board-icon.png" style="width: 30px;"></i> <span>자유게시판</span></a></li>
                     <li>
                        <a href="#apps" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle"><i><img src="images/icon/information-icon.png" style="width: 30px;"></i> <span>정보게시판</span></a>
                        <ul class="collapse list-unstyled" id="apps">
                           <li><a href="job.do">> <span>일자리</span></a></li>
                           <li><a href="exposition.do">> <span>박람회</span></a></li>
                        </ul>
                     </li>
                     <li><a href="advocacy.html"><i><img src="images/icon/support-icon.png" style="width: 30px;"></i> <span>지원정책</span></a></li>
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
                           <a href="index.html"><img class="img-responsive" src="images/logo/logo.png" alt="#" /></a>
                        </div>
                        <div class="right_topbar">
                           <div class="icon_info">
                              <ul>
                                 <li><a href="#"><i class="fa fa-bell-o"></i><span class="badge">2</span></a></li>
                              </ul>
                              <ul class="user_profile_dd">
                                 <li>
                                    <a class="dropdown-toggle" data-toggle="dropdown"><span class="name_user">John David</span></a>
                                    <div class="dropdown-menu">
                                       <a class="dropdown-item" href="profile.html">마이페이지</a>
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
                              <h2>정보</h2>
                           </div>
                        </div>
                     </div>

                     <div class="row column1">
                        <div class="col-md-12">
                           <div class="white_shd full margin_bottom_30">
                              <div class="full graph_head">
                                 <div class="heading1 margin_0">
                                    <h2>일자리</h2>
                                 </div>
                              </div>
                              <div class="full price_table padding_infor_info">
                                 <div class="row">
                                    <!-- column contact --> 
                                    <div class="col-lg-4 col-md-6 col-sm-6 col-xs-12 profile_details margin_bottom_30">
                                       <div class="contact_blog">
                                          <h4 class="brief"><br></h4>
                                          <div class="contact_inner">
                                             <div class="left">
                                                <h3>체험형 전시 컨텐츠 기획, 운영 및 관리<br>(Team Lead)</h3>
                                                <p><strong>현대자동차(주)</strong></p>
                                                <ul class="list-unstyled">
                                                   <li><i class="fa fa-globe"></i> : 서울 서초구</li>
                                                   <li><i class="fa fa-bullhorn"></i> : 마케팅전략, 콘텐츠기획, 문화기획, 프로토타이핑, 기획 외</li>
                                                </ul>
                                             </div>
                                             <div class="right">
                                                <div class="profile_contacts">
                                                   <img class="img-responsive" src="images/corporate_logo/hyumdai-logo.png" alt="#" />
                                                </div>
                                             </div>
                                             <div class="bottom_list">
                                                <div class="right_button">
                                                   <button type="button" class="btn btn-xs detail_button">
                                                   <i class="fa fa-user"> </i> 상세보기
                                                   </button>
                                                </div>
                                             </div>
                                          </div>
                                       </div>
                                    </div>
                                    <!-- end column contact blog -->
                                    <!-- column contact --> 
                                    <div class="col-lg-4 col-md-6 col-sm-6 col-xs-12 profile_details margin_bottom_30">
                                       <div class="contact_blog">
                                          <h4 class="brief"><br></h4>
                                          <div class="contact_inner">
                                             <div class="left">
                                                <h3>2023년 제5차 체험형인턴 채용 공고</h3>
                                                <p><strong>한국식품안전관리인증원</strong></p>
                                                <ul class="list-unstyled">
                                                   <li><i class="fa fa-globe"></i> : 충북 청주시</li>
                                                   <li><i class="fa fa-bullhorn"></i> : 문서작성, 자료입력, 자료조사, 사업관리, 예산관리 외 </li>
                                                </ul>
                                             </div>
                                             <div class="right">
                                                <div class="profile_contacts">
                                                   <img class="img-responsive" src="images/corporate_logo/food-logo.png" alt="#" />
                                                </div>
                                             </div>
                                             <div class="bottom_list">
                                                <div class="right_button">
                                                   <button type="button" class="btn btn-xs detail_button">
                                                   <i class="fa fa-user"> </i> 상세보기
                                                   </button>
                                                </div>
                                             </div>
                                          </div>
                                       </div>
                                    </div>
                                    <!-- end column contact blog -->
                                    <!-- column contact --> 
                                    <div class="col-lg-4 col-md-6 col-sm-6 col-xs-12 profile_details margin_bottom_30">
                                       <div class="contact_blog">
                                          <h4 class="brief"><br></h4>
                                          <div class="contact_inner">
                                             <div class="left">
                                                <h3>퍼포먼스 마케팅 체험형 인턴 모집</h3>
                                                <p><strong>크림(주)</strong></p>
                                                <ul class="list-unstyled">
                                                   <li><i class="fa fa-globe"></i> : 경기 성남시 분당구</li>
                                                   <li><i class="fa fa-bullhorn"></i> : 디지털마케팅, 브랜드마케팅, 제휴마케팅, 퍼포먼스마케팅, CW(카피라이터) 외</li>
                                                </ul>
                                             </div>
                                             <div class="right">
                                                <div class="profile_contacts">
                                                   <img class="img-responsive" src="images/corporate_logo/kream-logo.png" alt="#" />
                                                </div>
                                             </div>
                                             <div class="bottom_list">
                                                <div class="right_button">
                                                   <button type="button" class="btn btn-xs detail_button">
                                                   <i class="fa fa-user"> </i> 상세보기
                                                   </button>
                                                </div>
                                             </div>
                                          </div>
                                       </div>
                                    </div>
                                    <!-- end column contact blog -->
                                    <!-- column contact --> 
                                    <div class="col-lg-4 col-md-6 col-sm-6 col-xs-12 profile_details margin_bottom_30">
                                       <div class="contact_blog">
                                          <h4 class="brief"><br></h4>
                                          <div class="contact_inner">
                                             <div class="left">
                                                <h3>2023년 체험형 인턴 채용공고</h3>
                                                <p><strong>한국가스공사 </strong></p>
                                                <ul class="list-unstyled">
                                                   <li><i class="fa fa-globe"></i> : 전국</li>
                                                   <li><i class="fa fa-bullhorn"></i> : 사무직, 총무, 생산관리, 품질관리, 생산</li>
                                                </ul>
                                             </div>
                                             <div class="right">
                                                <div class="profile_contacts">
                                                   <img class="img-responsive" src="images/corporate_logo/kogas-logo.png" alt="#" />
                                                </div>
                                             </div>
                                             <div class="bottom_list">
                                                <div class="right_button">
                                                   <button type="button" class="btn btn-xs detail_button">
                                                   <i class="fa fa-user"> </i> 상세보기
                                                   </button>
                                                </div>
                                             </div>
                                          </div>
                                       </div>
                                    </div>
                                    <!-- end column contact blog -->
                                    <!-- column contact --> 
                                    <div class="col-lg-4 col-md-6 col-sm-6 col-xs-12 profile_details margin_bottom_30">
                                       <div class="contact_blog">
                                          <h4 class="brief"><br></h4>
                                          <div class="contact_inner">
                                             <div class="left">
                                                <h3>Strategy RA 체험형 인턴 모집</h3>
                                                <p><strong>크림(주)</strong></p>
                                                <ul class="list-unstyled">
                                                   <li><i class="fa fa-globe"></i> : 경기 성남시 분당구</li>
                                                   <li><i class="fa fa-bullhorn"></i> : 이커머스, 패션브랜드, SNS, 리서치, 데이터분석 외</li>
                                                </ul>
                                             </div>
                                             <div class="right">
                                                <div class="profile_contacts">
                                                   <img class="img-responsive" src="images/corporate_logo/kream-logo.png" alt="#" />
                                                </div>
                                             </div>
                                             <div class="bottom_list">
                                                <div class="right_button">
                                                   <button type="button" class="btn btn-xs detail_button">
                                                   <i class="fa fa-user"> </i> 상세보기
                                                   </button>
                                                </div>
                                             </div>
                                          </div>
                                       </div>
                                    </div>
                                    <!-- end column contact blog -->
                                    <!-- column contact --> 
                                    <div class="col-lg-4 col-md-6 col-sm-6 col-xs-12 profile_details margin_bottom_30">
                                       <div class="contact_blog">
                                          <h4 class="brief"><br></h4>
                                          <div class="contact_inner">
                                             <div class="left">
                                                <h3>2023년 체험형 청년인턴 채용공고</h3>
                                                <p><strong>서민금융진흥원</strong></p>
                                                <ul class="list-unstyled">
                                                   <li><i class="fa fa-globe"></i> : 서울 중구</li>
                                                   <li><i class="fa fa-bullhorn"></i> : 회계, 감사, 세무회계, 자산관리, 총무 외</li>
                                                </ul>
                                             </div>
                                             <div class="right">
                                                <div class="profile_contacts">
                                                   <img class="img-responsive" src="images/corporate_logo/people-logo.png" alt="#" />
                                                </div>
                                             </div>
                                             <div class="bottom_list">
                                                <div class="right_button">
                                                   <button type="button" class="btn btn-xs detail_button">
                                                   <i class="fa fa-user"> </i> 상세보기
                                                   </button>
                                                </div>
                                             </div>
                                          </div>
                                       </div>
                                    </div>
                                    <!-- end column contact blog -->
                                 </div>
                              </div>
                           </div>
                        </div>
                        <!-- end row -->
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
      <script src="js/jquery.min.js"></script>
      <script src="js/popper.min.js"></script>
      <script src="js/bootstrap.min.js"></script>
      <!-- wow animation -->
      <script src="js/animate.js"></script>
      <!-- select country -->
      <script src="js/bootstrap-select.js"></script>
      <!-- owl carousel -->
      <script src="js/owl.carousel.js"></script> 
      <!-- chart js -->
      <script src="js/Chart.min.js"></script>
      <script src="js/Chart.bundle.min.js"></script>
      <script src="js/utils.js"></script>
      <script src="js/analyser.js"></script>
      <!-- nice scrollbar -->
      <script src="js/perfect-scrollbar.min.js"></script>
      <script>
         var ps = new PerfectScrollbar('#sidebar');
      </script>
      <!-- custom js -->
      <script src="js/custom.js"></script>
      <script src="js/chart_custom_style1.js"></script>
   </body>
</html>