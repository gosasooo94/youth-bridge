<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
      <meta http-equiv="X-UA-Compatible" content="IE=edge">
      <!-- mobile metas -->
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <meta name="viewport" content="initial-scale=1, maximum-scale=1">
    <title>마이페이지</title>
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
      <!-- <link rel="stylesheet" href="resources/css/colors.css" /> -->
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
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
    <link rel="stylesheet" href="resources/css/mypage.css" />
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
    <script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
    <script type="text/javascript" src="resources/js/memupdate.js"></script>
    <!-- 상담사 탈퇴 경고창 -->
    <script type="text/javascript" src="resources/js/mdalert.js"></script>
    
    
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
                     <li><a href="advocacy.html"><i><img src="resources/images/icon/support-icon.png" style="width: 30px;"></i> <span>지원정책</span></a></li>
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
               </div>
               </div>
               
  <h3>상담사 마이페이지</h3>
  <div id="btn-group">
    <div class="btn-group" role="group" aria-label="Basic example">
  <button type="button" class="btn btn-primary">상담 예약 일정</button>
  <button type="button" class="btn btn-primary">내 자격증</button>
  <button type="button" class="btn btn-primary">내가 쓴 글 보기</button>
</div>
</div>   
    <c:forEach items="${ sdsList }" var="sl">  
    <div class="accordion accordion-flush" id="accordionFlushExample">
  <div class="accordion-item">
    <h2 class="accordion-header">
      <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseOne" aria-expanded="false" aria-controls="flush-collapseOne">
        	상담사정보
      </button>
    </h2>
    <div id="flush-collapseOne" class="accordion-collapse collapse" data-bs-parent="#accordionFlushExample">
      <div class="accordion-body"><form action="sdsmemupdate.do"><input type="hidden" name="sdsid" onclick="popup()" value="${ sl.sdsid }" /><input type="submit" value="정보수정" /></form></div>
      <div class="accordion-body">상담사번호 : <input type="text" name="sdsmemcode" value="${ sl.sdsmemcode }" disabled /></div>
      <div class="accordion-body">이름 : <input type="text" name="sdsname" value="${ sl.sdsname }" disabled /></div>
      <div class="accordion-body">가입날짜 : <input type="text" name="sdsdate" value="${ sl.sdsdate }" disabled /></div>
      <div class="accordion-body">전화번호 : <input type="text" name="sdstel" value="${ sl.sdstel }" disabled /></div>
      <div class="accordion-body">주소 : <input type="text" name="sdsaddr" value="${ sl.sdsaddr }" disabled /></div>
      <div class="accordion-body">자격권한 : <input type="text" name="sdscheck" value="${ sl.sdscheck }" disabled /></div>
      <div class="accordion-body">자격증 : <input type="text" name="sdscard" value="${ sl.sdscard }" disabled /></div>      
      <div class="accordion-body">아이디 : <input type="text" name="sdsid" value="${ sl.sdsid }" disabled /></div>
      <div class="accordion-body">비밀번호 : <input type="text" name="sdspw" value="${ sl.sdspw }" disabled /></div>
      <div class="accordion-body">성별 : <input type="text" name="sdssex" value="${ sl.sdssex }" disabled /></div>
      <div class="accordion-body">닉네임 : <input type="text" name="sdsnick" value="${ sl.sdsnick }" disabled /></div>      
  	</c:forEach>
    
  	
    <!-- Button trigger modal -->
<button type="button" id="btn1" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal">
  상담사탈퇴
</button>

<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h1 class="modal-title fs-5" id="exampleModalLabel">회원탈퇴창</h1>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        <form action="sdsmemberDelete.do"><input type="text" id="id" name="sdsid" onclick="" placeholder="아이디를 입력해주세요" value="" /><br/>
        <input type="text" id="pw" name="sdspw" onclick="" placeholder="패스워드를 입력해주세요" value="" />
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
        <input type="submit" class="btn btn-danger" id="btn2" value="상담사탈퇴" /></form>
      </div>
    </div>
  </div>
</div>
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