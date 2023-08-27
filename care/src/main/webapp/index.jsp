<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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


<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<link rel="stylesheet" href="{{ asset('css/style.css') }}">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootswatch@4.5.2/dist/flatly/bootstrap.min.css"
	crossorigin="anonymous">


<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/fullcalendar@5.7.2/main.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"
	integrity="sha512-iBBXm8fW90+nuLcSKlbmrPcLa0OT92xO1BIsZ+ywDWZCvqsWgccV3gFoRBv0z+8dLJgyAHIhR35VZc2oM/gI1w=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />

<link
	href='https://cdn.jsdelivr.net/npm/@fortawesome/fontawesome-free@5.13.1/css/all.css'
	rel='stylesheet'>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datetimepicker/4.17.47/css/bootstrap-datetimepicker.css"
	integrity="sha512-63+XcK3ZAZFBhAVZ4irKWe9eorFG0qYsy2CaM5Z+F3kUn76ukznN0cp4SArgItSbDFD1RrrWgVMBY9C/2ZoURA=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
<script
	src='https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.22.2/moment.min.js'></script>

<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>

<script
	src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datetimepicker/4.17.47/js/bootstrap-datetimepicker.min.js"
	integrity="sha512-GDey37RZAxFkpFeJorEUwNoIbkTwsyC736KNSYucu1WJWFK9qTdzYub8ATxktr6Dwke7nbFaioypzbDOQykoRg=="
	crossorigin="anonymous" referrerpolicy="no-referrer"></script>
	 <script>
    document.addEventListener('DOMContentLoaded', function() {
        var calendarEl = document.getElementById('calendar');
            var calendar = new FullCalendar.Calendar(calendarEl, {
                
             headerToolbar: {
                 left: 'prev,next today,dayGridMonth',
                 center: 'title',
                 right: 'listWeek'
             },
            locale: 'ko',
            
              dayCellContent: function(info) {
                   var number = document.createElement("a");
                   number.classList.add("fc-daygrid-day-number");
                   number.innerHTML = info.dayNumberText.replace("일",'');
                   
                // 클릭 이벤트 핸들러 함수 작성
                   function cellClickHandler(event) {
                       // 여기에 일정 수정을 위한 로직 작성
                       // 예: 특정 날짜의 일정을 수정하기 위한 팝업 창을 띄워주는 등의 동작
                       console.log("날짜 셀 클릭됨:", info.date);
                   }

                   // HTML 엘리먼트에 클릭 이벤트 핸들러 추가
                   number.addEventListener("click", cellClickHandler);
                   
                   // 시간을 함께 표시하도록 추가
               var time = document.createElement("div");
               time.classList.add("fc-daygrid-event-time");
               time.textContent = "시간을 표시하고 싶은 내용"; // 원하는 시간 형식을 여기에 추가

               var container = document.createElement("div");
               container.appendChild(number);
               container.appendChild(time);
                   
                   if(info.view.type === "dayGridMonth")
                      {
                      return{html: number.outerHTML};
                      }
                   return{domNodes:[number]};   
                   },
                   
                   eventAdd: function () { // 이벤트가 추가되면 발생하는 이벤트
                       console.log()
                   },
                   eventAdd: function(info) {
                       // info.event.title, info.event.start, info.event.end 등의 정보를 활용하여 서버로 데이터 전송
                       // 서버에서 데이터를 처리한 후, 성공적으로 처리되면 아래와 같이 FullCalendar를 업데이트할 수 있습니다.
                       calendar.refetchEvents();
                   },
                  
            // Your calendar configuration options
            events: [
                // Iterate over eventList and generate event objects here
                <c:forEach var="fair" items="${fairReserve}">
                {
                   title: '<c:out value="${fiar.fairname}"/>',
                    start: '<c:out value="${fair.fairstart}"/>',
                    end: '<c:out value="${fair.fairend}"/>',
                    color : '<c:out value="${fair.color}"/>',
                    cate : '<c:out value="${fair.faircate}"/>',
                },
                </c:forEach>
            ],
                                   
        });
        
        calendar.render();
    });
</script>
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
      <![endif]-->
<%
	String id = (String) session.getAttribute("IdLogin");
int memcode = (Integer) session.getAttribute("MemLogin");
String sdsid = (String) session.getAttribute("SdsLogin");
int sdsmemcode = (Integer) session.getAttribute("sdsmemLogin");
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
							<a href="index.jsp"><img class="logo_icon img-responsive"
								src="resources/images/logo/logo_icon.png" alt="#" /></a>
						</div>
					</div>
					<div class="sidebar_user_info">
						<div class="icon_setting"></div>
						<div class="user_profle_side">
							<div class="user_info"></div>
						</div>
					</div>
				</div>
				<div class="sidebar_blog_2">
					<ul class="list-unstyled components">
						<li class="active"><a href="#advice" data-toggle="collapse"
							aria-expanded="false" class="dropdown-toggle"><i><img
									src="resources/images/icon/counselling-icon.png"
									style="width: 30px;"></i><span>상담</span></a>
							<ul class="collapse list-unstyled" id="advice">
								<li><a href="counseling_center1.do">> <span>상담소
											찾기</span></a></li>
								<li><c:if test="${Login eq null && SdsLogin eq null}">
										<a style="cursor: pointer" onclick="service4()"> <span>예약하기</span></a>
									</c:if> <c:if test="${Login ne null && SdsLogin eq null}">
										<a href="reservationList.do"> <span>예약하기</span></a>
									</c:if> <c:if test="${SdsLogin ne null && Login eq null}">
										<a href="javascript:void(0);"
											onclick="sdspopup('${sdsmemLogin}')"><span>일정등록하기</span></a>
									</c:if></li>
								<li><c:if test="${Login eq null && SdsLogin eq null}">
										<a style="cursor: pointer" onclick="service4()"> <span>상담하기</span></a>
									</c:if> <c:if test="${Login ne null && SdsLogin eq null}">
										<a style="cursor: pointer" href="chat.do">> <span>상담하기</span></a>
									</c:if> <c:if test="${SdsLogin ne null && Login eq null}">
										<a style="cursor: pointer" href="chat2.do">> <span>상담하기</span></a>
									</c:if></li>
							</ul></li>

						<li><c:if test="${Login eq null && SdsLogin eq null}">
								<a href="#diary" data-toggle="collapse" aria-expanded="false"
									class="dropdown-toggle"><i><img
										src="resources/images/icon/diary-icon.png"
										style="width: 30px;"></i><span>일기장</span></a>
							</c:if> <c:if test="${Login ne null && SdsLogin eq null}">
								<a href="#diary" data-toggle="collapse" aria-expanded="false"
									class="dropdown-toggle"><i><img
										src="resources/images/icon/diary-icon.png"
										style="width: 30px;"></i><span>일기장</span></a>
							</c:if>
							<ul class="collapse list-unstyled" id="diary">
								<li><a onclick="service()" style="cursor: pointer"> <span>일기</span></a>
								</li>
								<li><a onclick="service2()" style="cursor: pointer"><span>감정그래프</span></a>
								</li>
							</ul></li>
						<c:if test="${Login eq null && SdsLogin eq null}">
							<li><a onclick="service3()" style="cursor: pointer"><i><img
										src="resources/images/icon/bucketList-icon.png"
										style="width: 30px"></i> <span>버킷리스트</span></a></li>
						</c:if>
						<c:if test="${Login ne null && SdsLogin eq null}">
							<li><a onclick="service3()" style="cursor: pointer"><i><img
										src="resources/images/icon/bucketList-icon.png"
										style="width: 30px"></i> <span>버킷리스트</span></a></li>
						</c:if>
						<li><a href="training.do"><i><img
									src="resources/images/icon/narration-icon.png"
									style="width: 30px;"></i> <span>대화하기</span></a></li>
						<li><a href="getAllFreeBoards.do"><i><img
									src="resources/images/icon/board-icon.png" style="width: 30px;"></i>
								<span>자유게시판</span></a></li>
						<li><a href="#apps" data-toggle="collapse"
							aria-expanded="false" class="dropdown-toggle"><i><img
									src="resources/images/icon/information-icon.png"
									style="width: 30px;"></i> <span>정보게시판</span></a>
							<ul class="collapse list-unstyled" id="apps">
								<li><a href="jobList.do">> <span>일자리</span></a></li>
								<li><a href="fairList.do">> <span>박람회</span></a></li>
							</ul></li>
						<li><a href="advocacy.do"><i><img
									src="resources/images/icon/support-icon.png"
									style="width: 30px;,"></i> <span>지원정책</span></a></li>
						<li><a href="faq.do"><i><img
									src="resources/images/icon/support-icon.png"
									style="width: 30px;"></i> <span>FAQ</span></a></li>
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
							<button type="button" id="sidebarCollapse" class="sidebar_toggle">
								<i class="fa fa-bars"></i>
							</button>
							<div class="logo_section">
								<a href="index.jsp"><img class="img-responsive"
									src="resources/images/logo/logo.png" alt="#" /></a>
							</div>
							<div class="right_topbar">
								<div class="icon_info">
									<ul>
										<li><a href="#"><i class="fa fa-bell-o"></i><span
												class="badge">2</span></a></li>
									</ul>
									<ul class="user_profile_dd">
										<li>
											<%-- choose는 확실히 구분될때, if는 조건으로 구분해야할 때 사용 --%> <%-- 회원, 상담사 모두 null이면 로그인하러가기가 뜸 --%>
											<c:if test="${Login eq null && SdsLogin eq null}">
												<a class="dropdown-toggle" href="login.do"><span
													class="name_user">로그인하기</span></a>
											</c:if> <%-- 회원 닉네임 나오게 하는 부분(null이면 로그인 하러가기 나오고, 로그인하면 마이페이지, 로그아웃 나오게함) --%>
											<c:if test="${Login ne null && SdsLogin eq null}">
												<a class="dropdown-toggle" data-toggle="dropdown"><span
													class="name_user">${ Login }&nbsp님</span></a>
												<div class="dropdown-menu">
													<form action="myPage.do">
														<input type="hidden" name="id" value="${ IdLogin }" /><input
															class="dropdown-item" type="submit" name="member"
															value="마이페이지" />
													</form>
													<!-- <a class="dropdown-item" name="member" href="myPage.do">마이페이지</a> -->
													<a class="dropdown-item" href="logout.do"><span>로그아웃</span>
														<i class="fa fa-sign-out"></i></a>
												</div>
											</c:if> <%-- 상담사 닉네임 나오게 하는 부분(null이면 로그인 하러가기 나오고, 로그인하면 마이페이지, 로그아웃 나오게함) --%>
											<c:if test="${SdsLogin ne null && Login eq null}">
												<a class="dropdown-toggle" data-toggle="dropdown"><span
													class="name_user">${ NickLogin }&nbsp상담사</span></a>
												<div class="dropdown-menu">
													<form action="sdsMyPage.do">
														<input type="hidden" name="sdsid" value="${ SdsLogin }" /><input
															class="dropdown-item" type="submit" name="sdsmember"
															value="마이페이지" />
													</form>
													<!-- <a class="dropdown-item" name="sdsmember" href="sdsMyPage.do">마이페이지</a> -->
													<a class="dropdown-item" href="sdslogout.do"><span>로그아웃</span>
														<i class="fa fa-sign-out"></i></a>
												</div>
											</c:if> <%-- 상담사 닉네임 나오게 하는 부분(null이면 로그인 하러가기 나오고, 로그인하면 마이페이지, 로그아웃 나오게함) + 상담사 권한이 'N'이면 로그아웃만 나옴(마이페이지 이용 불가) --%>
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


						<!-- graph -->
						<div class="row column2 graph margin_bottom_30">
							<div class="col-md-l2 col-lg-12">
								<div class="white_shd full">

									<div class="full graph_revenue">
										<div class="row">
											<div class="col-md-12">
												<div class="content">
													<div id="carouselExampleControls" class="carousel slide"
														data-ride="carousel">
														<div class="carousel-inner">
															<div class="carousel-item active">
																<img class="d-block w-100"
																	src="resources/images/support_policy/1.jpg"
																	alt="First slide">
															</div>
															<div class="carousel-item">
																<img class="d-block w-100"
																	src="resources/images/support_policy/2.jpg"
																	alt="Second slide">
															</div>
															<div class="carousel-item">
																<img class="d-block w-100"
																	src="resources/images/support_policy/3.jpg"
																	alt="Third slide">
															</div>
															<div class="carousel-item">
																<img class="d-block w-100"
																	src="resources/images/support_policy/12.jpg"
																	alt="Third slide">
															</div>
															<div class="carousel-item">
																<img class="d-block w-100"
																	src="resources/images/support_policy/14.jpg"
																	alt="Third slide">
															</div>
															<div class="carousel-item">
																<img class="d-block w-100"
																	src="resources/images/support_policy/8.jpg"
																	alt="Third slide">
															</div>
															<div class="carousel-item">
																<img class="d-block w-100"
																	src="resources/images/support_policy/9.jpg"
																	alt="Third slide">
															</div>
															<div class="carousel-item">
																<img class="d-block w-100"
																	src="resources/images/support_policy/10.jpg"
																	alt="Third slide">
															</div>

														</div>
														<a class="carousel-control-prev"
															href="#carouselExampleControls" role="button"
															data-slide="prev"> <span
															class="carousel-control-prev-icon" aria-hidden="true"></span>
															<span class="sr-only">Previous</span>
														</a> <a class="carousel-control-next"
															href="#carouselExampleControls" role="button"
															data-slide="next"> <span
															class="carousel-control-next-icon" aria-hidden="true"></span>
															<span class="sr-only">Next</span>
														</a>
													</div>
													<div class="mainhome_tel">
														<img class="mainhome_telimg"
															src="resources/images/support/tel.jpg">
													</div>

													<div class="card mb-4 mt-3 p-2" id="faircalendar" >
														<div id='calendar' ></div>
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

							<!-- end testimonial -->
							<!-- progress bar -->
							<div class="col-md-6">
								<div class="white_shd full margin_bottom_30"></div>
							</div>
							<!-- end progress bar -->
						</div>
						<div class="row column4 graph"></div>
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
	<script src="resources/js/Service.js"></script>
	  <script src="https://cdn.jsdelivr.net/npm/fullcalendar@5.7.2/main.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/fullcalendar@5.7.2/locales-all.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-Piv4xVNRyMGpqkS2by6br4gNJ7DXjqk09RmUpJ8jgGtD7zP9yug3goQfGII0yAns"
            crossorigin="anonymous"></script>
	<script>
		function service() {
			let logIn = "${IdLogin}";
			if (logIn == "") {
				alert("서비스 페이지는 회원만 사용할 수 있습니다.");
				location.href = "login.do";
			} else {
				location.href = "diary.do?memcode=${MemLogin}";
			}
		}
		function service2() {
			let logIn = "${IdLogin}";
			if (logIn == "") {
				alert("서비스 페이지는 회원만 사용할 수 있습니다.");
				location.href = "login.do";
			} else {
				location.href = "emotions.do?memcode=${MemLogin}";
			}
		}
		function service3() {
			let logIn = "${IdLogin}";
			if (logIn == "") {
				alert("서비스 페이지는 회원만 사용할 수 있습니다.");
				location.href = "login.do";
			} else {
				location.href = "bucket_list.do?memcode=${MemLogin}";
			}
		}
		function service4() {
			let logIn = "${IdLogin}";
			if (logIn == "") {
				alert("서비스 페이지는 회원만 사용할 수 있습니다.");
				location.href = "login.do";
			}
		}
	</script>

</body>
</html>