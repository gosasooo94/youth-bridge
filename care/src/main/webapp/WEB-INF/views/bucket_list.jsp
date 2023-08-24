<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
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
							  <c:if test="${Login eq null && SdsLogin eq null}"><a style="cursor:pointer" onclick="service4()"> <span>예약하기</span></a></c:if>
                              <c:if test="${Login ne null && SdsLogin eq null}"><a href="reservationList.do">> <span>예약하기</span></a></c:if>
                              <c:if test="${SdsLogin ne null && Login eq null}"><a href="reservation.do">> <span>일정등록하기</span></a></c:if>

                           </li>
                           <li>
                              <c:if test="${Login eq null && SdsLogin eq null}"><a style="cursor:pointer" onclick="service4()"> <span>상담하기</span></a></c:if>
                              <c:if test="${Login ne null && SdsLogin eq null}"><a style="cursor:pointer" href="chat.do">> <span>상담하기(회원)</span></a></c:if>
                             <c:if test="${SdsLogin ne null && Login eq null}"><a style="cursor:pointer" href="chat2.do">> <span>상담하기(상담사)</span></a></c:if>
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
                     <li><a href="getAllFreeBoards.do"><i><img src="resources/images/icon/board-icon.png" style="width: 30px;"></i> <span>자유게시판</span></a></li>
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
						<!-- row -->
						<div class="row">
							<!-- table section -->
							<div class="col-md-12">
								<div class="white_shd full margin_bottom_30">
									<div class="full graph_head">
										<div class="heading1 margin_0">
											<h2>회원 버킷리스트 전체 목록</h2>
										</div>
									</div>
									<div class="full inbox_inner_section">
										<div class="row">
											<div class="col-md-12">
												<div class="full padding_infor_info">
													<div class="mail-box">
														<aside class="lg-side">
															<div class="inbox-head"
																style="margin-bottom: 20px; padding: 20px;">
																<form action="#"
																	class="pull-right position search_inbox right_topbar">
																	<div class="right_alignment">
																	</div>
																	<div class="input-append right_alignment">

																		<!-- <input name="memcode" type="hidden" value="1"> -->
																		<select name="searchCondition"
																			class="sr-select left_alignment">
																			<option value="listtitle">제목</option>
																			<option value="listdate">등록일</option>
																		</select> <input name="searchKeyword" type="text"
																			class="sr-input" value="" placeholder="검색어 입력">
																		<input type="submit" value=""
																			style="background-image: url(resources/images/icon/information-icon-white.png) !important; background-size: 18px !important; background-repeat: no-repeat !important; background-position: 11.5px !important;"
																			class="btn sr-btn search_color_navy input-button" />
																	</div>
																	<div class="input-append left_alignment"
																		style="width: 180px; height: 40px; margin-right: 20px;">
																		<h1 style="font-size: 1.5rem; line-height: 40px;"
																			class="middle_alignment">
																			달성여부 : &nbsp;<span>${bucketSum.allsum}</span>/<span>${bucketSum.yessum}</span>
																		</h1>
																	</div>
																</form>
															</div>

															<c:forEach items="${bucketList}" var="bucket">
																<input name="listcode" type="hidden"
																	value="${bucket.listcode}">

																<c:if test="${bucket.listgoal eq 'N' }">
																	<div class="full padding_pp"
																		style="margin-bottom:20px;"
																		onclick="clickBottom(${bucket.listcode});">
																</c:if>
																<c:if test="${bucket.listgoal eq 'Y' }">
																	<div class="full padding_pp"
																		style="margin-bottom: 20px;">
																</c:if>
																<div class="text-center">
																	<div class="row white_shd">

																		<div class="col col-lg-2 middle_alignment"
																			style="padding: 1%;">
																			<c:if test="${bucket.listgoal eq 'N' }">
																				<img src="resources/images/star.png"
																					style="width: 40%;">
																			</c:if>
																			<c:if test="${bucket.listgoal eq 'Y' }">
																				<img src="resources/images/starColor.png"
																					style="width: 40%;">
																			</c:if>
																		</div>
																		<div class="col-10 "
																			style="border-left: 3px solid #f6f6f6; padding: 0.5% 0 0.5% 1.5%;">
																			<div class="row" style="height: 100%;">
																				<div
																					class="col-12 align-items-center middle_alignment2">
																					<h1 class="left_alignment h1_style2">${bucket.listtitle}</h1>
																					<button
																						onclick="deleteBucket(${bucket.listcode});class="right_alignment btn lettering_color" style="margin-left: 5px;">삭제하기</button>
																				</div>
																				<div
																					class="col-12 align-items-center middle_alignment2">
																					<h1 class="left_alignment h1_style">
																						입력날짜 :
																						<fmt:formatDate value="${bucket.listdate}"
																							pattern="yyyy년 MM월 dd일" />
																					</h1>
																					<h1 class="left_alignment h1_style"
																						style="text-indent: 50px;">
																						달성날짜 :
																						<fmt:formatDate value="${bucket.listgoaldate}"
																							pattern="yyyy년 MM월 dd일" />
																					</h1>
																				</div>
																			</div>
																		</div>
																	</div>
																</div>
													</div>




													</c:forEach>

													<div class="full padding_infor_info padding_top_20">
														<div class="pagination button_section button_style2"
															style="margin-left: 48%">
															<!-- pagination -->
															<div class="btn-group mr-2" role="group"
																aria-label="First group">
																<c:if test="${pageMaker.prev}">
																	<div class="pagination_button">
																		<a
																			href="bucket_list.do?memcode=${param.memcode}&pageNum=${pageMaker.startPage - 1}&amount=${pageMaker.cri.amount}"
																			class="btn"><</a>
																	</div>
																</c:if>

																<c:forEach var="num" begin="${pageMaker.startPage }"
																	end="${pageMaker.endPage }">
																	<div class="pagination_button">
																		<a
																			href="bucket_list.do?memcode=${param.memcode}&pageNum=${num}&amount=${pageMaker.cri.amount}"
																			class="btn">${num}</a>
																	</div>
																</c:forEach>

																<c:if test="${pageMaker.next}">
																	<div class="pagination_button">
																		<a
																			href="bucket_list.do?memcode=${param.memcode}&pageNum=${pageMaker.endPage + 1}&amount=${pageMaker.cri.amount}"
																			class="btn">></a>
																	</div>
																</c:if>
															</div>

														</div>
													</div>


													</aside>
												</div>

											</div>
										</div>
									</div>
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
					<p>Copyright ©2018 Designed by html.design. All rights
						reserved.</p>
				</div>
			</div>
		</div>
		<!-- 버튼클릭시나오는영역-->
		<div class="modal fade" id="myModal">
			<div class="modal-dialog modal-dialog-centered">
				<div class="modal-content">
					<!-- Modal Header -->
					<div class="modal-header">
						<h4 class="modal-title">버킷리스트 작성하기</h4>
						<button type="button" class="close" data-dismiss="modal">&times;</button>
					</div>
					<!-- Modal body -->
					<form action="inserBucket.do" method="post">
						<input name="memcode" type="hidden" class="form-control"
							id="exampleFormControlInput1" value="1">
						<!-- 여기 사용자 코드!!!! 합칠때 수정해야함!!! -->
						<!-- 작성 회원코드 -->
						<div class="modal-body">
							<input name="listtitle" type="text" class="form-control"
								id="exampleFormControlInput1" placeholder="버킷리스트"
								style="border-style: none; width: 100%;">
						</div>
						<!-- Modal footer -->
						<div class="modal-footer">
							<input type="submit" value="작성하기"
								class="btn btn-xs detail_button">
						</div>
					</form>
				</div>
			</div>
		</div>
		<!-- 버튼클릭시나오는영역끝-->
		<!-- end dashboard inner -->
	</div>
	</div>

	<script>
	
		function clickBottom(bb) {
			if (confirm("달성여부") == true) {
				updateBucket(bb);
			} else { //취소
				return false;
			}
		}
		
		function deleteBucket(bb){
			if (confirm("정말 삭제하시겠습니까?") == true) {
				location.href='deleteBucket.do?listcode='+bb;
			} else { //취소
				return false;
			}
			
		}

		function updateBucket(bb) { /*달성여부업데이트*/
			location.href='updateBucket.do?listcode='+bb;
		}
	</script>
	<script>
		$(document).ready(function() {
			var listForm = $("#listForm");
			
			$(".pagination_button a").on("click", function(e) {
				e.preventDefault();
				
				listForm.find("input[name='pageNum']").val($(this).attr("href"));
				listForm.submit();
			});
		});
	</script>
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
	function service4() {
		let logIn = "${IdLogin}";
		if(logIn ==""){
			alert("서비스 페이지는 로그인 후 사용하실 수 있습니다.");
			location.href="login.do";
		}
	}

	</script>
</body>

</html>