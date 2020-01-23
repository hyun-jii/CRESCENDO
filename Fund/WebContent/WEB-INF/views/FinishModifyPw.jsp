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

  <title>FinishModifyPw.jsp</title>
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
  <link rel="stylesheet" type="text/css" href="css/style.css">
  <link rel="stylesheet" type="text/css" href="css/magnific-popup.css">
  <link rel="stylesheet" type="text/css" href="css/owl.carousel.css">
  <link rel="shortcut icon" href="images/favicon.png">
  <link rel="apple-touch-icon" href="images/apple-touch-icon.png">
  <link rel="apple-touch-icon" sizes="72x72" href="images/apple-touch-icon-72x72.png">
  <link rel="apple-touch-icon" sizes="114x114" href="images/apple-touch-icon-114x114.png">
  <script src="https://kit.fontawesome.com/b7c292b54b.js" crossorigin="anonymous"></script>
  <link rel="stylesheet" type="text/css" href="<%=cp %>/css/Main.css">
  <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
  
   <script>
   function w3_open() {
     document.getElementById("mySidebar").style.display = "block";
   }

   function w3_close() {
     document.getElementById("mySidebar").style.display = "none";
   }
   </script>

<!-- 비밀번호 변경화면 css 경로 -->
<link rel="stylesheet" type="text/css" href="css/searchpw.css">

</head>

<body>

   <!-- 사이드바 -->
 <div id="sideparent" style="max-width:1200px;">
 <div class="w3-sidebar w3-bar-block " style="display:none; background-color:#ffff; width:300px;"  id="mySidebar">
  <button onclick="w3_close()" style="height:70px;background-color:#ffc425; color:#fff; border:none; outline:none;" class="w3-bar-item w3-large" ><i class="fas fa-times"></i>&nbsp&nbsp<b>crescendo</b><i class="fas fa-cloud"></i></button>
  <section class="caList">
          <a href="#">프로젝트 올리기&nbsp;<i class="fas fa-pencil-alt"></i></a><br><br>
          <section class="ca">카테고리</section>
          <a href="#">의류&nbsp;<i class="fas fa-tags"></i></a><br><br>
          <a href="#">음악&nbsp;<i class="fas fa-music"></i></a><br><br>
          <a href="#">출판&nbsp;<i class="fas fa-book"></i></a><br><br>
          <a href="#">공연&nbsp;<i class="fas fa-film"></i></a><br><br>
          <a href="#">기술&nbsp;<i class="fas fa-sim-card"></i></a>          
         </section>
</div>
</div>

<!-- 사이드바 버튼-->
<div class="w3-tel" style="background-color:#fff; max-width:1200px;">
  <button class="w3-button w3-tel w3-xlarge" onclick="w3_open()"><section class="hamburger" style="z-index: 9999;}">☰</section></button>
</div>

	


    <!-- ===== 헤더 시작  ===== -->
    <header id="header">
      <div class="header-top">
        <div class="container">
           <div class="row" style="margin-top:-50px">
            <div class="col-xs-12 col-sm-4"></div>
           <div class="navbar-header col-xs-3 col-sm-4" style="position: inherit;"> 
           		<a class="navbar-brand" href="index.jsp" style="color:#ffc425 ">crescendo<i class="fas fa-cloud"></i></a> 
           </div>
		   <ul class="header-top-right text-right" style="margin-top:10px;">
                <li class="login"><a href="login.html" style="vertical-align:text-top; line-height: 11px;"> 로그인</a><i class="fas fa-user-circle" style="font-size:23px; margin-left:5px;"></i></li>&nbsp
                <div class="no" style="float: right; margin-right:15px;">
                <li class="co1">공지사항</li>&nbsp
                <li class="co1">이용방법</li>
                </div>
           </ul>
           </div>
          </div>
         </div>
      </header>
 	<!-- Header End -->     
     
<!-- 비밀번호 재설정 완료 start -->

	<div class="container">
		<div class="login-form">
			<div class="main-fin">
				<div class="panel">
					<h2>비밀번호 설정완료</h2>
				</div>
				<form id="Login">
					<div class="changePW">
						<p>비밀번호 변경이 정상적으로 완료되었습니다.</p>
						<p>로그인 후 정상적으로 이용이 가능합니다.
						<hr>
					</div>
					<button type="submit" class="btn btn-pwLog" style="background-color: #ffc425; border: 0px;"
						onclick="">
						로그인
					</button>
				</form>
			</div>
		</div>
	</div>



<!-- 비밀번호 재설정 완료 end -->
  
 
  <script src="js/jQuery_v3.1.1.min.js"></script>
  <script src="js/owl.carousel.min.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <script src="js/jquery.magnific-popup.js"></script>
  <script src="js/jquery.firstVisitPopup.js"></script>
  <script src="js/custom.js"></script>
</body>

</html>