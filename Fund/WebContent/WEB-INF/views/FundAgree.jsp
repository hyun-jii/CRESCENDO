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

  <title>FundAgree.jsp</title>
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

	<!-- 스크립트 처리부분 -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script type="text/javascript">
	$(document).ready(function()
	{
		var proNum = $("#proNum").val();
		
		$(".fundstart").click(function()
		{
			if($(".fundcheckbox").prop("checked")==false)
			{
				alert("필수 약관에 동의해주셔야 합니다.");
			}
			else
			{
				$(location).attr("href","fundstart.action?proNum=" + proNum);		
			}

		});
	});
</script>

<!-- ■내가 스타일 적용 부분■--------------------------------------------------------------------------- -->
<link rel="stylesheet" href="css/fundalert.css">
<!-- ---------------------------------------------------------------------------■내가 스타일 적용 부분■ -->
 
</head>

<body>

 <jsp:include page="top.jsp"/>      
    
    <!-- ■내가 한 부분■--------------------------------------------------------------------------- -->
    <div class="blank" style="height: 950px;">
	<div>
		<!-- 메인 바 들어갈 곳  -->
	</div>
	<input type="hidden" name="proNum" id="proNum" value="${proNum }">
	<!-- 후원 약관동의 큰 헤드 -->
	<div class="header" style="color: black;">
    <h1>후원을 시작하기 전에 확인해 주세요.</h1>
    <hr>
    
    <!-- 후원 약관동의 작은 헤드 -->
    <p id="middleTitle">크레센도는 후원을 시작하기 전에 후원에 대한 주의사항을 사전에 공지해드리고 있습니다.</p>
         <p id="middleTitle">주의사항을 확인한 후에 후원을 시작하세요.</p>
         <hr>
    </div>     
   
   	<!-- 후원약관 구문 -->
	<div class="fundpre">
	<pre>
펀딩한 리워드는 새롭게 준비하고 있는 제품・서비스입니다.
펀딩 후, 리워드를 제작・준비하는 크라우드펀딩 특성상, 품질 이슈가 발생할 수 있습니다.

제품 하자로 인한 교환/수리 시, 발생하는 비용은 전액 창작자가 부담합니다
리워드 수령 15일 내 동일 증상으로 2번 이상 수리 시, 환불 가능합니다.
리워드 수령 7일 이내 제품 하자로 인한 교환/수리 문의는 창작자에게 쪽지로 신청 가능합니다.
제품 하자가 아닌 후원자님 부주의로 인한 제품 손상은 책임지지 않습니다.
교환/환불/AS 요청자 정보와 후원자 정보의 일치 여부 확인 후, 진행됩니다.

※교환/환불/AS 불가능한 경우
- 후원자의 책임 있는 사유로 리워드가 멸실/훼손된 경우 
- 후원자의 사용/소비에 의해 리워드의 가치가 감소한 경우
- 시간 경과로 인해 재판매가 곤란할 정도로 리워드의 가치가 상실한 경우
- 후원자의 단순 변심
- 복제가 가능한 리워드의 포장을 훼손한 경우
- 펀딩/판매/생산방식 특성상, 교환/환불 시 창작자에게 회복할 수 없는 손해가 발생한 경우
	 (펀딩 마감 후, 개별 생산, 맞춤 제작 등)


<span class="red">펀딩한 리워드는 즉시 배송되지 않습니다.</span>
창작자가 약속한 리워드 발송 시작일을 확인하셨나요? 
창작자는 펀딩이 성공해야 리워드 제작・준비를 진행합니다.
리워드 펀딩 특성상 발송이 지연되거나 불가할 수 있으니, 메이커의 발송 지연 정책을 꼭 확인해주세요.
펀딩 받은 후, 리워드를 제작할 수 있는 크라우드펀딩의 특성과 생산 과정에서의 예상치 못한 상황으로 인하여 
리워드 발송이 지연되거나 발송이 불가할 수 있습니다.
	</pre>       	
	</div>
	
	  <!-- 후원 약관 동의 체크박스 및 시작하기 버튼 -->
	  <div class="fundAgree">
  		  <p><div class="agreeContext" style="text-align: center;"><input type="checkbox" class="fundcheckbox" style="width:17px; height: 17px;">내용을 읽고 약관에 동의해주세요.</div></p>
          <br>
          	 <a id="modal-331313" role="button" class="fundstart" style="height: 30px; width: 40px;">후원시작하기</a>
      </div>
      
      
</div>

			
	<!-- 후원 약관 푸터 -->
	<jsp:include page="footer.jsp"/>
	 
   

  <script src="js/jQuery_v3.1.1.min.js"></script>
  <script src="js/owl.carousel.min.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <script src="js/jquery.magnific-popup.js"></script>
  <script src="js/jquery.firstVisitPopup.js"></script>
  <script src="js/custom.js"></script>
</body>

</html>