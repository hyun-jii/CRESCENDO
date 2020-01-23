<%@page import="com.crescendo.spring.admin.model.vo.category.CategoryVO"%>
<%@page import="com.crescendo.spring.admin.model.dao.category.ICategoryDAO"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix ="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
   request.setCharacterEncoding("UTF-8");
   String cp = request.getContextPath();
%>



<!DOCTYPE html>
<!--[if (gte IE 9)|!(IE)]><!-->
<html lang="en">
<!--<![endif]-->

<head>
  <!-- =====  BASIC PAGE NEEDS  ===== -->
  <meta charset="utf-8">

  <title>Top.jsp</title>
  <!-- =====  SEO MATE  ===== -->
  <meta http-equiv="X-UA-Compatible" content="IE=edge" />
  <meta name="description" content="">
  <meta name="keywords" content="">
  <meta name="distribution" content="global">
  <meta name="revisit-after" content="2 Days">
  <meta name="robots" content="ALL">
  <meta name="rating" content="8 YEARS">
  <meta name="Language" content="en-us">
  <meta name="GOOGLEBOT" content="NOARCHIVE">
  <!-- =====  MOBILE SPECIFICATION  ===== -->
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
  <meta name="viewport" content="width=device-width">
  <!-- =====  CSS  ===== -->
  <link rel="stylesheet" type="text/css" href="css/font-awesome.min.css" />
  <link rel="stylesheet" type="text/css" href="css/bootstrap.css" />
  <link rel="stylesheet" type="text/css" href="css/top.css">
  <link rel="stylesheet" type="text/css" href="css/magnific-popup.css">
  <link rel="stylesheet" type="text/css" href="css/owl.carousel.css">
  <link rel="shortcut icon" href="images/favicon.png">
  <link rel="apple-touch-icon" href="images/apple-touch-icon.png">
  <link rel="apple-touch-icon" sizes="72x72" href="images/apple-touch-icon-72x72.png">
  <link rel="apple-touch-icon" sizes="114x114" href="images/apple-touch-icon-114x114.png">
  <script src="https://kit.fontawesome.com/b7c292b54b.js" crossorigin="anonymous"></script>
  <link rel="stylesheet" type="text/css" href="<%=cp %>/css/Main.css">
  <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
  <meta name="viewport"content="width=device-width, initial-scale=1, maximum-scale=1">
  <meta name="viewport" content="width=device-width">
  <link rel="stylesheet" type="text/css" href="<%=cp%>/css/menubar.css">
  <!-- sweet aler창  -->
 	<!-- Swal 추가 -->
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@8"></script>
  <!--  요기까지 -->
	
  <!-- include summernote css/js -->
<script type="text/javascript" src="https://code.jquery.com/jquery-3.3.1.min.js"></script>


  
  
   <script>
   function w3_open() {
     document.getElementById("mySidebar").style.display = "block";
   }

   function w3_close() {
     document.getElementById("mySidebar").style.display = "none";
   }
   
   </script>
   
   
	<!-- 모달을 위한 스크립트임  -->
	<script>
		
		function loginView(idMyDiv)
		{
			 var objDiv = document.getElementById(idMyDiv);
		     if(objDiv.style.display=="block"){ objDiv.style.display = "none"; }
		      else{ objDiv.style.display = "block"; }
		}
	</script>
   

	<!-- 모달을 위한 스크립트임  -->

	<!-- 모달 스타일 -->
	<style>
	.mb-2{height:35px;border:none; font-size: 15px; font-weight: bold; color:#666; cursor: pointer; margin-top: 6px; width: 100%;}
	.mb-3{height:35px;border:none; font-size: 15px; font-weight: bold; color:#666; cursor: pointer; margin-top: 6px; width: 100%;}
	.mb-2:hover{background-color:orange; color:#fff; transition:.3s;}
	.mb-3:hover{background-color:#666; color:#fff; transition:.3s;}
	.clear{clear: both;}
	.hi{margin-top: -15px;}
	.userName{font-size: 18px; font-weight: bold; color:#757575;}
	.hi{text-align: center;}
	.hrParent{border-bottom: 1px solid #efefef; margin-top: -15px; margin: 0 auto; width: 60%;}
	.closeX{font-weight: bold;}
	.closeX:hover{color:black; font-weight: bolder; margin-top:-10px;}
	.circle
	{
		width: 35px;
	    height: 35px; 
	    border-radius: 70%;
	    overflow: hidden;
		background-color: #eeeeee;
	}
	#profile
	{ 
		width: 100%;
	    height: 100%;
	    object-fit: cover;
	}
	
	 /* 카테고리바 클릭시 파란테두리 삭제 */
	 .xnote:focus
	{
		outline: none;
	}

    
	</style>
	<!-- 모달 스타일 -->
	
	<!-- 프로젝트올리기 로그인 여부 ajax -->
	<script type="text/javascript">
	$(function()
	{
		$("#uploadProject").click(function()
		{
			$.ajax({
				type : "POST",
				url : "<%=cp%>/projectcreate.action",
				data : {"userEmail" : $("#userEmail").val()},
				success: function(data)
				{
					if(data > 0)
					{
						
						$(location).attr("href","<%=cp%>/step1.action");
					}
					else
					{
						
						 Swal.fire({
						  icon: 'error',
						  title: '로그인',
						  text: '로그인이 필요한 서비스입니다!',
						  footer:' <a href="loginform.action">로그인</a>,<a href ="signup.action">회원가입</a>'
						})
						
					}
				}
			});
		});
	});
	
	</script>


</head>

<!--  body랜더링 ->카테고리 목록 불러오기 -->
<body>

<c:if test="${!empty msg}">

		<script>
		Swal.fire
		( 
	 	'알림!'
	 	,'${msg}'
	 	, 'success'
		 )
		 
		//alert("${msg}");
		</script>
		
		<c:remove var="msg"/>
		
	</c:if>
	
					
	
<!-- 사이드바 -->
<div id="sideparent" style="max-width:1200px; margin:0 auto;">
 <div class="w3-sidebar w3-bar-block " style="display:none; background-color:#ffff; width:300px;  z-index:9999;"  id="mySidebar">
  <button onclick="w3_close()" style="height:70px;background-color:#ffc425; color:#fff; border:none; outline:none;" class="w3-bar-item w3-large" ><i class="fas fa-times"></i>&nbsp&nbsp<b>crescendo</b><i class="fas fa-cloud"></i></button>
  <section class="caList">
          <a id="uploadProject">프로젝트 올리기&nbsp;<i class="fas fa-pencil-alt" style="color:#ff9900;"></i></a><br><br>
          <section class="ca">카테고리</section>
          
          <!-- 세션정보 확인 -->
          <input type="hidden" id="userEmail" value="${sessionScope.user.userEmail }">
          
          <!-- 사이드 카테고리 -->
          <c:forEach var="category" items="${category}">
          		<a href="<%=cp%>/category.action?caNum=${category.caNum}">${category.caName }
          		<i class="fas fa-tags" style="color:rgb(250, 100, 98);"></i></a><br><br>
          </c:forEach>
          
                   
         </section>
 </div>
</div>

<!-- 사이드바 버튼-->
<div class="w3-tel" style="background-color:#fff; max-width:1200px; margin: 0 auto;">
  <button class="w3-button w3-tel w3-xlarge xnote" onclick="w3_open();"><section class="hamburger" style="z-index: 9999; focus:outline:none;}">☰</section></button>
</div>

	


    <!-- ===== 헤더 시작  ===== -->
    <header id="header">
      <div class="header-top">
        <div class="container">
           <div class="row" style="margin-top:-50px">
            <div class="col-xs-12 col-sm-4"></div>
           <div class="navbar-header col-xs-3 col-sm-4" style="position: inherit;"> 
           		<a class="navbar-brand" href="<%=cp %>/main.action" style="color:#ffc425 ">crescendo<i class="fas fa-cloud"></i></a> 
           </div>
          
		   <ul class="header-top-right text-right" style="margin-top:10px;">
		   
		          
            	  <div class="circle">
                  <c:if test="${sessionScope.user.userProfile!=null }">
               <img id="profile" src="${sessionScope.user.userProfile }">
              </c:if>
              
              <c:if test="${sessionScope.user.userProfile==null}">
               <img id="profile" src="images/icons/KakaoTalk_20200109_232600877.png">
              </c:if>
               <!--  not null 조건 추가하기 -->
              </div>
                <!-- 로그인 시 로그인/회원가입 글씨가 유저이름으로 출력 -->
                <!-- c:when / choose 로 다시해보자 -->
				<li class="login">
				<!-- 관리자 로그인시 -->
				<c:if test="${sessionScope.admin.userEmail != null}">
					<a href="<%=cp %>/adminhome.action" class="blind_view">관리자님</a>
				</c:if>
				<!-- 비회원인 경우 -->
				<c:if test="${sessionScope.user.userEmail == null}">
					<a href="<%=cp %>/loginform.action" class="blind_view">로그인/회원가입</a>
				</c:if>
				<!-- 회원 로그인시 -->
				<c:if test="${sessionScope.user.userEmail != null}">
					<a onclick="loginView('login-menu'); return false;" class="blind_view">${sessionScope.user.userName }</a>
				</c:if>
				
				<!-- <a href="nloginform.action">네이버 로그인 하러 가기 </a> -->
				<!-- 로그아웃/마이페이지 모달 -->

			   <div id="login-menu" class="loginmenu">
					<form action="login.dr" method="POST" id="loginFrm">
						<input type="hidden" value="prevPage" name="prevPage" id="prevPage">
						
						<div class="logoutmodal">
						<span onclick="loginView('login-menu'); return false;" class="closeX">×</span>
						<p class="hi">안녕하세요!</p><br>
						<div class="hrParent">
						<a>
						<!-- 원본 <img src="images/icons/smile.png"> -->
						<!-- 수정본 -->
						<div class="circle">
						<c:if test="${sessionScope.user.userProfile!=null }">
               <img id="profile" src="${sessionScope.user.userProfile }">
              </c:if>
              <c:if test="${sessionScope.user.userProfile==null}">
               <img id="profile" src="images/icons/KakaoTalk_20200109_232600877.png">
              </c:if>
              
						<%-- <img id="profile" src="${sessionScope.user.userProfile }"> --%>
						</div>
						<span class="userName">${sessionScope.user.userName }</span>
						</a>

						<span class="gree">회원님</span>
						</div>
						<div class="clear"></div>
						
					   	<button type="button" style="text-align:center;" class="mb-2" onclick="javascript:location.href='<%=cp%>/mypage.action'"> 마이페이지</button>
					   	<br>
					    <button type="button" style="text-align:center;" class="mb-3" onclick="javascript:location.href='<%=cp%>/userlogout.action'"> 로그아웃</button>
					   </div>
					</form>
				</div>
	           <!-- 로그아웃/마이페이지 모달끝 -->
				
				
             
                </li>&nbsp;
              
                <div class="no" style="float: right; margin-right:15px;">
	                <li class="co1"><a href="noticemain.action">공지사항</a></li>&nbsp;
	                <li class="co1"><a href="howusemain.action">이용방법</a></li>
                </div>
           </ul>
           </div>
          </div>
         </div>
      </header>
 	<!-- Header End -->     
     
  
 
  <script src="js/owl.carousel.min.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <script src="js/jquery.magnific-popup.js"></script>
  <script src="js/jquery.firstVisitPopup.js"></script>
  <script src="js/custom.js"></script>
</body>

</html>