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

  <title>Charge.jsp</title>
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

  <!-- 수수료약관 css 경로 -->
  <link rel="stylesheet" href="css/clause.css">
 
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
    
    
    <!-- ===== 수수료 약관 페이지 start ===== -->
    
<!-- 수수료정책 제목 -->
<div class="blank3">
	<h1>수수료 정책</h1>
	<h6>시행일 2019년 12월 04일</h6>
	<hr class="clauseLine">
</div>

<!-- 수수료 정책 내용 --> 
<div class="chargeContext">
<pre class="clauseStyle">
1. 프로젝트 심사기준 및 제출서류
1) 크레센도에서 펀딩을 진행하는 모든 프로젝트는 창작자의 신청을 접수한 크레센도 운영진의 공개 검토 절차를 거칩니다.
   프로젝트를 통해 만들고자 하는 것이 프로젝트 제안자의 고유한 창작물로 볼 수 있는지, 구체적인 펀딩 목표 및 창작에 대한 계획이 준비되었는지, 
   목표 달성과 선물 전달이 실현 가능한지와 같이 펀딩 진행에 필수적인 요소가 충족되었는지를 확인합니다.
   제안 주신 프로젝트에 아래 공개 반려 기준에 해당하는 사항이 있거나 크레센도 커뮤니티 운영원칙에 위배되는 경우에는 공개가 승인되지 않습니다.
   

   ※후원 선물이 프로젝트와 무관한 경우 
     선물에는 반드시 프로젝트를 통해 만들어지는 창작 활동의 결과물이 포함되어야 합니다. 
     유형이든 무형이든, 창조적인 시도의 결실을 후원자와 공유해주세요. 
     (단순 기부나 단순 모금, 지분 분배, 현금 등은 선물 구성으로 불가합니다.)
   
   ※후원 선물이 시중에 유통된 제품들로만 구성된 경우
     크레센도이 제공하는 후원형 크라우드펀딩은 후원자가 프로젝트와 창작물, 창작 동기, 창작자의 생각까지 모두 공감할 때에 후원을 통하여 창작에 
     참여할 수 있게 합니다. 
     이 때문에 펀딩은 이미 만들어진 제품을 사고파는 쇼핑과는 다소 결이 다르며, 이러한 펀딩 플랫폼의 특성에 따라 판매중인 제품, 판매되었던 
     제품만으로 후원 선물을 구성하는 경우에는 프로젝트 공개를 반려하고 있습니다.
     다만, 아래 2가지 내용이 확인되는 경우에는 펀딩 진행이 가능합니다.
   
   ※판매 중인 제품 혹은 판매되었던 제품과 함께 새로운 창작물을 메인 선물로 전달하는 경우
     판매 중인, 판매되었던 제품과 달리 새로운 창작물로 볼 수 있는 업그레이드 사항이 있는 경우
   
   ※창작보다 논란·분쟁을 일으킬 목적이 크다고 판단되는 경우
     특정인, 특정 계층을 겨냥한 모욕이나 혐오 표현을 포함한 프로젝트는 공개할 수 없습니다. 
     사회적 소수자 또는 약자에 대한 폭력이나 혐오를 조장하는 의도가 있다고 판단되는 프로젝트는 엄격히 금지됩니다.
   
   ※개발/제작 계획과 현 단계에 대한 설명이 불충분한 경우
     완성되기까지 비교적 오랜 기간과 많은 자원이 투입되는 프로젝트들은 신뢰성 차원에서 상세한 제작 계획과 현 단계에 대한 설명을 해야 합니다.
   
   영화 프로젝트의 경우 배우와 스태프 캐스팅 완료 여부, 시나리오 완성 여부, 촬영 장소 및 일정, 시사회 일정 등이 갖추어졌는지 확인하고 있습니다.
   게임, 소프트웨어, 테크놀로지 프로젝트의 경우 제작에 필요한 기기나 엔진이 확정되었는지, 프로토타입이 제작되어있는지 등을 확인하고 있습니다.
   공연 또는 전시 프로젝트의 경우, 장소 및 일정 등이 갖춰졌는지 확인하고 있습니다.
   음악 프로젝트의 경우, 앨범 작업 일정, 발매 일정 등이 갖춰졌는지 확인하고 있습니다.
   작동 가능한 프로토타입 또는 시제품이 없는 경우
   후원자와 플랫폼의 신뢰와 안전을 위해, 제품의 샘플 이미지 혹은 주요 기능 구현이 검증된 상태여야만 펀딩 진행이 가능합니다.
   표현상 지나친 과장 또는 공인되지 않은 사실이 명시되어 있는 경우
   창작물의 실물이나 기능에 혼동을 불러일으키는 표현이나 부정확한 사실 기재, 필요로 하는 정보가 빠진 프로젝트는 반려하고 있습니다.
   프로젝트의 펀딩 목표나 계획에 현실성이 부족하다고 판단되는 경우
   프로젝트의 내용상 목표 달성 및 선물 전달이 현실적으로 어려울 것으로 판단되는 프로젝트는 반려할 수 있습니다.
   현행법을 위반하는 경우
   대한민국 현행법 위반 소지가 있는 경우 프로젝트를 진행하실 수 없습니다. 
   크레센도 서비스 및 기업 이미지에 부정적 영향을 미칠 것으로 우려되는 경우
   정황상 크레센도 서비스 및 기업 이미지에 큰 부정적 영향을 미칠 것이라고 우려되는 프로젝트는 반려하고 있습니다.
   이 외에도 후원자에게 제공하는 선물의 제한요건, 디지털 선물일 경우 추가로 적용받는 요건 등 공개 검토 단계에서 적용받는 
   구체적인 기준은 크레센도 사이트에서 확인해야 합니다. 
   공개 검토 가이드는 프로젝트 내용에 따라 다르게 적용될 수 있습니다.
   
2) 프로젝트 공개검토를 통과한 이후, 프로젝트 론칭 전까지 아래의 서류를 제출해야 합니다. 
서류제출요건이 충족되지 못할 경우, 프로젝트 론칭이 지연되거나 반려, 취소될 수 있습니다.
	● 법인사업자인 경우: 사업자등록증, 통장 사본 (대리인이 있을 경우, 신분증사본, 위임장 추가)
	● 개인사업자인 경우: 사업자등록증, 통장 사본
	● 개인인 경우: 신분증 사본, 통장 사본
   모든 서류는 제출일 현재 및 프로젝트 종료 시까지 유효한 것이어야 합니다.
	
2. 이용 수수료
창작자는 프로젝트 기금 모집이 "성사"되면 크레센도에게 수수료를 지급하여야 합니다. 
수수료에는 플랫폼 수수료와 결제 등 대행수수료가 있습니다.
플랫폼 수수료: 크레센도 플랫폼 서비스를 이용함에 따라 발생하는 수수료로 총 모인 금액의 5%(부가세 별도)입니다.
결제 등 대행수수료: 해당 수수료는 결제 완료된 금액의 3%(부가가치세 별도)이며, 프로젝트 진행에 따라 발생하는 결제/정산/송금/고객응대 등 
업무대행을 위한 수수료입니다.
결제대행사 수수료는 신용카드, 계좌이체, 간편결제 등 후원자의 결제 시 발생하는 수수료입니다
송금수수료는 결제 및 정산이 마무리된 이후 창작자에게 송금 시에 발생하는 금액입니다.
정산/업무지원 및 대행 수수료는 프로젝트 론칭 이후부터 프로젝트 종료 시까지, 또는 그 이후로도 발생하는 고객 관련 업무 (문자발송 등 포함)를 
지원하거나 대행해 드리는 데 대한 수수료입니다.
</pre>
</div> <!-- end chargeContext -->  

<div class="modal fade" id="logoutModal" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">로그아웃</h5>
					<button class="close" type="button" data-dismiss="modal"
						aria-label="Close" style="float: right;">
						<span aria-hidden="true" style="float: right;">×</span>
					</button>
				</div>
				<div class="modal-body">로그아웃 시 메인 페이지로 이동합니다.</div>
				<div class="modal-footer">
					<button class="btn btn-secondary" type="button"
						data-dismiss="modal">Cancel</button>
					<a class="btn btn-primary" href="adminlogout.action">Logout</a>
				</div>
			</div>
		</div>
	</div>
	
	
 
<!-- ===== 수수료 약관 페이지 end ===== -->  
   
  <script src="js/jQuery_v3.1.1.min.js"></script>
  <script src="js/owl.carousel.min.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <script src="js/jquery.magnific-popup.js"></script>
  <script src="js/jquery.firstVisitPopup.js"></script>
  <script src="js/custom.js"></script>
  
  
	<!-- Bootstrap core JavaScript-->
	<!-- <script src="vendor/jquery/jquery.min.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
 -->
	<!-- Core plugin JavaScript-->
	<script src="vendor/jquery-easing/jquery.easing.min.js"></script>

	<!-- Custom scripts for all pages-->
	<!-- <script src="js/sb-admin-2.min.js"></script>
 -->
	<!-- Page level plugins -->
	<script src="vendor/chart.js/Chart.min.js"></script>
	<script src="vendor/datatables/jquery.dataTables.js"></script>
	<script src="vendor/datatables/dataTables.bootstrap4.js"></script>

	<!-- Page level custom scripts -->
	<!-- <script src="js/demo/chart-area-demo.js"></script>
	<script src="js/demo/chart-pie-demo.js"></script>
 -->
	<!-- Demo scripts for this page-->
	<script src="js/demo/datatables-demo.js"></script>
	
	
	
	
</body>

</html>