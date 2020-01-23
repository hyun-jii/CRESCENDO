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
  <title>회원가입 완료</title>
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
  	<!-- Swal 추가 -->
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@8"></script>

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
  
  <!-- 내가 쓴 부분 -->
  <style type="text/css">
  
  .signup
  {
  	text-align: center;
  	margin-bottom: 50px;
  }
  .blank
  {
  	margin-top: 100px;
  }
  .loginparent
  {
    width: 500px;
    height: 40px;
    margin: 0 auto;
    text-align: center;
    }
  
  
  </style>
  
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  
  <!-- 내가 쓴 부분 -->
  
  
   <script src="https://kit.fontawesome.com/b7c292b54b.js" crossorigin="anonymous"></script>
   <style>
   @media(max-width:700px)
   {
    .login{margin-left:145px;}
    .no{display:none}
   	.navbar-brand {position:absolute; top:20px; left:160px;  padding:0; margin:0}
   }
   </style>
   <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
  
   <script>
   function w3_open() {
     document.getElementById("mySidebar").style.display = "block";
   }

   function w3_close() {
     document.getElementById("mySidebar").style.display = "none";
   }
   </script>


 
</head>

<body>
     <c:if test="${!empty msg}">
		<script>
		 
		Swal.fire
		( 
	 	'알림!'
	 	,'${msg}'
	 	, 'success'
		 )
		 
		 
		 
		 /* Swal.fire(
			  "환영!",
			  "${msg}",
			  imageUrl: 'https://image.flaticon.com/icons/png/512/2165/2165797.png'
			);
		 */
		//alert("${msg}")
		</script>
		<c:remove var="msg"/>
	</c:if>
    
	
  <jsp:include page="top.jsp"></jsp:include>
  
			
    <!-- 내용부분 -->
    
   <div class="container">
	
	   <div class="blank signup">
	   		<h2>크레센도의 가족이 되신걸 환영합니다.</h2>
	   </div>
	  
	   <div class="signup">
	   		<hr>
			<c:choose>
				<c:when test="${NaverUser !=null }">
					<h3>네이버 로그인으로 가입하셨습니다</h3>	
					<h4><c:out value="아이디:${NaverUser.userEmail }"></c:out></h4>
					<h4><c:out value="비밀번호:${NaverUser.userPw }"></c:out></h4>
				</c:when>
				<c:when test="${kuser != null }">
					<h3>카카오 로그인으로 가입하셨습니다</h3>
					<h4><c:out value="아이디:${kuser.userEmail }"></c:out></h4>
					<h4><c:out value="비밀번호:${kuser.userPw }"></c:out></h4>
				</c:when>
				<c:otherwise>
					<h3>회원가입이 정상적으로 완료되었습니다.</h3>
				</c:otherwise>
			</c:choose>
	   		<h3>로그인 후 정상적으로 이용이 가능합니다.</h3>
	   		<hr>
	   	<%-- 
		<c:if test="${!empty NaverUser || !empty KakaoUser }">
		<h3><c:out value="아이디:${user.userEmail }"></c:out></h3>
		<h3><c:out value="비밀번호:${user.userPw }"></c:out></h3>
		</c:if>
	   	 --%>	
	   	 
	   	 
	   	 
	   </div>
	   <div class="loginparent">
	   <button type="button" class="btn btn-primary"  style="margin:0" onclick="location.href='main.action'">메인으로</button>
	   </div>
   </div>
   
  <script src="js/jQuery_v3.1.1.min.js"></script>
  <script src="js/owl.carousel.min.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <script src="js/jquery.magnific-popup.js"></script>
  <script src="js/jquery.firstVisitPopup.js"></script>
  <script src="js/custom.js"></script>
</body>

</html>