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

  <title>Top.jsp</title>
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
  <link rel="stylesheet" type="text/css" href="<%=cp %>/css/mypage.css">
  <link rel="stylesheet" type="text/css" href="<%=cp %>/css/modal.css">
  <link rel="stylesheet" href="css/signupview2.css">
  
  
<!--   내가 쓴 부분
 -->  <style type="text/css">
  
  .signup
  {
  	text-align: center;
  	margin-bottom: 50px;
  }
  .blank
  {
  	margin-top: 100px;
  }
  
  .tds
  {
  	padding-bottom: 10px;
  }
  
  
  </style>
  
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  
  <!-- 내가 쓴 부분 -->
  
  
   <script src="https://kit.fontawesome.com/b7c292b54b.js" crossorigin="anonymous"></script>
   <style>
   @media(max-width:700px)
   { 	
   	#selectoption{width:75px}
   	}

   	@media(min-width:720px)
   	{
   			#selectoption{width:25%; }
   	}
   
 

   </style>
  
  <!-- 주소API -->
<script src="https://ssl.daumcdn.net/dmaps/map_js_init/postcode.v2.js"></script>

<script type="text/javascript">

function openZipSearch() {
    /*  var userAddr =$("#addr1").val().trim() + $("#addr2").val().trim(); */
	new daum.Postcode({
		oncomplete: function(data) {
			$('[name=zipCode]').val(data.zonecode); // 우편번호 (5자리)
			$('[name=userAddr]').val(data.address);
			$('[name=userAddr]').val(data.buildingName);
		   /*  $("#userAddr").show(); */
		}
	}).open();
} 

</script>
  
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

	<jsp:include page="/WEB-INF/views/top.jsp"/>
	
	
    <!-- =====  HEADER END  ===== -->
    
    <!-- 내용부분 -->

   <div class="blank signup">
   		<h2>회원가입</h2>
   		<hr>
   </div>
   
   <!-- 회원가입 폼 -->
	<div class=joinFormOuter " id="joinFormOuter">
		<div class="container-fluid">
			<div class="row">
				<div class="container">
					<form action="signupinsertform.action" method="POST" class="form-group" align="center"
						id="signupForm" onsubmit="check();">
						<div class="tableMom" style="width:1000px; margin: 0 auto;">
						<table id="insert-table" style ="width:100%;">
							<tr>
								<td class="tds" style="width:500px; padding-left: 56px;">
									<input type="email" class="form-control" id="userEmailInsert" name="userEmail" placeholder="email을 입력해 주세요" required>
								</td>

								<td class="tds" style="width:100px; float: left; margin-left:-50px;">
									<button class="btn btn-warning" id="emailauthbtn" type="button">인증하기</button>
								</td>
							</tr>
							<tr>
								<td colspan="2" class="tds">
									<span style="display: none" id="alertMsg"></span>
								</td>
							</tr>
							
							<tr>
								<td colspan="2" class="tds">
									<input type="text" class="form-control" id="userEmailAuthYn" name="userEmailAuthYn" placeholder="인증코드를 입력해주세요" required>

								</td>
							</tr>
							<tr>
								<td colspan="2" class="tds">
									<span style="display: none" id="emailAuthAlert"></span>
								</td>
							</tr>

							
							
							
							<tr>
								<td colspan="2" class="tds">
									<input type="text" class="form-control"id="userName" name="userName"placeholder="닉네임을 입력(10자이내)" maxlength="10" required>
								</td>
							</tr>
							
							
							<tr>
								<td colspan="2" class="tds">
									<span id="nicknameAlert"></span>
								</td>
							</tr>
							
							
							<tr>
								
								
								<td colspan="2" class="tds">
									<input type="password" class="form-control" id="userPw" name="userPw" placeholder="비밀번호 입력" required>
								</td>
							</tr>
							
							
							<!-- 비밀번호 1차 입력 유효성 검사 알림 -->
								<tr>
								<td colspan="2" class="tds">
									<span id="passwordmsg1"></span>
								</td>
							</tr>
							
							<tr>
								<td colspan="2" class="tds">
									<input type="password" class="form-control" id="userPwdCk" name="userPwdCk" placeholder="비밀번호 재입력" required>
								</td>
							</tr>
							
							<!-- 비밀번호 2차 입력 유효성 검사알림 -->
							<tr>
								<td colspan="2" class="tds">
									<span id="passwordmsg2"></span>
								</td>
							</tr>
							
							<!-- <tr >
								<td colspan="2">
									<select  name="userTel" id="selectoption"   >
										<option value="선택" selected="selected" >선택</option>
										<option value="010">010</option>
										<option value="011">011</option>
										<option value="070">070</option>
									</select> 
									<input type="text"  name="userTel" id="selectoption" > -
									<input type="text"  name="userTel" id="selectoption" >
								</td>								
							</tr>		 -->
							<tr>
							<td colspan="2" class="tds">
									<input type="text"  class="form-control" name="userTel" id="userTel" placeholder="휴대폰 번호 입력(-제외)" maxlength="11" style="width: 80%" required>
								</td>								
							</tr>	
							
							<tr>
								<td colspan="2" class="tds">
									<input type="text"  name="zipCode" placeholder="우편번호" id="selectoption"  style="width:62.4%; margin-left: -97px;" >
	   								<button type="button" class="btn btn-warning btn-sm" id="insertbtn" name="btnAddr" onclick="openZipSearch()">주소검색</button>
								</td>
							</tr>
							
							<tr>
								<td colspan="2" >
									<input type="text" id="userAddr" name="userAddr" ><br><br>
									<input type="text" id="userAddr" name="userAddr" placeholder="상세주소 입력">
									<!-- <input type="text" id="selectoption" name="userAddr" placeholder="상세주소 입력"> -->
								</td>
							</tr>												
							
			
							<tr>
								<td colspan="2" class="tds">
									<div class="custom-control custom-checkbox my-1" style="margin-top: 20px;">
										<input type="checkbox" id="agree" name="agree" class="custom-control-input" required style="width:22px; height: 22px;"> 
											<label class="custom-control-label" for="agree" style=vertical-align: top;"> 크레센도 
											<a href="#이용약관페이지추가하기" id="agreement" target="_blank">이용약관</a>에 동의합니다. <!-- href="이용약관.action 추가하기" -->
											</label>
									</div>
								</td>
							</tr>
							<tr>
								<td colspan="2" class="tds">
									
										<button type="submit" class="btn btn-primary btn-sm" style="margin-right:0px; margin-left:100px;">가입하기</button>
										<a href="#modal-container-3" role="button" class="btn" data-toggle="modal">
										<button type="submit" class="btn btn-primary btn-sm" id="insertbtn2" style="width:70px; margin-bottom: 10px;">취소</button>
										</a>
								</td>
							</tr>
						</table>
						</div>
						<!-- end tableMom -->
					</form>
				</div>
			</div>
		</div>
	</div>

  <script src="js/jQuery_v3.1.1.min.js"></script>
  <script src="js/owl.carousel.min.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <script src="js/jquery.magnific-popup.js"></script>
  <script src="js/jquery.firstVisitPopup.js"></script>
  <script src="js/custom.js"></script>
</body>
	<script>
			
	$(function(){
		
	    var userEmail;
		var auth;  

		$("#userEmailInsert").blur(function() {
			userEmail = $("#userEmailInsert").val().trim();
			console.log(userEmail);
			if(userEmail == ""){
				$("#alertMsg").show();
				$("#alertMsg").text("이메일을 입력해주세요.").css("color", "#8E44AD");
				$("#userEmailInsert").focus();
			}else{
				var emailRegex = /^([a-zA-Z0-9_.+-])+\@(([a-zA-Z0-9-])+\.)+([a-zA-Z0-9]{2,4})+$/;
				if(! emailRegex.test(userEmail)){
					$("#alertMsg").show();
					$("#alertMsg").text("유효한 이메일 형식이 아닙니다.").css("color", "#8E44AD");
					$("#userEmailInsert").focus();
				}else{
					$("#alertMsg").show().text("이메일 인증을 진행해 주세요").css("color", "#F39C12");
				}
			}			
		});
	
	$("#emailauthbtn").on("click",function(){
		
		userEmail = $("#userEmailInsert").val().trim();
		$.ajax({
			type : "post",
			url : "authEmail.action",
			data : {userEmail : userEmail},
			/* 이메일 인증버튼 클릭 시 이메일 중복검사 수행 및 인증번호 발송 */
			success: function(data) {
				if(data == "1"){
					$("#alertMsg").show().text("이미 가입된 이메일입니다. 다시 입력해주세요.").css("color", "#8E44AD");
					$("#userEmailInsert").val("").focus();
				} else if(data == "0"){
					$("#alertMsg").show().text("이메일 전송에 실패하였습니다. 다시 입력해주세요.").css("color", "#8E44AD");
					$("#userEmailInsert").val("").focus();
				} else{
					$("#alertMsg").show().text("이메일 인증번호가 전송되었습니다. 인증번호를 입력해주세요.").css("color", "#F39C12");
					$("#userEmailAuthYn").focus();
					auth = data;
				}
			}
		});			
	});
	
	$("#userEmailAuthYn").blur(function() {
		var emailAuth =$("#userEmailAuthYn").val().trim(); 
		console.log(auth);
		if(auth == emailAuth){
			$("#emailAuthAlert").show().text("인증이 완료되었습니다.").css("color", "#F39C12");
			$("#userNickname").focus();
		}else{
			$("#emailAuthAlert").show().text("인증에 실패하였습니다. 다시 입력해주세요.").css("color", "#8E44AD");
			$("#userEmailAuthYn").val("").focus();
		}
	});
		
		
	//닉네임 유효성 판별 검사 부분
	
	$("#userName").blur(function(){
		var userName = $("#userName").val().trim();
 		var url = "checkname.action?userName=" + userName;  
		
 	/* 	console(userName) */
		if(userName == ""){
			$("#nicknameAlert").show().text("닉네임을 작성해주세요.").css("color", "#8E44AD");
		}else{
			if(userName.length >= $("#userName").attr("maxlength")){
				$("#nicknameAlert").show().text("닉네임은 10자 이내로 작성해주세요!^_^").css("color", "#8E44AD");
				return false;
			}else{
				//Ajax 처리하는 부분 -> 존재하는 닉네임이면 이미사용중, 그렇지 않으면 사용가능한 닉네임.
				$.ajax({
					async : true,
					type : "POST",
					url : "checkname.action",
					data : {userName: userName}, 
					success: function(data) {
						if(data > 0){
							$("#nicknameAlert").show().text("이미 사용 중인 닉네임입니다.").css("color", "#8E44AD");
							$("#userName").val("");
						}else{
							$("#nicknameAlert").show().text("사용 가능한 닉네임입니다.").css("color", "#F39C12");
							
							if(confirm("닉네임을 사용합니다.")){
								$("#userPw").focus();
							};
						}
					}
				});
			}	
		}
	});

	
	// 1차비밀번호 입력시 유효성검사 실시.
	$("#userPw").blur(function() {
		userPw = $("#userPw").val().trim();
		pwdRegex = /^[a-zA-Z0-9]{6,14}$/;
		if(userPw ==""){
			$("#passwordmsg1").show();
			$("#passwordmsg1").text("비밀번호를 입력해주세요.").css("color", "#F39C12");
			$("#userPw").focus();
		}else if(!pwdRegex.test(userPw)){
				$("#passwordmsg1").show();
				$("#passwordmsg1").text("비밀번호는 숫자와 문자 포함 6이상 14자리 이내로 작성해주세요.").css("color","#8E44AD");
				$("#userPw").focus();
		}else{
			$("#passwordmsg1").show();
			$("#passwordmsg1").show().text("비밀번호 재입력 칸에 다시한번 입력해주세요.").css("color","#F39C12");
			/* $("#userPwdCk").focus(); */
		
		}
	});
			
	// 2차 비밀번호 입력시 유효성 검사 실시.
	$("#userPwdCk").blur(function() {
		userPw = $("#userPw").val().trim();
		userPwdCk = $("#userPwdCk").val().trim();
		if(userPwdCk != userPw){
			$("#passwordmsg2").text("비밀번호가 일치하지 않습니다.").css("color", "#8E44AD");
		}else if(userPw == "" || userPwdCk == ""){
			$("#passwordmsg2").text("비밀번호를 입력해 주세요.").css("color", "#8E44AD");
		}else{
			$("#passwordmsg2").show();
			$("#passwordmsg2").text("다음 단계를 진행해주세요.").css("color", "#F39C12");
		}
	});
	
	
	/*  휴대폰 유효성 검사
	$("#selectoption").blur(function()
	{
		selectoption = $("#selectoption").val().trim();
		var phoneregExp = /^\d{3}-\d{3,4}-\d{4}$/;
		if(selectoption ==""){
			$("#phonemsg").show();
			$("#phonemsg").text("휴대폰 번호를 입력해주세요").css("color","#8E44AD");
			$("#selectoption").focus();
		}else if(!phoneregExp.test(selectoption)){
			$("#phonemsg").show();
			$("#phonemsg").text("000-0000-0000에 맞게 입력해주세요").css("color","#8E44AD");
			("#selectoption").focus();
		}else{
			$("#phonemsg").show();
			$("#phonemsg").text("다음 단계를 진행해주세요").css("color", "#F39C12");
		}
	});
	 */
	
		
});
	</script>
	
	
				<!-- ■■■■■■■■■■■■■■■■■■■ 취소버튼 모달 ■■■■■■■■■■■■■■■■■■■-->
		
			
			<div class="modal fade" id="modal-container-3" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
				<div class="modal-dialog" role="document">
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal">
								<span aria-hidden="true">×</span>
							</button>
						</div>
						<div class="modal-body">
					     <div class="modalComent">
					     취소를 누르시면 지금까지 입력하신 내용이<br>
					     모두 사라집니다.<br>
					     그래도 취소하시겠습니까?
					     </div>
						</div>
						<div class="modal-footer" style="text-align: center;">
							 
							<button type="button" class="modalCancle" data-dismiss="modal">
								아니오
							</button> 
							&nbsp;&nbsp;
							<button type="button" class="modalExit">
								네
							</button> 
							
						</div>
					</div>
					
				</div>
				
			</div>

		<!-- ■■■■■■■■■■■■■■■■■■■ 회원탈퇴 모달 ■■■■■■■■■■■■■■■■■■■-->
	
	
	
</html>