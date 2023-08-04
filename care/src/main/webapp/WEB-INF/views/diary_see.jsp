<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html lang="UTF-8">
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
   <!-- font-awesome.min css -->
   <link rel="stylesheet" href="resources/css/font-awesome.min.css" />
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
         <!-- sidebar 메뉴-->
         <nav id="sidebar">
            <div class="sidebar_blog_1">
               <div class="sidebar-header">
                  <div class="logo_section">
                     <a href="index.jsp"><img class="logo_icon img-responsive" src="resources/images/logo/logo_icon.png"
                           alt="#" /></a>
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
                     <a href="#advice" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle"><i><img
                              src="resources/images/icon/counselling-icon.png" style="width: 30px"></i><span>상담</span></a>
                     <ul class="collapse list-unstyled" id="advice">
                        <li>
                           <a href="counseling_center.do">> <span>상담소찾기</span></a>
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
                     <a href="#diary" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle"><i><img
                              src="resources/images/icon/diary-icon.png" style="width: 30px"></i><span>일기장</span></a>
                     <ul class="collapse list-unstyled" id="diary">
                        <li>
                           <a href="diary.do">> <span>일기</span></a>
                        </li>
                        <li>
                           <a href="emotions.do">> <span>감정그래프</span></a>
                        </li>
                     </ul>
                  </li>
                  <li><a href="bucket_list.do"><i><img src="resources/images/icon/bucketList-icon.png" style="width: 30px"></i>
                        <span>버킷리스트</span></a></li>
                  <li>
                     <a href="#apps2" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle"><i><img
                              src="resources/images/icon/narration-icon.png" style="width: 30px"></i> <span>의사소통훈련</span></a>
                     <ul class="collapse list-unstyled" id="apps2">
                        <li><a href="daily_talk.do">> <span>일상대화</span></a></li>
                        <li><a href="company_talk.do">> <span>회사대화</span></a></li>
                     </ul>
                  </li>
                  <li><a href="freedom_board.do"><i><img src="resources/images/icon/board-icon.png" style="width: 30px"></i>
                        <span>자유게시판</span></a></li>
                  <li>
                     <a href="#apps" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle"><i><img
                              src="resources/images/icon/information-icon.png" style="width: 30px"></i> <span>정보게시판</span></a>
                     <ul class="collapse list-unstyled" id="apps">
                        <li><a href="job.do">> <span>일자리</span></a></li>
                        <li><a href="exposition.do">> <span>박람회</span></a></li>
                     </ul>
                  </li>
                  <li><a href="advocacy.do"><i><img src="resources/images/icon/support-icon.png" style="width: 30px"></i>
                        <span>지원정책</span></a></li>
               </ul>
            </div>
         </nav>
         <!-- end sidebar 메뉴끝-->
         <!-- right content -->
         <div id="content">
            <!-- topbar -->
            <div class="topbar">
               <nav class="navbar navbar-expand-lg navbar-light">
                  <div class="full">
                     <button type="button" id="sidebarCollapse" class="sidebar_toggle"><i
                           class="fa fa-bars"></i></button>
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
                                 <a class="dropdown-toggle" data-toggle="dropdown"><span class="name_user">John
                                       David</span></a>
                                 <div class="dropdown-menu">
                                    <a class="dropdown-item" href="profile.do">마이페이지</a>
                                    <a class="dropdown-item" href="#"><span>로그아웃</span> <i
                                          class="fa fa-sign-out"></i></a>
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
                           <h2>일기장</h2>
                        </div>
                     </div>
                  </div>
                  <!-- row -->
                  <div class="row">
                     <!-- table section -->
                     <div class="col-md-12">
                        <div class="white_shd full margin_bottom_30">
                           <div class="full graph_head">
                              <div class="heading1 margin_0">
                                 <h2>일기작성</h2>
                              </div>
                           </div>
                           <div class="full inbox_inner_section">
                              <div class="row">
                                 <!-- column price -->
                                 <div class="col-lg-3 col-md-6 col-sm-6 col-xs-12"
                                    style="margin-left: 12.5%; flex:12.5%; max-width:75%;">
                                    <div class="table_price full margin_top20px">
                                       <form>
                                       	  <div class="mb-3" style="margin: 1.5% 2%;">
                                             <label class="form-label f_size24 ">
                                                작성 날짜 : <fmt:formatDate value="${diary.notedate}" pattern="yyyy-MM-dd"/><!--오늘 날짜-->
                                                날씨 : <input id="weather" name="notesun" value="${diary.notesun }" class="input_weather" type="text" readonly> <!-- 날씨 api로 날씨값 자동으로 가져옴-->
                                             </label>
                                          </div>
                                          <div class="mb-3" style="margin: 1.5% 2%">
                                             <label for="exampleFormControlInput1"
                                                class="form-label f_size24"></label>
                                             <label for="exampleFormControlInput1"
                                                class="form-label f_size24">제목</label>
                                             <input type="text" class="form-control" id="exampleFormControlInput1"
                                                placeholder="제목칸" value="${diary.notetitle}">
                                          </div>
                                          <div class="mb-3" style="margin: 1.5% 2%">
                                             <label for="exampleFormControlTextarea1"
                                                class="form-label f_size24">내용</label>
                                             <textarea class="form-control" id="exampleFormControlTextarea1"
                                                rows="30">${diary.notecontent}</textarea>
                                          </div>
                                          <div class="right_alignment" style="margin-right: 2%">
                                             <div class="right_button">
                                                <a class="btn btn-xs detail_button">수정하기</a>
                                                <a class="btn btn-xs detail_button2">삭제하기</a>
                                             </div>
                                          </div>
                                          <div class="left_alignment" style="margin-left: 2%">
                                             <div class="right_button">
                                                <a href="diary.do" class="btn btn-xs detail_button">목록보기</a>
                                             </div>
                                          </div>
                                       </form>
                                 </div>
                                 <!-- end column price -->
                              </div>
                           </div>
                        </div>
                     </div>
                     <!-- table section -->
                  </div>
               </div>
               <!-- footer -->
               <div class="container-fluid">
                  <div class="footer">
                     <p>Copyright ©2018 Designed by html.design. All rights reserved.</p>
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