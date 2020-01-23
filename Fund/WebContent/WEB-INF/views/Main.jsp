
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

<title>Main.jsp</title>
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
<link rel="apple-touch-icon" sizes="72x72" href="images/apple-touch-icon-72x72.png">
<link rel="apple-touch-icon" sizes="114x114" href="images/apple-touch-icon-114x114.png">
<link rel="stylesheet" type="text/css" href="<%=cp%>/css/Main.css">
<link rel="stylesheet" type="text/css" href="<%=cp%>/css/menubar.css">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script type="text/javascript">
   function w3_open()
   {
      document.getElementById("mySidebar").style.display = "block";
   }

   function w3_close()
   {
      document.getElementById("mySidebar").style.display = "none";
   }
   
   
   $(function()
   {
	   /* 프로젝트 올리기 클릭 시 로그인 여부 */
		$("#createProject").click(function()
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
						
						//	alert("로그인이 필요한 서비스입니다.");
						
						<%-- $(location).attr("href","<%=cp%>/loginform.action"); --%>
					}
				}
				
			});
		});
		
	    /* 검색어 추천 */
		$("#search-box").keyup(function() 
		{
			
			$.ajax({
				type : "GET",
				url : "<%=cp%>/searchbox.action",
				data : {"keyword" : $(this).val() },
				dataType: "json",
				contentType : "application/json; charset=UTF-8", 
				success : function(str)
				{

					console.log("Stringify내용 : " +JSON.stringify(str));
					//console.log("그 내용중 prjtitle만 뽑은 값 : " + JSON.stringify(str,['prjTitle']);
					
					//json데이터 사용법
					//첫번째 배열(로우)에 key(컬럼) 이름이 prjTitle인경우
					console.log(str[0]["prjTitle"]);
					
					//또는 2번째 배열에 컬럼이 prjTitle인경우
					//str[1]["prjTitle"] 이런식으로 쓰면 돼!
					
					
					$("#suggestion-box").text(str[0]["prjTitle"]);
					
				}
				
			});
			
		}); 
	    /* 검색기능 */
		$("#searchBtn").click(function()
		{
			var keyword = $("#search-box").val();
			var caNum = 0;
			
			$(location).attr("href", "<%=cp%>/search.action?prjTitle=" + keyword);
		});
		
		
	})
				
      
</script>
<style>
/* 검색 클릭시 파란 테두리 안보이게 설정 */
#searchBtn:focus
{
outline: none;
}

</style>

</head>


<body>



<jsp:include page="top.jsp"></jsp:include>

<!-- ====HEADER===== -->
<div class="header" style="margin-top: 40px;">
   <div class="con">

      <div class="this"
         style="width: 100%; height: 340px;">

         <div class="row">
            <div class="col-xs-12 col-sm-12"
               style="float: left; margin-top: 60px;">
               <div class="contitle">123만건의 거래, 98.2%의 만족도</div>
               <div class="contitle2">펀딩의 시작,크레센도</div>

				<!-- 검색 -->
               <div class="main-search mt_60">
                  <input id="search-box" name="search-box"
                     placeholder="검색어를 입력하세요." class="form-control input-lg"
                     autocomplete="off" type="text"
                     style="font-size: 20px; border-radius: 6px; margin-top: -30px; width:100%;">
					<div id="items">
					<c:forEach var="list" items="${searchBoxTitle }">
					<div class="item">
						${list.prjTitle }
					</div>
					</c:forEach>
					</div>
					<div id="suggestion-box"></div>
					
				  <!-- 검색 버튼 -->                     
                  <span class="input-group-btn">
                     <button type="button" id="searchBtn" class="btn btn-default btn-lg"
                        style="margin-top: -20px; margin-left: -15px;">
                        <i style="font-size: 30px" class="fa fa-search"></i>
                    </button>
                   </span> 
                   <img src="images/brand/brandc.png" class="cloud">
                   	
               </div>

			<!-- 프로젝트 올리기 -->
			<div class="ss">
				<input type="hidden" id="userEmail" name="userEmail" value="${sessionScope.user.userEmail }">
					<a id="createProject" >프로젝트 올리기&nbsp;<i class="fas fa-angle-right"></i></a>
			</div>
		</div>
	  </div>
	</div>
  </div>
</div>

<!-- =====  HEADER END  ===== -->

<!--메인이미지-->

<!-- =====  CONTAINER START  ===== -->
<div class="container">
<!-- =====  SUB BANNER  STRAT ===== -->
<div class="row ">
   <div class="col-sm-12 mt_30">
      <!-- =====  PRODUCT TAB  ===== -->
      <!-- 인기있는 프로젝트 -->
      <div id="product-tab" class="mt_10">
         <div class="heading-part mb_10 ">
            <h2 class="main_title">
               인기있는 프로젝트&nbsp;<i class="fas fa-chevron-right"></i>
            </h2>
         </div>
<!-- 상품1줄 (4개시작 총 6개)  -->
<div class="tab-content clearfix box">
   <div class="tab-pane active" id="nArrivals">
      <div class="nArrivals owl-carousel">
      
      	<c:forEach var="list" items="${mainList_popular }">
         <div class="product-grid">
            <div class="item">
               <div class="product-thumb">
                  <div class="image product-imageblock">
                     <a href="<%=cp%>/projectdetail.action?proNum=${list.proNum}&userNum=${list.userNum}" style="vertical-align: -webkit-baseline-middle;""> <img
                        data-name="product_image" src="upload/${list.prjImg }"
                        class="img-responsive"> <img
                        src="upload/${list.prjImg }" alt="iPod Classic"
                        title="iPod Classic" class="img-responsive">
                     </a>
                     <div class="button-group text-center"></div>
                  </div>
                  <div class="caption product-detail text-center">
                     <h6 data-name="product_name" class="product-name" style="height: 50px; margin-top: 15px;">
                        <a href="#" title="${list.prjTitle }" style="color: black; font-weight: bold; font-size: 15px; ">${list.prjTitle }</a>
                     </h6>
                    <!-- 프로그래스바 시작 -->
					<div class="progress" style="margin-top: 5px; margin-bottom: 10px;">
						<div class="progress-bar" role="progressbar"
						aria-valuenow="${list.percent }" aria-valuemin="0" aria-valuemax="100"
						style="width: ${list.percent}%; background-color: red;">
							<span class="sr-only">70% Complete</span>
						</div>
					</div>
					<!-- end progressbar-->
					<!-- 창작자 이름 -->
					<span style="font-size: 15px; font-weight: bold; ">&nbsp;${list.maName }</span>
					<!-- 남은기간, 현재 총 후원금액 -->
					<div>
						<span class="c" style="float: left">
						<i class="fas fa-calendar-alt"></i></span> 
						<span class="b" style="float: left; margin-left: 6px;">
						<p>${list.remainDay }일남음</p></span>
						<span class="c" style="float: right"><p>${list.totalMoney }원</p></span>
					</div>
			         </div>
			      </div>
			   </div>
			</div>
			</c:forEach>
   		</div>
	</div>
 
<!-- 마감임박 프로젝트 -->
<div class="col-sm-12 mt_30">
   <!-- =====  PRODUCT TAB  ===== -->
<div id="product-tab" class="mt_10">
   <div class="heading-part mb_10 ">
      <h2 class="main_title">
         마감임박 프로젝트&nbsp;<i class="fas fa-chevron-right"></i>
      </h2>
   </div>
   <!-- 상품1줄 (4개시작)  -->
<div class="tab-content clearfix box">
   <div class="tab-pane active" id="nArrivals">
      <div class="nArrivals owl-carousel">
      
      	<c:forEach var="list" items="${mainList_deadline }">
         <div class="product-grid">
            <div class="item">
               <div class="product-thumb">
                  <div class="image product-imageblock">
                     <a href="<%=cp%>/projectdetail.action?proNum=${list.proNum}&userNum=${list.userNum}" style="vertical-align: -webkit-baseline-middle;"> <img
                        data-name="product_image" src="upload/${list.prjImg }"
                        class="img-responsive"> <img
                        src="upload/${list.prjImg }" alt="iPod Classic"
                        title="iPod Classic" class="img-responsive">
                     </a>
                     <div class="button-group text-center"></div>
                  </div>
                  <div class="caption product-detail text-center">
                     <h6 data-name="product_name" class="product-name" style="height: 50px; margin-top: 15px;">
                        <a href="#" title="${list.prjTitle }" style="color: black; font-weight: bold; font-size: 15px;">${list.prjTitle }</a>
                     </h6>
                    <!-- 프로그래스바 시작 -->
					<div class="progress" style="margin-top: 5px; margin-bottom: 10px;">
						<div class="progress-bar" role="progressbar"
						aria-valuenow="${list.percent }" aria-valuemin="0" aria-valuemax="100"
						style="width: ${list.percent}%; background-color: red;">
							<span class="sr-only">70% Complete</span>
						</div>
					</div>
					<!-- end progressbar-->
					<!-- 창작자 이름 -->
					<span style="font-size: 15px; font-weight: bold;">&nbsp;${list.maName }</span>
					<!-- 남은기간, 현재 총 후원금액 -->
					<div>
						<span class="c" style="float: left">
						<i class="fas fa-calendar-alt"></i></span> 
						<span class="b" style="float: left; margin-left: 6px;">
						<p>${list.remainDay }일남음</p></span> 
						<span class="c" style="float: right"><p>${list.totalMoney }원</p></span>
					</div>
			         </div>
			      </div>
			   </div>
			</div>
			</c:forEach>
      </div>
   </div>

<!-- 신규 프로젝트 -->   
<div class="col-sm-12 mt_30">
   <!-- =====  PRODUCT TAB  ===== -->
   <div id="product-tab" class="mt_10">
      <div class="heading-part mb_10 ">
         <h2 class="main_title">
            신규 프로젝트&nbsp;<i class="fas fa-chevron-right"></i>
         </h2>
      </div>
      <!-- 상품1줄 (4개시작)  -->
      <div class="tab-content clearfix box">
         <div class="tab-pane active" id="nArrivals">
            <div class="nArrivals owl-carousel">
            
             <c:forEach var="list" items="${mainList_new }">
         <div class="product-grid">
            <div class="item">
               <div class="product-thumb">
               	  <!-- 프로젝트 대표 이미지 -->
                  <div class="image product-imageblock">
                     <a href="<%=cp%>/projectdetail.action?proNum=${list.proNum}&userNum=${list.userNum}" style="vertical-align: -webkit-baseline-middle;"> 
                     <img data-name="product_image" src="upload/${list.prjImg }"

                        class="img-responsive"> 
                        <img src="upload/${list.prjImg }" alt="iPod Classic"

                        title="iPod Classic" class="img-responsive">
                     </a>
                     <div class="button-group text-center"></div>
                  </div>
                  <div class="caption product-detail text-center">
                     <h6 data-name="product_name" class="product-name" style="height: 50px; margin-top: 15px;">
                        <a href="#" title="${list.prjTitle }" style="color: black; font-weight: bold; font-size: 15px;">${list.prjTitle }</a>
                     </h6>
                    <!-- 프로그래스바 시작 -->
					<div class="progress" style="margin-top: 5px; margin-bottom: 10px;">
						<div class="progress-bar" role="progressbar"
						aria-valuenow="${list.percent }" aria-valuemin="0" aria-valuemax="100"
						style="max-width:100%; width: ${list.percent}%; background-color: red;">	
							<span class="sr-only">70% Complete</span>
						</div>
					</div>
					<!-- end progressbar-->
					<!-- 창작자 이름 -->
					<span style="font-size: 15px; font-weight: bold; ">&nbsp;${list.maName }</span>
					<!-- 남은기간, 현재 총 후원금액 -->
					<div>
						<span class="c" style="float: left">
						<i class="fas fa-calendar-alt"></i></span> 
						<span class="b" style="float: left; margin-left: 6px;">
						<p>${list.remainDay }일남음</p></span> 
						<span class="c" style="float: right"><p>${list.totalMoney }원</p></span>
					</div>
			         </div>
			      </div>
			   </div>
			</div>
			</c:forEach>
           </div>
         </div>
       </div>
       <br>
       <br>
       <hr>
            
       <!-- 카테고리 아이콘 -->     
            <div id="brand_carouse" class="ptb_60 text-center">
               <div class="type-01">
                  <div class="heading-part mb_10 "></div>
                  <h2 class="catitle" style="text-align: center">어떤
                     카테고리가 흥미로우신가요?</h2>
                  <p class="catitles">크레센도에는 다양한 종류의 펀딩이 준비되어 있습니다</p>
                  <br>
                  <div class="row">
                     <div class="col-sm-12">
                        <div class="brand owl-carousel ptb_20">
                        
                        <!-- 카테고리 아이콘 -->
                        <c:forEach var="category" items="${category }">
                        	<div class="item text-center">
                        		<a href="<%=cp%>/category.action?caNum=${category.caNum}">
                        			<!-- 공예품 -->
                        			<c:if test="${category.caNum == 1 }">
                        			<img src="images/brand/brand4.png" alt="Disney" class="img-responsive" />
                        			<span style="font-size: 20px; font-weight: bold;">${category.caName }</span>
                        			</c:if>
                        			<!-- 의류 -->
                        			<c:if test="${category.caNum == 2 }">
                        			<img src="images/brand/brand2.png" alt="Dell" class="img-responsive" />
                        			<span style="font-size: 20px; font-weight: bold;">${category.caName }</span>
                        			</c:if>
                        			<!-- 음악 -->
                        			<c:if test="${category.caNum == 3 }">
                        			<img src="images/brand/brand6.png" alt="Harley" class="img-responsive" />
                        			<span style="font-size: 20px; font-weight: bold;">${category.caName }</span>
                        			</c:if>
                        			<!-- 출판 -->
                        			<c:if test="${category.caNum == 4 }">
                        			<img src="images/brand/brand1.png" alt="Canon" class="img-responsive" />
                        			<span style="font-size: 20px; font-weight: bold;">${category.caName }</span>
                        			</c:if>
                        			<!-- 공연 -->
                        			<c:if test="${category.caNum == 5 }">
                        			<img src="images/brand/brand3.png" alt="Canon" class="img-responsive" />
                        			<span style="font-size: 20px; font-weight: bold;">${category.caName }</span>
                        			</c:if>
                        			<!-- 기술 -->
                        			<c:if test="${category.caNum == 6 }">
                        			<img src="images/brand/brand5.png" alt="Canon" class="img-responsive" />
                        			<span style="font-size: 20px; font-weight: bold;">${category.caName }</span>
                        			</c:if>
                              	</a>
                        	</div>
                        </c:forEach>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
            </div>
            </div>
            </div>
            </div>
            </div>
            </div>
            </div>
            </div>
            </div>
            </div>
           
           
            
   <!-- =====  CONTAINER END  ===== -->
            
   <!-- ===== Footer ==== -->
   
   <jsp:include page="footer.jsp"/>
            

   <a id="scrollup"></a>
   <script src="js/jQuery_v3.1.1.min.js"></script>
   <script src="js/owl.carousel.min.js"></script>
   <script src="js/bootstrap.min.js"></script>
   <script src="js/jquery.magnific-popup.js"></script>
   <script src="js/jquery.firstVisitPopup.js"></script>
   <script src="js/custom.js"></script>
</body>


</html>