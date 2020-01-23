<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix ="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
   request.setCharacterEncoding("UTF-8");
   String cp = request.getContextPath();
%>
<!DOCTYPE html>
<html lang="en">
<head>
	<title>Login</title>
	<meta charset="UTF-8">
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
  <link rel="stylesheet" type="text/css" href="css/magnific-popup.css">
  <link rel="stylesheet" type="text/css" href="css/owl.carousel.css">
  <link rel="shortcut icon" href="images/favicon.png">
  <link rel="apple-touch-icon" href="images/apple-touch-icon.png">
  <link rel="apple-touch-icon" sizes="72x72" href="images/apple-touch-icon-72x72.png">
  <link rel="apple-touch-icon" sizes="114x114" href="images/apple-touch-icon-114x114.png">
  <script src="https://kit.fontawesome.com/b7c292b54b.js" crossorigin="anonymous"></script>
  <link rel="stylesheet" type="text/css" href="<%=cp %>/css/Main.css">
  <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <!-- jQuery 3.4.1 -->
<script src="http://code.jquery.com/jquery-3.4.1.min.js"></script>
	<!-- 카카오 로그인 -->
<script src="//developers.kakao.com/sdk/js/kakao.min.js"></script>
<!-- 네이버 로그인 -->
<script type="text/javascript" src="https://static.nid.naver.com/js/naveridlogin_js_sdk_2.0.0.js" charset="utf-8">
</script>
	
   <script>
   function w3_open() {
     document.getElementById("mySidebar").style.display = "block";
   }
   function w3_close() {
     document.getElementById("mySidebar").style.display = "none";
   }
   </script>
	
	<style>
		*{margin:0;}
	</style>
	
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="images/icons/favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/Linearicons-Free-v1.0.0/icon-font.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="css/util.css">

	<link rel="stylesheet" type="text/css" href="<%=cp %>/css/login.css">



</head>
<body>
	
			

  <jsp:include page="top.jsp"></jsp:include>

  
 
  <script src="js/jQuery_v3.1.1.min.js"></script>
  <script src="js/owl.carousel.min.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <script src="js/jquery.magnific-popup.js"></script>
  <script src="js/jquery.firstVisitPopup.js"></script>
  <script src="js/custom.js"></script>

	
	<div class="limiter">
		<div class="container-login100"><!--  style="background-image: url('images/bg-01.jpg');" -->
			<div class="wrap-login100 p-l-110 p-r-110 p-t-62 p-b-33">
				<form action="login.action" method="post" class="login100-form validate-form flex-sb flex-w">

					<span class="login100-form-title p-b-53">
						LOGIN
					</span>
					
					
					
					 <div id="naverIdLogin" class="btn-naver m-b-20"
					 data-toggle="tooltip" 
					 title="NAVER ID로 로그인">	
					 <a href="${url }"><img src="images/icons/naver.png">네이버 로그인</a> 
					 </div>
					 
					 
					<%-- <a href="${url }">네이버 로그인 ㄱㄱ </a> --%>
					<!-- 네이버아이디로로그인 버튼 노출 영역 -->
					<!-- <div id="naverIdLogin"></div> -->			
					<!-- <a href="#" class="btn-naver m-b-20">
						<img src="images/icons/naver.png">
					네이버 로그인
					</a>	 -->
					
					
					 
					<a href="javascript:loginwithKaKao()" class="btn-kakao m-b-20" data-toggle="tooltip" data-placement="top" title="KAKAO ID로 로그인">
						<img src="images/icons/kakao.PNG"  class="mx-2" alt="카카오 로그인" >
					카카오 로그인
					</a>
					
					
					<div class="p-t-13 p-b-9" style="margin:none;" >
						<span class="txt1">
							Username
						</span>
					</div>
					
					 <!-- 관리자 여부 -->
					
					<div class="contact100-form-checkbox">
						<input class="input-checkbox100" id="ckb1" type="checkbox" id="admin" name="admin" value="admin" style="float: left; vertical-align: text-bottom;" >
						<label class="label-checkbox100" for="ckb1" style="float: left">
							관리자
						</label>
					</div> 
					
					<!-- 이메일 -->
					<div class="wrap-input100 validate-input" data-validate = "Username is required">
						<input class="input100" type="text" name="userEmail" id="userEmail" >
						<span class="focus-input100"></span>
					</div>
					
					<div class="p-t-13 p-b-9">
						<span class="txt1">
							Password
						</span>
					</div>
					
					<!-- 비밀번호 -->
					<div class="wrap-input100 validate-input" data-validate = "Password is required">
						<input class="input100" type="password" name="userPwd" id="userPwd" >
						<span class="focus-input100"></span>
					</div>
					
					<!-- 로그인 버튼 -->
					<div class="container-login100-form-btn m-t-17">
						<button type="submit" class="login100-form-btn">
							로그인
						</button>
					</div>

					<div class="w-full text-center p-t-55">
						<span class="txt2">
							아직도 회원이 아니신가요?
						</span>
						
						<!-- 회원가입 버튼 -->	
						<a href="<%=cp %>/signup.action" class="txt2 bo1">
							회원가입
						</a>
						
						<br>
						
						<!-- 비밀번호 찾기 -->
						<a href="<%=cp %>/findPw.action" class="txt2 bo1 m-l-5">
							비밀번호 찾기
						</a>
					</div>
				</form>
			</div>
		</div>
	</div>
	

	<div id="dropDownSelect1"></div>
	
	 <!-- =====  FOOTER START  ===== -->



    <jsp:include page="footer.jsp"></jsp:include>
    <!-- =====  FOOTER END  ===== -->
	<script src="js/login.js"></script>




<script type='text/javascript'>


//var naverLogin = new naver.LoginWithNaverId(
//		{
//			clientId: "s27jYKjFnK2jBuXm0Gpq",
//			callbackUrl: "",
//			isPopup: true,										 	/* 팝업을 통한 연동처리 여부 */
//s			loginButton: {color: "green", type: 3, height: 100} 	/* 로그인 버튼의 타입을 지정 */
//		}
//	);
	
	
/* 설정정보를 초기화하고 연동을 준비 */
naverLogin.init();

//인증 과정을 거치면 기본설정에서 설정한 콜백 URL (RedirectURL)로 인증 정보가 전송




</script>

<script>
	
	/* 
  function loginWithNaver(userName,userPw,userEmail,userProfile)
  {
	  var form = document.createElement("form");
	  var param = new Array();
	  var input = new Array();
	  
	  var path = window.location.href;
	  var arr = path.split("/");
	  var prevPage = arr[4].replace("#","");
	  
	  form.action="naverSNSLogin.dr";
	  form.method="post";
  } */
  
  
  Kakao.init('926ab36055d45f79d9abc64b3503ba32');  //여기서 아까 발급받은 키 중 javascript키를 사용해준다.
  
  function loginwithKaKao(){
    Kakao.Auth.loginForm({
      success: function(authObj) {
    	     Kakao.API.request({
    	       url: '/v1/user/me',
    	       success: function(res) {

    	    	   var info = res;
    	    	   
    	    	   	console.log(res);  //res - > 요청된 사용자 정보
    	    	   	
    	    	    console.log(info.kaccount_email); //사용자 email 정보 찍어보기
    	    	    console.log(info.id);
    	    	    console.log(info.properties.nickname);
    	    	    console.log(info.properties.profile_image);
    	    	    
    	    	    var userEmail = info.kaccount_email;
    	    	    var userPw   = info.id;
    	    	    var userName  = info.properties.nickname;
    	    	    var userProfile = info.properties.profile_image;

    	    	    console.log(userEmail+"/"+userName+"/"+userProfile+"/"+userPw);
    	    	    //user id + userName(중복X)을 userName으로 설정
    	    	    
    	    	    
    	    	    $.ajax({
    	    	    	url:"checkEmail.action"//회원가입 여부 확인
    	    	    	,data:{userEmail:userEmail}
    	    	    	,type:"post"
    	    	    	,success: function(result) {
    	    	    	
    	    	    		console.log(result);//값들어온다 ~~
    	    	    		
    	    	    		//location.href="signup.action"//회원가입 액션창으로 이동해서 post 방식으로 정보 저장해놓기
    	    	    		
    	    	    		if(result=="0")//이메일이 없을 경우
    	    	    		{
    	    	    			

    	    						
    	 							  Swal.fire({
    										  title: '등록된 계정이 없습니다!',
    										  text: "자동가입을 원하시면 버튼을 눌러주세요.",
    										  type: 'success',
    										  showCancelButton: true,
    										  confirmButtonColor: '#36ed7b',
    										  cancelButtonColor: '#f30c11',
    										  confirmButtonText: '자동가입',
    										  cancelButtonText:'가입취소',
    	    	    					}).then((result) => {
    	    	    						  if (result.value) {
    	    	    									 
    	    	    							  location.href="insertKaKao.action?userName="+userName+"&userEmail="+userEmail+"&userPw="+userPw+"&userProfile="+userProfile;
    	    	    							    
    	    	    							  }
    	    	    							})
    	    	    				
    	    	    							
    	    						
    	    	    			//alert("등록된 계정이 없습니다. 회원가입을 진행합니다.");
    	    	    			//	location.href="insertKaKao.action?userName="+userName+"&userEmail="+userEmail+"&userPw="+userPw+"&userProfile="+userProfile;
  	    	    			}
    	    	    	  	    	    	
    	    	    	else if(result=="1")
    	    	    		{
    	    	    			Swal.fire
    							( 
    						 	'크레센도 회원입니다!'
    						 	,'이메일 로그인을 시도해주세요!'
    						 	, 'success'
    							 )
    						 	
    	    	    			//alert("크레센도 회원입니다.이메일 로그인을 시도해주세요!");
    	    	    			//location.href="redirect:loginform.action";
    	    	    		}
    	    	    	}
    	    	    	
    	    	    });
    	           },
        	       fail: function(err) {
    				 console.log(err);
    				 KaKao.init();
   					}
				});
			}
		});
	};
	

</script>

</body>
</html>