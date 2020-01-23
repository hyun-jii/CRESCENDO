
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
  
  <link rel="stylesheet" type="text/css" href="css/magnific-popup.css">
  <link rel="stylesheet" type="text/css" href="css/owl.carousel.css">
  <link rel="shortcut icon" href="images/favicon.png">
  <link rel="apple-touch-icon" href="images/apple-touch-icon.png">
  <link rel="apple-touch-icon" sizes="72x72" href="images/apple-touch-icon-72x72.png">
  <link rel="apple-touch-icon" sizes="114x114" href="images/apple-touch-icon-114x114.png">
   <script src="https://kit.fontawesome.com/b7c292b54b.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" type="text/css" href="css/Main.css">
    <link rel="stylesheet" type="text/css" href="<%=cp %>/css/style.css">
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
		$(".b1").click(function()
		{
			if($("#ab1").prop("checked")!=true || $("#ab2").prop("checked")!=true || $("#ab3").prop("checked")!=true || $("#ab4").prop("checked")!=true || $("#ab5").prop("checked")!=true)
			{
				alert("필수 약관에 동의를 전부 해주셔야 합니다.");
			}
			else
			{
				$(location).attr("href","step1insert.action");		
			}

		});
	});
</script>


 
</head>

<body>

 <jsp:include page="top.jsp"/>
 
    
      <!-- 약관박스-->
      <div class="promise_box">
        <div class="pro_innerbox">
      	<div class="maketitle">프로젝트를 올리기 전에 확인해 주세요.</div>
    	
    	<div class="maket1">크레센도는 공개 검토 절차를 통해 창작자님이 작성한 프로젝트가 크레센도의 정책을 준수하는지 확인하고 있습니다.
아래 사항들을 확인한 후 프로젝트를 올려 주세요.</div>
		<hr>
		<div class="check1">

			<div class="c1"><label id="abc1"><input type="checkbox" class="cc" id="ab1">새로운 아이디어를 실현하기 위한 프로젝트입니다.</label></div>
			<div class="c1"><label id="abc2"><input type="checkbox" class="cc" id="ab2">성인 인증이 필요한 콘텐츠 등 기준에 맞지 않는 선물을 제공하지 않습니다.</label></div>
			<div class="c1"><label id="abc3"><input type="checkbox" class="cc" id="ab3">창작자의 신분증, 사업자등록증, 국내 은행 계좌, 연락 가능한 본인 휴대폰 번호가 있습니다.</label></div>
			<div class="c1"><label id="abc4"><input type="checkbox" class="cc" id="ab4">이미 시판된 제품, 현금이나 지분 등 수익 제공, 선물 없는 단순 기부를 하지않습니다.</label></div>
			<div class="c1"><label id="abc5"><input type="checkbox" class="cc" id="ab5">창작자 대표자는 19세 이상 성인입니다.</label></div>

			<br>
			<button class="b1" type="submit">계속하기</button>
		</div>
		
		
    	</div>
      </div>
      <!-- 약관박스끝 -->
     
      
      
     
      <!-- =====  FOOTER START  ===== -->
    

    <jsp:include page="footer.jsp"/>
    <!-- =====  FOOTER END  ===== -->
  
  <script src="js/jQuery_v3.1.1.min.js"></script>
  <script src="js/owl.carousel.min.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <script src="js/jquery.magnific-popup.js"></script>
  <script src="js/jquery.firstVisitPopup.js"></script>
  <script src="js/custom.js"></script>
</body>


</html>