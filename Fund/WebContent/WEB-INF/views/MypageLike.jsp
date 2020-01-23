<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">
<meta name="viewport" content="width=device-width">
<!-- =====  CSS  ===== -->
<link rel="stylesheet" type="text/css" href="css/font-awesome.min.css" />
<link rel="stylesheet" type="text/css" href="css/bootstrap.css" />
<link rel="stylesheet" type="text/css" href="css/style.css">
<link rel="stylesheet" type="text/css" href="css/magnific-popup.css">
<link rel="stylesheet" type="text/css" href="css/owl.carousel.css">
<link rel="shortcut icon" href="images/favicon.png">
<link rel="apple-touch-icon" href="images/apple-touch-icon.png">
<link rel="apple-touch-icon" sizes="72x72"
	href="images/apple-touch-icon-72x72.png">
<link rel="apple-touch-icon" sizes="114x114"
	href="images/apple-touch-icon-114x114.png">
<script src="https://kit.fontawesome.com/b7c292b54b.js"
	crossorigin="anonymous"></script>
<link rel="stylesheet" type="text/css" href="<%=cp%>/css/Main.css">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" type="text/css" href="<%=cp%>/css/mypage.css">


<!-- ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■ -->
<!-- css파일 따로 적용한 부분 -->
<link rel="stylesheet" href="css/mypagelike.css">
<link rel="stylesheet" href="css/makeproject.css">
<!-- ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■ -->

<script>
	function w3_open()
	{
		document.getElementById("mySidebar").style.display = "block";
	}

	function w3_close()
	{
		document.getElementById("mySidebar").style.display = "none";
	}
</script>
<style>
@media ( max-width : 768px) {
	.vmenu h4 a {
		font-size: 15px;
		font-weight: bold;
	}
}

@media ( max-width : 500px) {
	.vmenu h4 a {
		font-size: 5px;
		font-weight: bold;
	}
}
.zzimCount{font-size: 21px; font-weight: bold; color:#fa6462;}
</style>


</head>

<body>

	<jsp:include page="top.jsp"></jsp:include>
 	
			<!-- 사이드 넣기 전에 꼭 넣어주어야할 3가지 -->
			<div class="col-md-12 col-sm-12 col-xs-12" style="margin:0 auto; margin-top:40px; width:100%;">
			<div class="row" style="margin:0 auto; max-width:1200px;">
			<div class="modu" style="width:1200px; margin:0 auto;">
			<!-- 마이페이지 사이드 넣기 -->
			<!-- MypageSide가 col-md-2 col-sm-4 col-xs-4 이것이기 때문에 -->
			<jsp:include page="MypageSide.jsp"></jsp:include>
			
			<!-- 여기서부터 시작  이거 꼭 넣어주어야 함-->
			<div class="col-md-10 col-sm-8 col-xs-8" style="float:left; height: 150vh; ">
					
				

						<!-- ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■ -->
						<!-- 마이페이지 찜하기 내용 큰 머리 부분  -->
						<div class="all_like">
							<div class="content">
								<div class="mypage_image">
									<div class="zzim">
										<i class="fas fa-user-circle"
											style="font-size: 100px; margin-top: 100px;"></i>
									</div>
									<div class="mypage_liketext">
										<p>내가 찜한 프로젝트 ★</p>
									</div>
								</div>
								<div class="makeCount">찜한 프로젝트&nbsp;<span class="zzimCount">${count}</span>개</div>
								<!-- 마이페이지 찜한 프로젝트 나열 부분 1  -->
								<div>
								   <c:forEach var="likeList" items="${data }">
									<div class="product-grid">
										<div class="item">
											<div class="product-thumb_like">
										     <div class="image product-imageblock">
												 <a href="<%=cp%>/projectdetail.action?proNum=${likeList.proNum}&userNum=${likeList.userNum}"><img
													 data-name="product_image" src="images/product/sum1.jpg"
													 class="img-responsive"></a>
													  <p style="font-size: 15px;">
													  <c:if test="${likeList.likeDate != null}">
													  찜한날짜 : ${likeList.likeDate }
													  <a onclick="if(confirm('찜을 해제하시겠습니까?'))location.href='likedelete.action?proNum=${likeList.proNum }&userNum=${likeList.userNum }'" >
													  <i class="fas fa-star" style="color:orange"></i>
													  </a>
													  </c:if>
													   </p>
													
   										      <div class="button-group text-center"></div>
											  </div>
										      <div class="caption product-detail text-center">
							                     <h6 data-name="product_name" class="product-name" style="height: 70px; margin-top: 15px;">
							                        <a href="#" title="${likeList.prjTitle }" style="color: black; font-weight: bold; font-size: 15px;
							                        vertical-align: -webkit-baseline-middle;">${likeList.prjTitle }</a>
							                     </h6>
							                    <!-- 프로그래스바 시작 -->
												   <div class="progress" style="margin-top: 5px; margin-bottom: 10px;">
													 <div class="progress-bar" role="progressbar"
													 aria-valuenow="${likeList.percent }" aria-valuemin="0" aria-valuemax="100"
													 style="width: ${likeList.percent}%; background-color: red;">
													 </div>
												   </div>
												   <!-- end progressbar-->
												   <!-- 창작자 이름 -->
												    <span style="font-size: 15px; font-weight: bold; ">&nbsp;${likeList.maName }</span>
												   <!-- 남은기간, 현재 총 후원금액 -->
												    <div>
													 <span class="c" style="float: left">
													 <i class="fas fa-calendar-alt"></i></span> 
													 <span class="b" style="float: left; margin-left: 6px;">
													 <p>${likeList.remainDay }일남음</p></span> 
													 <span class="c" style="float: right"><p>${likeList.totalMoney }원</p></span>
												  </div>
											  </div>
										   </div>
										</div>
									 </div>
									</c:forEach>
			
							  </div>
							</div>
						</div>
					</div>
					<!-- ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■ -->
				</div>
		 </div><!-- modu 끝 -->
	</div><!-- row 끝 -->





		<script src="js/jQuery_v3.1.1.min.js"></script>
		<script src="js/owl.carousel.min.js"></script>
		<script src="js/bootstrap.min.js"></script>
		<script src="js/jquery.magnific-popup.js"></script>
		<script src="js/jquery.firstVisitPopup.js"></script>
		<script src="js/custom.js"></script>
</body>

</html>