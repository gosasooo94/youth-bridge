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
				<!-- end topbar -->
				<!-- dashboard inner -->
				<div class="midde_cont">
					<div class="container-fluid">
						<div class="row column_title">
							<div class="col-md-12">
								<div class="page_title">
									<h2></h2>
								</div>
							</div>
						</div>
						<div class="row column1">
							<div class="col-md-6 col-lg-3">
								<div class="full counter_section margin_bottom_30">
									<div class="couter_icon">
										<div>
											<i class="fa fa-user yellow_color"></i>
										</div>
									</div>
									<div class="counter_no">
										<div>
											<p class="total_no">2500</p>
											<p class="head_couter">Welcome</p>
										</div>
									</div>
								</div>
							</div>
							<div class="col-md-6 col-lg-3">
								<div class="full counter_section margin_bottom_30">
									<div class="couter_icon">
										<div>
											<i class="fa fa-clock-o blue1_color"></i>
										</div>
									</div>
									<div class="counter_no">
										<div>
											<p class="total_no">123.50</p>
											<p class="head_couter">Average Time</p>
										</div>
									</div>
								</div>
							</div>
							<div class="col-md-6 col-lg-3">
								<div class="full counter_section margin_bottom_30">
									<div class="couter_icon">
										<div>
											<i class="fa fa-cloud-download green_color"></i>
										</div>
									</div>
									<div class="counter_no">
										<div>
											<p class="total_no">1,805</p>
											<p class="head_couter">Collections</p>
										</div>
									</div>
								</div>
							</div>
							<div class="col-md-6 col-lg-3">
								<div class="full counter_section margin_bottom_30">
									<div class="couter_icon">
										<div>
											<i class="fa fa-comments-o red_color"></i>
										</div>
									</div>
									<div class="counter_no">
										<div>
											<p class="total_no">54</p>
											<p class="head_couter">Comments</p>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="row column1 social_media_section">
							<div class="col-md-6 col-lg-3">
								<div class="full socile_icons fb margin_bottom_30">
									<div class="social_icon">
										<i class="fa fa-facebook"></i>
									</div>
									<div class="social_cont">
										<ul>
											<li><span><strong>35k</strong></span> <span>Friends</span>
											</li>
											<li><span><strong>128</strong></span> <span>Feeds</span>
											</li>
										</ul>
									</div>
								</div>
							</div>
							<div class="col-md-6 col-lg-3">
								<div class="full socile_icons tw margin_bottom_30">
									<div class="social_icon">
										<i class="fa fa-twitter"></i>
									</div>
									<div class="social_cont">
										<ul>
											<li><span><strong>584k</strong></span> <span>Followers</span>
											</li>
											<li><span><strong>978</strong></span> <span>Tweets</span>
											</li>
										</ul>
									</div>
								</div>
							</div>
							<div class="col-md-6 col-lg-3">
								<div class="full socile_icons linked margin_bottom_30">
									<div class="social_icon">
										<i class="fa fa-linkedin"></i>
									</div>
									<div class="social_cont">
										<ul>
											<li><span><strong>758+</strong></span> <span>Contacts</span>
											</li>
											<li><span><strong>365</strong></span> <span>Feeds</span>
											</li>
										</ul>
									</div>
								</div>
							</div>
							<div class="col-md-6 col-lg-3">
								<div class="full socile_icons google_p margin_bottom_30">
									<div class="social_icon">
										<i class="fa fa-google-plus"></i>
									</div>
									<div class="social_cont">
										<ul>
											<li><span><strong>450</strong></span> <span>Followers</span>
											</li>
											<li><span><strong>57</strong></span> <span>Circles</span>
											</li>
										</ul>
									</div>
								</div>
							</div>
						</div>
						<!-- graph -->
						<div class="row column2 graph margin_bottom_30">
							<div class="col-md-l2 col-lg-12">
								<div class="white_shd full">
									<div class="full graph_head">
										<div class="heading1 margin_0">
											<h2>Extra Area Chart</h2>
										</div>
									</div>
									<div class="full graph_revenue">
										<div class="row">
											<div class="col-md-12">
												<div class="content">
													<div class="area_chart">
														<canvas height="120" id="canvas"></canvas>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<!-- end graph -->
						<div class="row column3">
							<!-- testimonial -->
							<div class="col-md-6">
								<div class="dark_bg full margin_bottom_30">
									<div class="full graph_head">
										<div class="heading1 margin_0">
											<h2>Testimonial</h2>
										</div>
									</div>
									<div class="full graph_revenue">
										<div class="row">
											<div class="col-md-12">
												<div class="content testimonial">
													<div id="testimonial_slider" class="carousel slide"
														data-ride="carousel">
														<!-- Wrapper for carousel items -->
														<div class="carousel-inner">
															<div class="item carousel-item active">
																<div class="img-box">
																	<img src="resources/images/layout_img/user_img.jpg"
																		alt="">
																</div>
																<p class="testimonial">Sed ut perspiciatis unde
																	omnis iste natus error sit voluptatem accusantium
																	doloremque laudantium, totam rem aperiam, eaque ipsa
																	quae..</p>
																<p class="overview">
																	<b>Michael Stuart</b>Seo Founder
																</p>
															</div>
															<div class="item carousel-item">
																<div class="img-box">
																	<img src="resources/images/layout_img/user_img.jpg"
																		alt="">
																</div>
																<p class="testimonial">Sed ut perspiciatis unde
																	omnis iste natus error sit voluptatem accusantium
																	doloremque laudantium, totam rem aperiam, eaque ipsa
																	quae..</p>
																<p class="overview">
																	<b>Michael Stuart</b>Seo Founder
																</p>
															</div>
															<div class="item carousel-item">
																<div class="img-box">
																	<img src="resources/images/layout_img/user_img.jpg"
																		alt="">
																</div>
																<p class="testimonial">Sed ut perspiciatis unde
																	omnis iste natus error sit voluptatem accusantium
																	doloremque laudantium, totam rem aperiam, eaque ipsa
																	quae..</p>
																<p class="overview">
																	<b>Michael Stuart</b>Seo Founder
																</p>
															</div>
														</div>
														<!-- Carousel controls -->
														<a class="carousel-control left carousel-control-prev"
															href="#testimonial_slider" data-slide="prev"> <i
															class="fa fa-angle-left"></i>
														</a> <a class="carousel-control right carousel-control-next"
															href="#testimonial_slider" data-slide="next"> <i
															class="fa fa-angle-right"></i>
														</a>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<!-- end testimonial -->
							<!-- progress bar -->
							<div class="col-md-6">
								<div class="white_shd full margin_bottom_30">
									<div class="full graph_head">
										<div class="heading1 margin_0">
											<h2>Progress Bar</h2>
										</div>
									</div>
									<div class="full progress_bar_inner">
										<div class="row">
											<div class="col-md-12">
												<div class="progress_bar">
													<!-- Skill Bars -->
													<span class="skill" style="width: 73%;">Facebook <span
														class="info_valume">73%</span></span>
													<div class="progress skill-bar ">
														<div
															class="progress-bar progress-bar-animated progress-bar-striped"
															role="progressbar" aria-valuenow="73" aria-valuemin="0"
															aria-valuemax="100" style="width: 73%;"></div>
													</div>
													<span class="skill" style="width: 62%;">Twitter <span
														class="info_valume">62%</span></span>
													<div class="progress skill-bar">
														<div
															class="progress-bar progress-bar-animated progress-bar-striped"
															role="progressbar" aria-valuenow="62" aria-valuemin="0"
															aria-valuemax="100" style="width: 62%;"></div>
													</div>
													<span class="skill" style="width: 54%;">Instagram <span
														class="info_valume">54%</span></span>
													<div class="progress skill-bar">
														<div
															class="progress-bar progress-bar-animated progress-bar-striped"
															role="progressbar" aria-valuenow="54" aria-valuemin="0"
															aria-valuemax="100" style="width: 54%;"></div>
													</div>
													<span class="skill" style="width: 82%;">Google plus
														<span class="info_valume">82%</span>
													</span>
													<div class="progress skill-bar">
														<div
															class="progress-bar progress-bar-animated progress-bar-striped"
															role="progressbar" aria-valuenow="82" aria-valuemin="0"
															aria-valuemax="100" style="width: 82%;"></div>
													</div>
													<span class="skill" style="width: 48%;">Other <span
														class="info_valume">48%</span></span>
													<div class="progress skill-bar">
														<div
															class="progress-bar progress-bar-animated progress-bar-striped"
															role="progressbar" aria-valuenow="48" aria-valuemin="0"
															aria-valuemax="100" style="width: 48%;"></div>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<!-- end progress bar -->
						</div>
						<div class="row column4 graph">
							<div class="col-md-6 margin_bottom_30">
								<div class="dash_blog">
									<div class="dash_blog_inner">
										<div class="dash_head">
											<h3>
												<span><i class="fa fa-calendar"></i> 6 July 2018</span><span
													class="plus_green_bt"><a href="#">+</a></span>
											</h3>
										</div>
										<div class="list_cont">
											<p>Today Tasks for Ronney Jack</p>
										</div>
										<div class="task_list_main">
											<ul class="task_list">
												<li><a href="#">Meeting about plan for Admin
														Template 2018</a><br>
												<strong>10:00 AM</strong></li>
												<li><a href="#">Create new task for Dashboard</a><br>
												<strong>10:00 AM</strong></li>
												<li><a href="#">Meeting about plan for Admin
														Template 2018</a><br>
												<strong>11:00 AM</strong></li>
												<li><a href="#">Create new task for Dashboard</a><br>
												<strong>10:00 AM</strong></li>
												<li><a href="#">Meeting about plan for Admin
														Template 2018</a><br>
												<strong>02:00 PM</strong></li>
											</ul>
										</div>
										<div class="read_more">
											<div class="center">
												<a class="main_bt read_bt" href="#">Read More</a>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="col-md-6">
								<div class="dash_blog">
									<div class="dash_blog_inner">
										<div class="dash_head">
											<h3>
												<span><i class="fa fa-comments-o"></i> Updates</span><span
													class="plus_green_bt"><a href="#">+</a></span>
											</h3>
										</div>
										<div class="list_cont">
											<p>User confirmation</p>
										</div>
										<div class="msg_list_main">
											<ul class="msg_list">
												<li><span><img
														src="resources/images/layout_img/msg2.png"
														class="img-responsive" alt="#" /></span> <span> <span
														class="name_user">Herman Beck</span> <span
														class="msg_user">Sed ut perspiciatis unde omnis.</span> <span
														class="time_ago">12 min ago</span>
												</span></li>
												<li><span><img
														src="resources/images/layout_img/msg3.png"
														class="img-responsive" alt="#" /></span> <span> <span
														class="name_user">John Smith</span> <span class="msg_user">On
															the other hand, we denounce.</span> <span class="time_ago">12
															min ago</span>
												</span></li>
												<li><span><img
														src="resources/images/layout_img/msg2.png"
														class="img-responsive" alt="#" /></span> <span> <span
														class="name_user">John Smith</span> <span class="msg_user">Sed
															ut perspiciatis unde omnis.</span> <span class="time_ago">12
															min ago</span>
												</span></li>
												<li><span><img
														src="resources/images/layout_img/msg3.png"
														class="img-responsive" alt="#" /></span> <span> <span
														class="name_user">John Smith</span> <span class="msg_user">On
															the other hand, we denounce.</span> <span class="time_ago">12
															min ago</span>
												</span></li>
											</ul>
										</div>
										<div class="read_more">
											<div class="center">
												<a class="main_bt read_bt" href="#">Read More</a>
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
							<p>
								Copyright © 2018 Designed by html.design. All rights reserved.<br>
								<br> Distributed By: <a href="https://themewagon.com/">ThemeWagon</a>
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
	 <link rel="stylesheet" href="resources/css/custom.css" />
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
	<script>
	function service() {
		let logIn = "${IdLogin}";
		if(logIn ==""){
			alert("서비스 페이지는 로그인 후 사용하실 수 있습니다.");
			location.href="login.do";
		}else{
			location.href="diary.do?memcode=${MemLogin}";
		}
	}
	function service2() {
		let logIn = "${IdLogin}";
		if(logIn ==""){
			alert("서비스 페이지는 로그인 후 사용하실 수 있습니다.");
			location.href="login.do";
		}else{
			location.href="emotions.do?memcode=${MemLogin}";
		}
	}
	function service3() {
		let logIn = "${IdLogin}";
		if(logIn ==""){
			alert("서비스 페이지는 로그인 후 사용하실 수 있습니다.");
			location.href="login.do";
		}else{
			location.href="bucket_list.do?memcode=${MemLogin}";
		}
	}
	</script>
</body>
</html>