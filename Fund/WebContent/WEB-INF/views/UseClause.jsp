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

  <title>UseClause.jsp</title>
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


  <!-- 이용약관 css 경로 -->
  <link rel="stylesheet" href="css/clause.css">
 
</head>

<body>

<jsp:include page="top.jsp"/>   

<div style="margin-bottom: 70px;">
<c:forEach var="use" items="${lists }">
	<!-- ===== 이용약관 페이지 start ===== -->
	<div class="blank3">
		<h1>이  용  약  관</h1>
		<h6>최종 수정일자 : ${use.proDate }</h6>
		<hr class="clauseLine">
	</div>
	
	<!-- 이용약관 내용 --> 
	<div class="useContext">
	<h4 class="useTitle">총칙</h4>
		<p class="clauseStyle">
	  		${use.proRules }
		</p> 
	</div> 
	
	<div class="useContext">
	<h4 class="useTitle">서비스 이용</h4>
		<p class="clauseStyle">
			${use.proService }
		</p>  
	</div> 
	
	<div class="useContext">
	<h4 class="useTitle">회원 정보 관리</h4>
		<p class="clauseStyle">
			${use.proUserInfo }
		</p>  
	</div>
	
	<div class="useContext">
	<h4 class="useTitle">회사와 회원의 권리 및 의무</h4>
		<p class="clauseStyle">
			${use.proDuty }
		</p> 
	</div> 
	
	<div class="useContext">
	<h4 class="useTitle">프로젝트 생성</h4>
		<p class="clauseStyle">
			${use.proCreation }
		</p> 
	</div> 
	
	<div class="useContext">
	<h4 class="useTitle">후원의 신청 및 접수 등</h4>
		<p class="clauseStyle">
			${use.proSupport }
		</p> 
	</div> 
	
	<div class="useContext">
	<h4 class="useTitle">기타</h4>
		<p class="clauseStyle">
			${use.proEtc }
		</p> 
	</div> 
</c:forEach>
</div>

    <!-- ===== 이용약관 페이지 end ===== -->  
   
  <jsp:include page="footer.jsp"/>
   
 
  <script src="js/jQuery_v3.1.1.min.js"></script>
  <script src="js/owl.carousel.min.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <script src="js/jquery.magnific-popup.js"></script>
  <script src="js/jquery.firstVisitPopup.js"></script>
  <script src="js/custom.js"></script>
</body>

</html>