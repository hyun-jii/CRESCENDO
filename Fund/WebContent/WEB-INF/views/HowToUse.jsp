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

  <title>HowToUse.jsp</title>
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
  
  <style type="text/css">
  	.hoTitle
  	{
		margin-top: 70px;  
		font-size: 20px;	
  	}
  </style>
  
   <script>
   function w3_open() {
     document.getElementById("mySidebar").style.display = "block";
   }

   function w3_close() {
     document.getElementById("mySidebar").style.display = "none";
   }
   </script>
   
  <!-- 이용방법 css 경로 -->
  <link rel="stylesheet" href="css/clause.css">
 
</head>

<body>

 <jsp:include page="top.jsp"/>     
    
    
<!-- ===== 이용방법 페이지 start ===== -->
    
	<div class="blank3">
		<h1>🙌크레센도 이용방법</h1>
		<hr class="clauseLine">
	</div>
   
	<!-- 이용방법 내용 --> 
	<div class="sContxt">
	<!-- 반복문을 통해 DB에 저장된 이용약관 내용 출력 -->
	<c:forEach var="how" items="${lists }">
		<section class="article-info">
			<div class="article-content">
				<div class="article-body" id="c">
					<h2 id="id-이용방법1.창작자의 모금액 설정?-크라우드펀딩이란무엇이죠?" class="hoTitle">
						 <span class="wysiwyg-font-size-large"><strong><span class="inline-comment-marker" id="howTitle">
						 	${how.howTitle }
						 </span></strong></span>
					</h2>
					<br>
						<p class="howContent" id="howContent">${how.howContent }</p>	
				</div>
			</div>
		</section>
	</c:forEach>
	</div> <!-- 이용방법 내용 끝 -->     
	
	<!-- ===== 이용방법 페이지 end ===== -->  
	
  <jsp:include page="footer.jsp"/>
   

  <script src="js/jQuery_v3.1.1.min.js"></script>
  <script src="js/owl.carousel.min.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <script src="js/jquery.magnific-popup.js"></script>
  <script src="js/jquery.firstVisitPopup.js"></script>
  <script src="js/custom.js"></script>
  

  
</body>

</html>