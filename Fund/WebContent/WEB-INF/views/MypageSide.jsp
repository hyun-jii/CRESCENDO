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

  <title>MypageSide.jsp</title>
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
  <link rel="stylesheet" type="text/css" href="<%=cp %>/css/mypage.css">
  
   <script>
   function w3_open() {
     document.getElementById("mySidebar").style.display = "block";
   }

   function w3_close() {
     document.getElementById("mySidebar").style.display = "none";
   }
   </script>
   <style>
	@media (max-width: 768px)
	 {
		 .vmenu h4 a
    	{
       
      	 font-size:15px;
      	 font-weight: bold;
		}
		
	 }
	 
	 @media (max-width: 500px)
	 {
		 .vmenu h4 a
    	{
       
      	 font-size:5px;
      	 font-weight: bold;
		}
	 }
	   

	</style>

 
</head>

<body>

	<div class="col-md-2 col-sm-4 col-xs-2" style="background-color:#eeeeee; height:150vh; padding-top: 15px;">
		<nav>
			<div class="vmenu">
			    <h4><a href="<%=cp%>/mypage.action">프로필 설정</a></h4>
			</div>
			
			<div class="vmenu">
			    <h4><a href="<%=cp%>/mypagetemp.action">임시저장 프로젝트</a></h4>
			</div>
			
			<div class="vmenu">
			    <h4><a href="#">참여 프로젝트</a>
			      <ol id="s3">
			        <li><a href="<%=cp%>/make.action">만든 프로젝트</a></li>
			        <li><a href="<%=cp%>/support.action">후원 프로젝트</a></li>
				  </ol>
				</h4>
			</div>
			
			<div class="vmenu">
			    <h4><a href="<%=cp%>/like.action">찜한 프로젝트</a></h4>
			</div>
			
			<div class="vmenu">
			   	<h4><a href="#">쪽지함</a>
			      <ol id="s4">
			        <li><a href="<%=cp%>/rletter.action">받은쪽지</a></li>
			        <li><a href="<%=cp%>/sletter.action">보낸쪽지</a></li>
				  </ol>
			   </h4>
			</div>
	  </nav>
	</div>
		
 
  <script src="js/jQuery_v3.1.1.min.js"></script>
  <script src="js/owl.carousel.min.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <script src="js/jquery.magnific-popup.js"></script>
  <script src="js/jquery.firstVisitPopup.js"></script>
  <script src="js/custom.js"></script>
</body>

</html>