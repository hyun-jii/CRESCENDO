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
  <title>Dark look E-commerce Bootstrap Template</title>
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
  
    .input[type="radio"], input[type="checkbox"]
  {
  	width:1%;
  }
  .buttonparents
  {
  	 width:60%;
  	 margin:0 auto;
  	 text-align: center;
  }
  
  .withCheck{float:left; width:400px;}
  .promiseForm{max-width:1100px; margin:0 auto;}
  .serviceH4{float:left;}
  .btnParent{width:15%; margin:0 auto; margin-bottom:70px;}
  .btnOrange{margin-right: 15px; margin-left: 15px; background-color:orange; border:none; color:#fff; border-radius: 2px; width:130px; height:30px;"}
  .btnOrange:focus{outline: none;}
  </style>
  
  <!-- 내가 쓴 부분 -->
  
  
   <script src="https://kit.fontawesome.com/b7c292b54b.js" crossorigin="anonymous"></script>
   <script src="//code.jquery.com/jquery-3.3.1.min.js"></script>
   <script type="text/javascript">
   // 회원가입 누르면 가입창으로 이동
    function sign()
   {
	var setChk ="";
	
	if(document.signups.check3.checked)
	{
		setChk += "회원가입 창으로 넘어갑니다.";
	}
	
    if($('#check1').prop('checked') == false || $('#check2').prop('checked') == false || $('#check3').prop('checked') == false)
	{
          alert('필수 약관에 동의 하셔야 합니다.');
	}
	else
	{
		
		alert(setChk);
		location.href="signupform.action";
	}
			
    }

   
   </script>
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
	
	<!-- 모두동의 체크 -->
    <script>
      $( document ).ready( function() {
        $( '.check-all' ).click( function() {
          $( '.ab' ).prop( 'checked', this.checked );
        } );
      } );
    </script>
    <!-- 모두동의 체크 -->
    
    
 
</head>

<body>

<jsp:include page="top.jsp"></jsp:include>
  
    <!-- 내용부분 -->

   <div class="blank signup">
   		<h2>회원가입을 시작하기 전에 확인해 주세요</h2>
   </div>
   
   <div class="signup">
   		<hr>
   		<h3>크레센도는 회원가입을 시작하기 전에 이용약관에 동의를 해주셔야 이용이 가능합니다.</h3>
   		<h3>이용약관에 동의하시고 크레센도를 이용해보세요!</h3>
   		<hr>
   </div>


	<c:forEach var="f" items="${ list }" varStatus="status">
		<tr role="row" class="odd">
			<td class="sorting_1">${ f.hNum }</td>
			<td><a href="#" target="_blank"
				style="text-decoration: none; color: gray;">${ f.hTitle}</a></td>
			<td>${ f.hDate}</td>
			<td>${ f.hDate}</td>
			<td>${ f.adminNum}</td>
			<td><button type="button" class="btn btn-info btn-sm btn-radius"
					style="width: 50px" value="${f.hNum }">수정</button></td>
			<td><button type="button" class="btn btn-info btn-sm btn-danger"
					style="width: 50px" value="${f.hNum }">삭제</button></td>
			
		</tr>
	</c:forEach>

	<div class="signup">
   		<span></span>
   </div>
   
   
   
   
   <form name ="signups" style="align-items: center;">
   		
   		<!-- <input type="text" value="내용을 읽고 약관에 동의해 주세요." disabled="disabled" style="width: 300px; "> -->
   		<!-- ■■■■■■■■■■ 이용약관 출력(회원가입) ■■■■■■■■■■-->
   		<c:forEach var="promiseList" items="${promise}">
   		<div class="promiseForm">
			<h4 class="serviceH4">서비스 이용</h4>
			<textarea readonly="readonly" class="t1" style="width:100%;">${promiseList.proService }</textarea>
			<div class="allow" style="text-align: center;">동의하시겠습니까? <input type="checkbox" id="check1" class="ab" style="width:5%; width:15px; height:15px; margin-top:10px;"></div>
			
			
			
   			<h4 class="serviceH4">회원 정보 관리</h4>
			<textarea readonly="readonly" class="t1" style="width:100%;">${promiseList.proUserInfo }</textarea>
			<div class="allow" style="text-align: center;">동의하시겠습니까? <input type="checkbox" id="check2" class="ab" style="width:5%;width:15px; height:15px; margin-top:10px;"></div>
			
			
			
   			<h4 class="serviceH4">회사와 회원의 권리 및 의무</h4>
			<textarea readonly="readonly" class="t1" style="width:100%;">${promiseList.proDuty }</textarea>
			<div class="allow" style="text-align: center;">동의하시겠습니까? <input type="checkbox" id="check3" class="ab" style="width:5%;width:15px; height:15px; margin-top:10px;"></div>
			
			<div class="allow" style="text-align: center; margin-top:10px;">모두동의&nbsp;<input type="checkbox"  name="all" class="check-all" style="width:5%;width:15px; height:15px; margin-top:10px;"></div>
			<br>
			<div class="btnParent">
   				<input type="button" value="회원 가입하기" onclick="sign()" class="btnOrange" id="lastCheck">
   			</div>
		</div>
   		</c:forEach>
   		<!-- ■■■■■■■■■■ 이용약관 출력(회원가입) 끝 ■■■■■■■■■■-->
   		
   		
   		
   </form>  

   
 <!--   <div class="buttonparents">
   <button type="button"  onclick="sign()">회원 가입하기</button>
   </div> -->
  
   


  <script src="js/jQuery_v3.1.1.min.js"></script>
  <script src="js/owl.carousel.min.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <script src="js/jquery.magnific-popup.js"></script>
  <script src="js/jquery.firstVisitPopup.js"></script>
  <script src="js/custom.js"></script>
</body>

</html>