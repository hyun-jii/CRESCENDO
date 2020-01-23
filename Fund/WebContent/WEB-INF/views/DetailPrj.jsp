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
  <!-- Swal 추가 -->
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@8"></script>

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
  <link rel="stylesheet" type="text/css" href="<%=cp %>/css/Main.css">
  <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
   
  <style>
             
       .active
       {
       	color: #FFC425 !important;
       }
       
  </style>
   
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  
      
   <script>
   function w3_open() {
     document.getElementById("mySidebar").style.display = "block";
   }

   function w3_close() {
     document.getElementById("mySidebar").style.display = "none";
   }
   
   
   
   /* 현재 페이지 url 가져오기 */
   $(function()
   {	
		var url = $(location).attr('href');
		
		$("#share").text(url);
		
   });
   
   /* 후원 클릭 시 로그인 여부 알림창 ajax 처리 */
   $(function()
   {
	   var proNum = $("#proNum").val();
	   
		$("#fund").click(function()
		{
			$.ajax({
				type : "POST",
				url : "<%=cp%>/clickfund.action",
				data : {"userEmail" : $("#userEmail").val()},
				success: function(data)
				{
					if(data > 0)
					{
						$(location).attr("href","<%=cp%>/fund.action?proNum=" + proNum);
					}
					else
					{
						Swal.fire({
							  icon: 'error',
							  title: '로그인',
							  text: '로그인이 필요한 서비스입니다!',
							  footer:' <a href="loginform.action">로그인</a>,<a href ="signup.action">회원가입</a>'
							})
						/* alert("로그인이 필요한 서비스입니다"); */
						<%-- $(location).attr("href","<%=cp%>/loginform.action"); --%>
					}
				}
				
			});
		});
	
		
			
		/* 찜하기 클릭 시 로그인여부와 찜 클릭, 해제에 따른 별 색깔 변화 */
		$("#likeStar").click(function()
		{
			
			$.ajax({
				type : "POST",
				url : "<%=cp%>/likeproject.action",
				data : {"userEmail" : $("#userEmail").val(),
						"proNum"    : $("#proNum").val(),
						"temp"		: $("#temp").val()
				},
				success: function(data)
				{
					if(data > 0)
					{
						if($("#temp").val() == "like")
						{
							$("#likeStar").css("color","#FFC425");
							$("#temp").attr("value","unlike");
							$("#likeStar").addClass("active");
							
						}
						else
						{
							$("#likeStar").css("color","#9E9E9E");
							$("#temp").attr("value","like");
							$("#likeStar").addClass("focus");
						}
						
						 
					}
					else
					{
						Swal.fire({
							  icon: 'error',
							  title: '로그인',
							  text: '로그인이 필요한 서비스입니다!',
							  footer:' <a href="loginform.action">로그인</a>,<a href ="signup.action">회원가입</a>'
							})
							
						<%-- $(location).attr("href","<%=cp%>/loginform.action"); --%>
					}
				}
			});
		});
		
		/* 창작자에게 문의하기 클릭 시 로그인 여부 알림창 ajax 처리 */
		$("#modal-94530").click(function()
		{
				$.ajax({
				type : "POST",
				url : "<%=cp%>/clickfund.action",
				data : {"userEmail" : $("#userEmail").val()},
				success: function(data)
				{
					if(data > 0)
					{
						$("#modal-container-94530").modal("show");
					}
					else
					{
						
						Swal.fire({
							  icon: 'error',
							  title: '로그인',
							  text: '로그인이 필요한 서비스입니다!',
							  footer:' <a href="loginform.action">로그인</a>,<a href ="signup.action">회원가입</a>'
							})
					}
				}
						
			});
		});
		
		/* 쪽지모달 데이터 전송 */
		$("#submit").click(function()
		{
			$.ajax({
				type : "POST",
				url : "<%=cp%>/makerlettersend.action",
				data : {"leTitle" 	: $("#leTitle").val(),
					    "leContent" : $("#leContent").val(),
						"leReceiver" : $("#leReceiver").val(),
						"leSender"	: $("#leSender").val() },
				success : function(data)
				{
					if(data > 0)
					{
						Swal.fire(
								  '쪽지 전송 성공!',
								  '쪽지를 전송했습니다.',
								  'success'
								)
						/* alert("쪽지를 전송했습니다."); */
					}
					else
					{
						Swal.fire(
								  '쪽지 전송 실패!',
								  '쪽지 전송에 실패했습니다.',
								  'fail'
								)
						/* alert("쪽지 전송에 실패했습니다.") */
					}
					
				}
			})
			
		});
		
	   
   });
		
   </script>

<!-- ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■ -->
	<link rel="stylesheet" href="css/mypagelike.css">
<!-- ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■ -->

	<!-- 프로젝트 세부페이지 css 경로 -->
	<link rel="stylesheet" href="css/detailPrj.css" />
	<!-- 공지사항 내용 css 경로 -->
    <!-- <link rel="stylesheet" href="css/boardContent.css"> -->
	
</head>

<body>


	      

<jsp:include page="top.jsp"/>
 	
 	
<!-- ===== 프로젝트 세부 페이지 start ===== -->
<c:forEach var="list" items="${projectDetail }">	
<div class="blank">
	<div class="container">
		
	  <!-- 프로젝트 번호 -->
	  <input type="hidden" id="proNum" name="proNum" value="${list.proNum }">
	  <!-- 찜하기, 찜하기 제거를 위한 임시 값 -->
	  <input type="hidden" id="temp" name="temp" value="like">

	  <!-- 프로젝트 제목 및 창작자 닉네임 -->  
	  <h1 class="my-4">${list.prjTitle }</h1>
	  <div class="makerId">
	  	<a href="<%=cp%>/makerpage.action?userNum=${list.userNum}&maName=${list.maName}">
	    <img alt="창작자 프로필 사진" src="images/PrjImg_made_cho/user_img.PNG"
	     class="prjMaker"> ${list.maName }
	     </a>
	   </div>
	  
	  <!-- 프로젝트 이미지 및 후원현황 -->
	  <div class="row">	
	    <div class="col-md-8">
	      <img class="img-fluid" src="upload/${list.prjImg }" alt="프로젝트 메인 이미지">
	    </div>
	
	   <div class="col-md-4 fundIng">
	      <h4 class="my-3">모인 금액</h4>
	      <p>${list.totalMoney }원</p>
	      <h4 class="my-3">달성률</h4>
	      <p>${list.percent }%</p>
	      <h4 class="my-3">남은 시간</h4>
	      
	      <c:if test="${list.remainDay < '0' }">
	      <p style="color: red;">${list.proSta }</p>
	      </c:if>
	      <c:if test="${list.remainDay >= '0' }">
	      <p>D-${list.remainDay } 일</p>
	      </c:if>
	      <h4 class="my-3">후원자 수</h4>
	      <p>${list.supporter }명</p>
	   </div>
	    
	   <div class="col-md-4 fundInfo">
	    	<span>
	    	목표 금액은 총 <span>${list.prjGoal }</span>원 입니다.<br>
	    	후원한 리워드는<br>
	    	<span>${list.maPredict }</span>에 받아볼 수 있습니다.<br>
	    	</span>
	   </div>
	    
	   <div>

	   		<!-- 프로젝트가 마감된 경우 후원하기 버튼 비활성화 -->
	   		<c:if test="${list.remainDay < '0' }">
	    		<button class="btn4" id="fund" disabled="disabled" style="background-color: #9E9E9E">후원마감</button>
	    	</c:if>
	    	<!-- 프로젝트 진행시 후원하기 버튼 활성화 -->
	    	<c:if test="${list.remainDay >= '0' }">
	    		<button class="btn4" id="fund" >후원하기</button>
	    	</c:if>
	    		<a id="modal-539358" href="#modal-container-539331" role="button" class="pwBtn" 
	    		data-toggle="modal" style="padding: 0px 0px; margin-top: 20px;">
					<i class="fas fa-share-alt-square" style="border: none;background: none;background: #fff;
					 vertical-align: bottom;"></i>		
				</a>
				
	    	
	    	<!-- 찜하기 버튼 -->	    	
	    	<button id="likeStar" class="fas fa-star" style="font-size: 35px; text-align: center;border: none; background: #fff;
    		vertical-align: sub;"></button>
	   </div>
	  <!-- end row -->
	  
	  <div class="prj_Content">
	  	<div class="col-md-8 prjStory">
	  		<div>
				Story
				<hr class="storyLine">			
	  		</div>
	  		<div>
<pre class="ProjectContent">

${list.prjContent }
</pre>

	  		</div>	  
	  	</div>
	  	<div class="col-md-4 profile">
	  		<div>
				창작자 프로필
				<hr class="makerLine">			
	  		</div>
	  		<div class="makerId2">
	  			<a href="<%=cp%>/makerpage.action?userNum=${list.userNum}&maName=${list.maName}">
	    		<img alt="창작자 프로필 사진" src="images/PrjImg_made_cho/user_img.PNG"
	     		class="prjMaker2"> <span class="makerId">${list.maName }</span>
	     		</a>
	   		</div>
	   		<div style="color: #9E9E9E; font-size: 15px; margin-top: 10px;">
	   			${list.maInfo }
	   		</div>
	   		<div style="color: #9E9E9E; font-size: 15px; margin-top: 10px;">
	   			<span style="font-weight: bold;">마지막 로그인 일자</span> : ${lastLogin }
	   		</div>
	   		<input type="hidden" id="userEmail" name="userEmail" value="${sessionScope.user.userEmail }">
	   		<div class="question">
	   				<a class="btn" id="modal-94530" role="button" data-toggle="modal" style="vertical-align: top; background-color: #ffc425;
	   				color: white; font-weight: bold; width: 70%; margin-top: 10px;">창작자에게 문의하기</a>
	   				
	   		</div>
	  	</div>
	  </div>
	 
	  <!-- end prj_Content -->
	
	</div>
	<!-- end container -->
	
 </div>
 </div>
 <!-- end blank -->
 
 <!-- URI Modal 구문 시작 -->   
         <div class="modal fade" id="modal-container-539331" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" style="margin-top: 400px;">
            <div class="modal-dialog" role="document">
               <div class="modal-content">
                  <div class="modal-header">
                     <h5 class="modal-body" id="myModalLabel" style="font-weight: bold; font-size: 15px;">
                        URL 주소를 복사해서 프로젝트를 다른 사람들과 공유하세요
                     </h5> 
                  </div>
                  <div class="modal-body" id="share" style="text-align: center;">
                     
                  </div>
                  <div class="modal-footer"> 
                     <button type="button" class="btn btn-secondary" data-dismiss="modal">
                        확인
                     </button>
                  </div>
               </div>
               
            </div>
         </div>	<!-- URI Modal 구문 끝 -->  

			
			<!-- 창작자 문의하기 모달폼 -->
			<div class="modal fade" id="modal-container-94530" role="dialog" aria-hidden="true" aria-labelledby="myModalLabel" style="margin-top: 100px;">
				<div class="modal-dialog" role="document">
					<div class="modal-content">
						<div class="modal-header" style="background-color: orange; color:#fff; font-size: 16px; font-weight: bold">
							<h5 class="modal-title" id="myModalLabel">
								<center>쪽지 보내기</center>
							</h5>
							
						</div>
						
						<!-- 쪽지보내기에 필요한 데이터(받는이, 보낸이) -->
						<input type="hidden" id="leReceiver" name="leReceiver" value="${list.userNum }">
						<input type="hidden" id="leSender" name="leSender" value="${userNum }">
						
						<div class="modal-body">
								<input type="text" id="leTitle" name="leTitle" style="width: 100%; margin:0 auto;" placeholder="제목:">
								<br><br>
								<textarea rows="5" id="leContent" name="leContent" style="width:100%;" placeholder="문의사항을 입력해주세요" ></textarea>
						</div>
						<div class="modal-footer">
							<button class="btn btn-secondary" id="submit" type="button" data-dismiss="modal">
							    보내기
							</button>
							<button class="btn btn-secondary" type="button" data-dismiss="modal">
								취소
							</button>
						</div>
	
					</div>
				</div>
			</div>
			 </c:forEach>
			<!-- 창작자 문의하기 모달 끝 -->	


<!-- ===== 프로젝트 세부 페이지 end ===== -->
     
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