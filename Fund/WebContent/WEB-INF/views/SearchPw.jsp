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
<!-- jQuery 3.4.1 -->
<script src="http://code.jquery.com/jquery-3.4.1.min.js"></script>
<!-- 부트스트랩4.3 코어 삽입부입니다. -->
<link rel="stylesheet" href="https://getbootstrap.com/docs/4.3/dist/css/bootstrap.min.css">
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
<!-- Swal 추가 -->
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@8"></script><!-- jQuery 3.4.1 -->
<script src="http://code.jquery.com/jquery-3.4.1.min.js"></script>
<!-- 부트스트랩4.3 코어 삽입부입니다. -->
<link rel="stylesheet" href="https://getbootstrap.com/docs/4.3/dist/css/bootstrap.min.css">
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
<!-- Swal 추가 -->
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@8"></script>


<!------ Include the above in your HEAD tag ---------->

<head>
  <!-- =====  BASIC PAGE NEEDS  ===== -->
  <meta charset="utf-8">

  <title>SearchPw.jsp</title>
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

<!-- 비밀번호 찾기 css 경로 -->
 <link rel="stylesheet" href="css/searchpw.css" />
 
</head>

<body>

<jsp:include page="top.jsp"></jsp:include>
<!-- 비밀번호 찾기 start -->
	<div class="container">
		<div class="login-form">
			<div class="main-div">
				<div class="panel">
					<h2>비밀번호 찾기</h2>
				</div>
				<form action="changePw.action" method="POST" class="form-group" align="center" id="findPwdForm">
					<div class="form-group">
						<div class="pwEmail">
							<span>이메일 주소</span>
							<br>
							<input type="email" class="form-control" id="userEmailck" name="userEmail" placeholder="크레센도 가입 email을 입력해주세요">
							<br>
							<br>
							<button class="btn btn-warning" id="emailauthbtn" type="button" style="background-color: #ffc425; border: 0px;">인증하기</button>
							<br>
	
						</div>
					
						<span id="alertmsg" style="display: none"></span>
						<div class="pwEmail">
							<span >인증번호</span>
						
							<input type="password" class="form-control"  id="userEmailAuthYn" 
							name="userEmailAuthYn" placeholder="인증코드를 입력해주세요" required>
						</div>
					<hr>
					<button type="submit" class="btn btn-primary" style="background-color: #ffc425; border: 0px;">
						비밀번호 재설정
					</button>
					</div>
				</form>
			</div>
		</div>
	</div>
	
	<script>
		$(function() {
			
			var userEmail;
			var auth;
			
			$("#userEmailck").on("blur", function() {
				userEmail = $("#userEmailck").val().trim();
				console.log(userEmail);
				$.ajax({
					type: "post",
					url: "checkEmail.action",
					data : {userEmail : userEmail},
					/* 가입된 이메일 확인 */
					success: function(result) {
						console.log("이메일 check (1): (0):"+result);
						if(result == "1"){
							$("#alertmsg").show().text("가입된 이메일입니다.").css("color", "#8E44AD");
							return true;
						} else if(result == "0"){
							$("#alertmsg").show().text("정보를 찾지 못했습니다.").css("color", "#8E44AD");
							$("#userEmail").val("").focus();
							return false;
						}
					}
				});
			});
			
			$("#emailauthbtn").on("click", function(){
				userEmail = $("#userEmailck").val().trim();
				$.ajax({
					type:"post",
					url:"sendAuth.action",
					data:{userEmail : userEmail},
					success: function(data){
						
						console.log("메일확인  : "+data);
						
						if(data == "1" && data == "0"){
							$("#alertmsg").show().text("이메일 인증에 실패하였습니다.").css("color","#8E44AD");
						}else{
							$("#alertmsg").show().text("인증번호가 전송되었습니다.").css("color","#F39C12");
							$("userEmailAuthYn").focus();
							auth = data;
							console.log("인증번호 : "+auth);
						}
					}
				});
			});
			
			$("#userEmailAuthYn").on("blur", function(){
				var emailAuth =	$("#userEmailAuthYn").val().trim();
				console.log("인증번호 : "+auth);
				if(auth == emailAuth){
					$("#alertmsg").show().text("인증이 완료되었습니다.비밀번호 초기화를 진행해주세요.").css("color","#F39C12");
										
				}else{
					$("#alertmsg").show().text("인증에 실패하였습니다. 다시 입력해주세요.").css("color", "#8E44AD");
					$("#userEmailAuthYn").val("").focus();
				}
			});
			
			
		});
	</script>
	</body>
	</html>