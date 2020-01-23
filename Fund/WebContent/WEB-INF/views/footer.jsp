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

  <title>Footer.jsp</title>
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
   <style>
   .footer-1
	{
		margin-bottom:30px;
	}
	
	.foo1{float:left; font-size: 11px;}
	.foo2{float:right; font-size: 11px;}
   
   </style>

 
</head>

<body>
 
    <!-- =====  FOOTER START  ===== -->
    

     <div class="footer-1">  
	     <div class="footer-2"> 마음 속 프로젝트 아이디어, 크레센도에서 현실로</div>
	     <div class="footer-3">프로젝트를 위한 자금도 마련하고, 든든한 후원자 네트워크도 확보하세요</div>
     </div>  
    <div class="footer pt_60">
      <div class="container">
        <div class="row">
          <div class="col-md-3 col-xs-6 footer-block">
            <ul>
              <!-- 공지사항으로 갈 수 있도록 태그 설정 -->
              <li><a href="noticemain.action">공지사항</a></li>
              <!-- 헬프센터로 갈 수 있도록 태그 설정 -->
              <li><a href="helpmain.action">헬프센터</a></li>
              <!-- 이용방법으로 갈 수 있도록 태그 설정 -->
              <li><a href="howusemain.action">이용방법</a></li>
            </ul>
          </div>
          <div class="col-md-3  col-xs-6 footer-block">
            <ul>
			  <!-- 수수료 정책으로 갈 수 있도록 태그 설정 -->            	
              <li><a href="chargemain.action">수수료 정책</a></li>
              <!-- 이용약관으로 갈 수 있도록 태그 설정 -->  
              <li><a href="usemain.action">약관관리</a></li>
              <!-- 개인정보 처리방침으로 갈 수 있도록 태그 설정 -->  
              <li><a href="personemain.action">개인정보 처리방침</a></li>
             </ul>
          </div>
        </div>
      <div class="footer-bottom mt_60 ptb_20">
        <div class="container">
          <div class="row">
           
            
             크레센도는 플랫폼 제공자로서 프로젝트의 당사자가 아니며, 직접적인 통신판매를 진행하지 않습니다. 
             프로젝트의 완수 및 선물제공의 책임은 해당 프로젝트의 창작자에게 있으며, 
             프로젝트와 관련하여 후원자와 발생하는 법적 분쟁에 대한 책임은 해당 창작자가 부담합니다.<br><br>
			 <section class="foo1" >크레센도(주) | 대표 000 101-00-12345 | 서울시 마포구 월드컵북로21 풍성빌딩 4층 | 통신판매업 2019-07-27-20-0110 | 대표전화 02-123-5678</section> 
			 <section class="foo2">© 2019 Crescendo Inc.</section>
            
           
          </div>
        </div>
      </div>
     </div>
    </div>
    <!-- =====  FOOTER END  ===== -->
  
  <script src="js/jQuery_v3.1.1.min.js"></script>
  <script src="js/owl.carousel.min.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <script src="js/jquery.magnific-popup.js"></script>
  <script src="js/jquery.firstVisitPopup.js"></script>
  <script src="js/custom.js"></script>
</body>

</html>