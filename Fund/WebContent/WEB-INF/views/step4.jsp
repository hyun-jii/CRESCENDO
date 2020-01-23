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
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">
<meta name="viewport" content="width=device-width">
<!-- =====  CSS  ===== -->
<link rel="stylesheet" type="text/css" href="css/font-awesome.min.css" />
<link rel="stylesheet" type="text/css" href="css/bootstrap.css" />

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
<link rel="stylesheet" type="text/css" href="css/Main.css">
<link rel="stylesheet" type="text/css" href="<%=cp%>/css/style.css">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<script type="text/javascript" src="/Example.Modal.js"></script>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

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
/* 버튼이나 박스들 글자크기 주기 */
button, input, select, textarea, optgroup {
	font: inherit;
	margin: 0;
	font-size: 13px;
}
</style>


<script type="text/javascript">
   
 	$(document).ready(function()
	{
 		// 프로젝트 진행기간에 숫자만 입력되도록 제한
		$(".maPeriod").on("keyup", function() 
		{	    
		    $(this).val($(this).val().replace(/[^0-9]/g,"")); 
		});
 		
		// 계좌번호에 숫자만 입력되도록 제한
		$(".maAccount").on("keyup", function() 
		{	    
		    $(this).val($(this).val().replace(/[^0-9]/g,"")); 
		});
 	
 	
 		$("#sendbutton").click(function()
		{
			// 입력값 확인하는 부분
			
			
			if($("#maName").val()=="")
			{
				Swal.fire(
						  '이름 입력!',
						  '이름을 입력해주세요',
						  'warning'
						)
		    	
				$("#maName").focus();
				return false;
			}
			
			if($("#maInfo").val()=="")
			{
				Swal.fire(
						  '소개글을 입력!',
						  '소개글을 입력해주세요',
						  'warning'
						)
				$("#maInfo").focus();
				return false;
			}
			
			if($("#maAcname").val()=="")
			{
				Swal.fire(
						  '예금주 입력',
						  '예금주를 입력해주세요',
						  'warning'
						)
				$("#maAcname").focus();
				return false;
			}
			
			var count= $("select option:selected").val()

	    	if(count == 0)
    		{
	    		Swal.fire(
						  '은행 선택!',
						  '은행을 선택해주세요',
						  'warning'
						)
	    		return false;
    		}
			
			if($("#maAccount").val()=="")
			{
				Swal.fire(
						  '계좌번호 입력!',
						  '계좌번호를 입력해주세요',
						  'warning'
						)
				$("#maAccount").focus();
				return false;
			}
			
			if($("#maPredict").val()=="")
			{
				Swal.fire(
						  '리워드 발송일 입력!',
						  '리워드 예상 발송일을 입력해주세요',
						  'warning'
						)
				$("#maPredict").focus();
				return false;
			}	
			
			if($("#maPeriod").val()=="")
			{
				Swal.fire(
						  '프로젝트 기간입력!',
						  '프로젝트 진행 기간을 입력해주세요',
						  'warning'
						)
				$("#maPredict").focus();
				return false;
			}
			// 진행기간 60일을 초과하는경우
			var maPeriod = $("#maPeriod").val();
			if(maPeriod > 60)
			{
				Swal.fire(
						  '프로젝트 기간오류!',
						  '프로젝트 진행기간은 최대 60일입니다',
						  'warning'
						)
				return false;
			}
			
			
			
			//confirm("최종 검토요청이 완료되었습니다. 검토는 최대 2일이 소요됩니다.");
			
			
			Swal.fire({
				icon : 'success',
				title: '검토요청',
				text: '검토는 최대 2일이 소요됩니다!',
				showCancelButton: false,
				confirmButtonColor: '#3085d6',
				confirmButtonText: '검토요청'}).then((result) =>{
					if(result.value)
						{
							finalstep.submit();
						}
			});
					
		});
		
	});
 
 	
 	  
</script>


</head>

<body>

	<jsp:include page="top.jsp"/>



	<!-- step시작-->
	<div class="container">
		<div class="start_pro">
			<div class="col-sm-12">
				<form name="finalstep" action="insertmaker.action" method="post">
				<div class="basic-info">
					<span>기본정보</span>
				</div>
				<div class="step1">
					<span class="step-1">STEP 3.</span> <span class="step-2">창작자
						정보 입력하기</span><br> <span class="step-3">프로젝트를 오픈하는 여러분의 정보를
						입력해주세요. </span><br>
						<div>전달받은 프로젝트 번호 : ${dprjNum}</div>
				</div>

		
				<div class="form-group pass_show">
					<label class="making1">이름</label> <input type="text"
						class="form-control" placeholder="이름을 입력해주세요" id="maName"
						name="maName">
				</div>

				<div class="form-group pass_show">
					<label class="making2">소개글</label>
					<textarea cols="2" rows="1" id="maInfo" name="maInfo"
						placeholder="최소 50자~100자로 입력해주세요"></textarea>
				</div>

				<div class="form-group pass_show">
					<label class="making1">[ 계좌정보 입력 ]</label><br>
				</div>

				<div class="form-group pass_show">
					<label class="making7">예금주</label> <input type="text"
						class="form-control" id="maAcname" name="maAcname"
						placeholder="예금주를 입력해주세요" style="width: 200px;">
				</div>

				<div class="form-group pass_show">
					<label class="making7">은행명</label>
					 
					<select style="width: 200px;" id="maBank" name="maBank">
						<option value="0">은행명을 선택해주세요</option>
						<option value="신한">신한</option>
						<option value="농협">농협</option>
						<option value="기업">기업</option>
						<option value="국민">국민</option>
						<option value="카카오뱅크">카카오뱅크</option>
					</select>
					
				</div>
				<div class="form-group pass_show">
					<label class="making7">계좌번호</label> <input type="text"
						id="maAccount" name="maAccount" class="form-control maAccount"
						placeholder="계좌번호를 입력해주세요 (-)제외" style="width: 300px;">
				</div>



				<div class="form-group pass_show">
					<label class="making1">리워드 예상발송일</label> <input type="text"
						id="maPredict" name="maPredict" placeholder="예시)2020년12월"
						style="width: 250px;">


				</div>


				<div class="form-group pass_show">
					<label class="making1">프로젝트 진행기간</label> <input type="text"
						class="form-control maPeriod" style="width: 100px;" id="maPeriod"
						name="maPeriod"> 일
					<p class="words">
						검토시 최대2일이 소요될수 있습니다.<br> 프로젝트 진행기간은 현재일자로부터 최소 일주일 뒤 최대 60일
						안으로 설정해주세요.
					</p>
				</div>
				
				<input type="hidden" id="prjNum" name="prjNum" value="${prjNum }">
				
				<div class="buttons">
					<div class="buttonparent" style="margin-top: 40px; width: 230px;">
						<button id="canclebutton">취소</button>
						<input type="button" id="sendbutton" value="완료">
						<!-- <button id="sendbutton" type="submit">검토요청</button> -->
					</div>
				</div>
				</form>
				<!--buttons-->

			</div>
			<!--col-sm-12 -->
		</div>
	</div>
	<!-- step1끝 -->
	
	




	<!-- =====  FOOTER START  ===== -->

	<jsp:include page="footer.jsp"></jsp:include>
	<!-- =====  FOOTER END  ===== -->

	<script src="js/jQuery_v3.1.1.min.js"></script>
	<script src="js/owl.carousel.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/jquery.magnific-popup.js"></script>
	<script src="js/jquery.firstVisitPopup.js"></script>
	<script src="js/custom.js"></script>
</body>

</html>