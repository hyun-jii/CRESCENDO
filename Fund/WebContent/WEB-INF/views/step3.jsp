
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
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

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
<style type="text/css">
	#backbutton{background-color:#778899; color:#fff; border: none;  width:105px; height:28px; font-size: 12px; margin-right: 15px;}
</style>

<script type="text/javascript">	


	
	$(document).ready(function()
	{
		var count = $("#count").val();
	
		
		// 리워드 구성하기 버튼 클릭 시 
		$("#insertReward").click(function()
		{
			$.ajax(
			{
				type: "POST",
				url: "<%=cp%>/rewardinsert.action",
				data: 
				{
					"reName" : $("#reName").val(),
					"reContent" : $("#reContent").val(),
					"reMoney" : $("#reMoney").val(),
					"reLimit" : $("#reLimit").val(),
					"prjNum": $("#prjNum").val()
				},
				success : function(data)
				{
					if(data>0)
					{
						
						/* location.reload(); */
						$(location).attr("href","step3list.action?prjNum="+$("#prjNum").val());
						
					}
					else
					{
						
						alert("리워드 입력 실패");
					}
				}
				
			});
			
			
		});
		// 리워드 3개 입력시 리워드 구성하기 버튼 숨김
		if(count ==3)
		{
			$("#openmodal").css("display","none");
		}
		
		// 취소 버튼 클릭 시 
		$("#canclebutton").click(function()
		{
			
			if(confirm("취소버튼을 누를 경우 프로젝트 구성이 중단됩니다. 계속하시겠습니까?"))
			{
				$(location).attr("href","canclereward.action");
			}
		});
		
		// 리워드 금액에 숫자만 입력되도록 제한
		$(".reMoneyText").on("keyup", function() 
		{	    
		    $(this).val($(this).val().replace(/[^0-9]/g,"")); 
		});
		
		// 리워드 제한수량에 숫자만 입력되도록 제한
		$(".reLimitText").on("keyup", function() 
		{	    
		    $(this).val($(this).val().replace(/[^0-9]/g,"")); 
		});
		
		
		
		
	});
	
</script>


</head>

<body>

 <jsp:include page="top.jsp"/>
     
    
      <!-- step시작-->
  <div class="container">
	<div class="start_pro2">
	  <div class="col-sm-12">
		
			<div class="basic-info">
				<span>기본정보</span>
			</div>
			<div class="step1">
				<span class="step-1">STEP 2.</span>
				<span class="step-2">리워드 구성하기</span><br>
				<span class="step-3">후원자분에게 드릴 리워드를 구성해주세요.</span><br>
				<span class="step-4" style="color: red;">리워드 구성은 최대 3개까지 가능합니다.</span>
			</div>
		    
		   <br>
		  <div class="divTable" id="reardListDiv">
			<div class="divTableBody">
				<div class="divTableRow">		
				<div class="divTableCell">&nbsp;리워드 이름</div>
				<div class="divTableCell">&nbsp;리워드 내용</div>
				<div class="divTableCell">리워드 금액&nbsp;</div>
				<div class="divTableCell">&nbsp;제한수량</div>	
				<div class="divTableCell">&nbsp;비고</div>	
			</div>
			
			<c:forEach var="r" items="${list }" varStatus="status">
			<div class="divTableRow">			
				<div class="divTableCell">&nbsp;${r.reName }</div>
				<div class="divTableCell">&nbsp;${r.reContent }</div>
				<div class="divTableCell">&nbsp;${r.reMoney }</div>
				<div class="divTableCell">&nbsp;${r.reLimit }</div>
				
				<div class="divTableCell">&nbsp;
				<button type="button" id="rewarddeletebutton" class="reNum" 
				onclick="if(confirm('해당리워드를 삭제하시겠습니까?'));location.href='rewarddelete.action?reNum=${r.reNum}'">삭제</button></div>
		
			</div>
			</c:forEach>
			
		 </div>
		  </div><!-- divTable -->
		
		<!-- 모달시작 -->
		<button id="openmodal">
		<a class="btn" id="modal-94" role="button" href="#modal-container-94" data-toggle="modal" style="vertical-align: top; font-size: 12px;
    padding-left: 4px;">리워드 구성하기</a>
		</button>  
		
		<div id="myModal" class="modal">
		
		
			<div class="modalcontent">
		    <span class="close">&times;</span>

		     
            	<label class="making5">리워드 이름</label>
                <input type="text"  class="form-control" placeholder="리워드 이름을 입력해주세요"  > 
            </div> 
		    
            <div class="form-group pass_show"> 
          		<label class="making5">리워드 금액</label>
                <input type="text" class="form-control" placeholder="리워드 금액을 입력해주세요" style="width:200px; text-align: center;">원
            </div> 
            
           
            <div class="form-group pass_show"> 
            	<label class="making6">리워드 내용</label>
               <textarea cols="1" rows="2" placeholder="리워드 내용을 입력해주세요"  ></textarea>
            </div> 
            
            <div class="form-group pass_show"> 
            	<label class="making5">제한수량</label>
               리워드를 <input type="text" class="form-control"  placeholder="수량" style="width:100px; text-align: center;">개로 제한합니다.
            </div> 
            
            <div class="buttonparent2">
            <button id="savebutton" type="button">저장</button> 
            </div> 
            
 		 	</div>
		</div><!-- 모달끝 -->
		</div><!--col-sm-12 -->  
		
	</div>
	
	<div class="buttons">
		<div class="buttonparent">
		<button id="backbutton" onclick="location.href='backstep2.action?prjNum=${prjNum}'">돌아가기</button>  
		<button id="canclebutton">취소</button>  
		<button id="nextbutton" onclick="location.href='step4.action'">다음단계</button>  
		</div>
	</div><!--buttons-->

</div>
      <!-- step1끝 -->
     
      
      
     
      <!-- =====  FOOTER START  ===== -->
    
<jsp:include page="footer.jsp"></jsp:include>
    <!-- =====  FOOTER END  ===== -->
    <!-- 답장모달폼 -->
			<div class="modal fade" id="modal-container-94" role="dialog" aria-hidden="true" aria-labelledby="myModalLabel" style="margin-top: 100px;">
				<div class="modal-dialog" role="document">
					<div class="modal-content">
						<div class="modal-header" style="background-color: orange; color:#fff; font-size: 16px; font-weight: bold">
							<h5 class="modal-title" id="myModalLabel">
								<center>리워드 구성하기</center>
							</h5>
							
						</div>
			
					<div class="modal-body" style="height: 320px;">
						<span style="font-weight: bold; font-size: 15px; color: black;">리워드
							이름</span> <input type="text"
							style="width: 65%; margin-left: 70px; font-size: 10px;"
							placeholder="리워드 이름을 입력해주세요" id="reName" name="reName"> <br>
						<br> <span
							style="font-weight: bold; font-size: 15px; color: black;">리워드
							금액</span> <input type="text" class="reMoneyText"
							style="width: 50%; margin-left: 70px; font-size: 10px;"
							placeholder="리워드 금액을 입력해주세요" id="reMoney" name="reMoney">원 <br>
						<br> <span
							style="font-weight: bold; font-size: 15px; color: black; vertical-align: top;">리워드
							내용</span>
						<textarea rows="5"
							style="width: 65%; margin-left: 70px; resize: none;"
							placeholder="리워드 내용을 입력해주세요. ※추가 구성품 및 색상(사이즈)이 있다면 함께 작성해 주세요 :)" id="reContent" name="reContent"></textarea>
						<br>
						<br>
						<div>
							<div>
								<span style="font-weight: bold; font-size: 15px; color: black;">제한
									수량</span> <input type="text" class="reLimitText"
									style="width: 30%; margin-left: 83px; font-size: 10px;"
									placeholder="수량을 입력해주세요" id="reLimit" name="reLimit">개로 리워드 수량을 제한합니다.
							</div>
						</div>
						<input type="hidden" id="prjNum" name="prjNum" value="${prjNum }">
						<input type="hidden" id="count" name="count" value="${count }">
					</div>
					<div class="modal-footer" style="margin-top: 15px;">
						<button class="btn btn-secondary" type="button" id="insertReward"
							data-dismiss="modal"
							style="background-color: orange; color: white;" >리워드 추가하기</button>
					</div>
				
			</div>
					
						
					</div>
				</div>
			</div>
			<!-- 모달끝 -->	
  

  <script src="js/jQuery_v3.1.1.min.js"></script>
  <script src="js/owl.carousel.min.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <script src="js/jquery.magnific-popup.js"></script>
  <script src="js/jquery.firstVisitPopup.js"></script>
  <script src="js/custom.js"></script>
</body>


</html>