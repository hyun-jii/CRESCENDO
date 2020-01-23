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
  <title>crescendo</title>
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
   <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
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

<!-- ■내가 한 부분■ --------------------------------------------------------------------------  -->
<link rel="stylesheet" href="css/rewardselect.css">
<!--  -------------------------------------------------------------------------- ■내가 한 부분■ -->

 
</head>

<body>
   	<jsp:include page="top.jsp"/>
    
    <!-- ■내가 한 부분■ --------------------------------------------------------------------------  -->
    <div class="wpurchase-reward">
	<div class="top-area" style="margin-top: 100px;">
	
		<br>
		<h3>리워드 선택</h3>
		<hr>
	</div>
	

	<div class="reward-list" data-rid="one" style="width: 65%;">
	<input type="hidden" name="proNum" id="proNum" value="${proNum }">
		<ul>
		<c:forEach var="f" items="${fund }" varStatus="status">
		
			<li>
			
			<a href="<%=cp%>/fundcredit.action?proNum=${proNum }&reNum=${f.reNum }">
				<dl class="reward-box">
					<dt>
						<!-- <label for="rewardCheck" style="cursor:pointer;" class="reward_checkbox"> -->
							<p class="sum" id="reMoney">${f.reMoney }원</p>
							&nbsp;&nbsp;&nbsp;&nbsp;
							<p class="number" id="reName">${f.reName }
							&nbsp;&nbsp;&nbsp;&nbsp;
							<p class="text" id="reContent">${f.reContent }</p>
							
						
							&nbsp;&nbsp;&nbsp;
							<p class="date" id="maPredict">
					
							| 리워드 제공 예상일 :		
							 	<em>${f.maPredict }</em></p><br>
							
						<!-- </label> -->
					</dt>
				</dl>
				</a>
			</li>
			
			
		</c:forEach>
		</ul>
		<hr>
		<div class="rewardSelectBtn">
			<button class="fundCancel" type="button" onclick="location.href='projectdetail.action?proNum=${proNum}&userNum=${sessionScope.user.userNum}'" style="margin-bottom: 200px;">취소</button>
		</div>	
	</div>

</div>

<jsp:include page="footer.jsp"/> 
    <!-- -------------------------------------------------------------------------- ■내가 한 부분■ -->
  
   
  <a id="scrollup"></a>
  <script src="js/jQuery_v3.1.1.min.js"></script>
  <script src="js/owl.carousel.min.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <script src="js/jquery.magnific-popup.js"></script>
  <script src="js/jquery.firstVisitPopup.js"></script>
  <script src="js/custom.js"></script>
</body>

</html>