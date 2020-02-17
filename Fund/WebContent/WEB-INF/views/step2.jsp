
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
	
		<!-- Swal 추가 -->
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@8"></script>
	
	
<!-- jQuery 3.4.1 -->
<script src="http://code.jquery.com/jquery-3.4.1.min.js"></script>
<!-- 부트스트랩4.3 코어 삽입부입니다. -->
<!-- <link rel="stylesheet" href="https://getbootstrap.com/docs/4.3/dist/css/bootstrap.min.css"> -->
<!-- include summernote css/js-->
<link href="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.11/summernote-bs4.css" rel="stylesheet">



<script src="https://kit.fontawesome.com/b7c292b54b.js"
	crossorigin="anonymous"></script>
<link rel="stylesheet" type="text/css" href="css/Main.css">
<link rel="stylesheet" type="text/css" href="<%=cp %>/css/style.css">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">

<script>
$(function(){
	
	// summernote 출력 및 부가 기능 메소드
	$('#summernote').summernote({
		width : 682,		// 에디터 넓이
		height: 890,        // 에디터 높이
		focus: true,        // set focus to editable area after initializing summernote
		lang: 'ko-KR',		// 언어 : 한국어 설정
		disableResizeEditor: true,
		callbacks:{
			onImageUpload: function(files, editor) {
				// 업로드된 이미지를 ajax를 이용하여 서버에 저장
				console.log(files);
				sendFile(files[0], this);

        	   
			}
		}
	});


	// 업로드된 이미지를 ajax를 이용하여 서버로 전송하여 저장하는 함수
	function sendFile(file, editor){
		
		form_data = new FormData();
		// FormData : form 태그 내부 값 전송을 위한  k:v 쌍을 쉽게 생성할 수 있는 객체
		
		form_data.append("uploadFile", file);
		// FormData 객체에 새로운 K, V 를 추가
		
		
		$.ajax({
			url : "insertImage.action",  //여기서 컨트롤러단 호출되는지 확인해보기 
			type : "post",
			data : form_data,
			dataType: "text",
			enctype: "multipart/form-data",  
			cache : false,
	        contentType : false,
	        // contentType : 서버로 전송되는 데이터의 형식 설정
	        // 기본값  : application/x-www-form-urlencoded; charset=UTF-8
	        // 파일 전송 시 multipart/form-data 형식으로 데이터를 전송해야 하므로
	        // 데이터의 형식이 변경되지 않도록 false로 지정.
	        processData : false,
	        // processData : 서버로 전달되는 값을 쿼리스트링으로 보낼경우 true(기본값), 아니면 false
	        //				파일 전송 시 false로 지정 해야 함.
	        
			success : function(result){
				console.log(result);
				
				// 저장된 이미지를 에디터에 삽입
				$(editor).summernote('editor.insertImage', result);
				
				// 에디터에 삽입된 이미지를 관리하기 위한 hidden 타입 input태그 
				var $imgList = $("input[name=imgList]");
				
				// 이미지 저장 성공시 반환되는 이미지 경로에서 파일명만 추출하여 
				// imgList에 추가
				var cutPoint = result.lastIndexOf("/");
				result = result.substring(cutPoint + 1);
				
				if($imgList.val() == ""){
					$imgList.val(result);
				}else{
					var str = $imgList.val();
					str = str + "," + result;
					$imgList.val(str);
				}
				
				console.log($imgList.val());
			},
			error : function(){
			}
			
		});
		
	}
	
	//서머노트 업로드된 이미지 삭제
	/* function summernoteDeleteImage(file){
		  var remove = file.substr(file.lastIndexOf("/")+1);
		  var fileRemove = "removeFile="+remove;
		  $.ajax({
	        data: fileRemove,
	        type: "GET",
	        url: '<c:url value="/Image/Image.Lingo"/>',
	        cache: false,
	        contentType: false,
	        processData: false,
	        success: function() {
	        	realImage = jQuery.grep(realImage, function(value) { 
	        		return value != remove; });
				console.log(realImage+"삭제 후 서버에 저장된 이미지");
	        }
	    });
		  
	} */
});
</script> 

<script>
   function w3_open() {
     document.getElementById("mySidebar").style.display = "block";
   }

   function w3_close() {
     document.getElementById("mySidebar").style.display = "none";
   }
   </script>



<!-- 스크립트 구문 -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

<script type="text/javascript">
	$(document).ready(function()
	{
		/* 프로젝트 제목 글자 수 제한 */
		$(".form-control-title").on("keyup", function() 
		{
			if($(this).val().length > 30) 
			{
				alert("글자수는 30자로 이내로 제한됩니다.");

				$(this).val($(this).val().substr(0, 50));

			}
		});	
		
		
	
		/* 프로젝트 내용 요약 글자수 제한 */
		$("#counterText1").css("display","none");
		$("#counterText2").css("display","none");
		
	     $(".form-control-sum").keyup(function (e)
	     {
	    	 var content = $(this).val();
	    	 
	    	      
	    	  if (content.length < 10)
			  {
	    		  $("#counterText1").css("display","");
	    		  $("#counterText1").css("color","red");
			  }
	    	  else if (content.length >= 10)
    		  {
	    		  $("#counterText1").css("display","none");
    		  }
	    	 
	    	  
	    	  if (content.length >= 50)
			  {
	
			 	  $("#counter").html("50" + "/50");
				  $("#counter").css("color","red");
				  $(this).val($(this).val().substr(0, 50));
			  }
	   
	    	  $("#counter").css("color","black");
	          $("#counter").html(content.length + "/50");
	          

	                 
	     });
	     
	     /* 프로젝트 내용 글자 수 제한 */
	     $("#counterText3").css("display","none");
	     
	     $("#prjContent").keyup(function (e)
   	     {
   	    	 var content = $(this).val();
   	    	 
 
   	    	 if (content.length >= 4000)
   			 {
 				 $("#counterText3").css("display",""); 	
   			 	 $("#counter2").html("4000" + "/4000");
   				 $("#counter2").css("color","red");
   				 $("#counterText3").css("color","red");
   				 $(this).val($(this).val().substr(0,4000));
   			 }
   	    	 else
   		     {
   	    		 $("#counterText3").css("display","none");
   	    		 $("#counter2").css("color","black");
   	   	         $("#counter2").html(content.length + "/4000");
    		 }
   	    	
   	    	
   	          

   	                 
   	     });
	    	     
	    		 
	    		 
   		 /*목표금액에 숫자만 입력하도록 제한, 목표금액 설정 */		
		$("#minGoal").css("display","none");
		
		$(".form-control-money").on("keyup", function() 
		{	    
		    $(this).val($(this).val().replace(/[^0-9]/g,"")); 
		    
		    var money = Number($(this).val());
			if(money<10000)
			{
				
	    		$("#minGoal").css("display","");
	    		$("#minGoal").css("color","red");
				
			}
			else
			{
				$("#minGoal").css("display","none");
			}
		    
		});
		

/* --------------------------------------------------------------------------------------------- */		
		/* 금액에 컴마찍는 구문 (추후에 활성화해야함])*/
		/*
		$(".form-control-money").on("keypress", function(e){

	        if(e.which && (e.which < 48 || e.which > 57) ) e.preventDefault();

	    });
		
	    $(".form-control-money").on("keyup", function(e){

	        if( $(this).val() != null && $(this).val() != '' ) 
	        {

	            var tmps = parseInt($(this).val().replace(/[^0-9]/g, '')) || 0;

	            var tmps2 = tmps.toString().replace(/(\d)(?=(\d\d\d)+(?!\d))/g, "$1,");

	            $(this).val(tmps2);

	        }

	    });
	    */
	    
	    
/* --------------------------------------------------------------------------------------------- */			
		/* 태그 입력 시 특수문자 제한 */
		$(".form-control-tag").bind("keyup",function()
		{
 			re = /[~!@\#$%^&*\()\-=+_']/gi; 
 			var temp=$(".form-control-tag").val();
 			
 			if(re.test(temp))
 			{ 
 				//특수문자가 포함되면 삭제하여 값으로 다시셋팅
 				 $(".form-control-tag").val(temp.replace(re,"")); 
 			} 
 		});
	
	});
		
</script>


<script type="text/javascript">
	$(document).ready(function()
	{
	    /* 취소하기 버튼을 눌렀을 경우 */
	    $("#canclebutton").click(function()
		{
			if(confirm("취소하시면 내용을 저장하지않습니다. 그래도 취소하시겠습니까?"))
			{
				$(location).attr("href","main.action");	
			}
		});
	    
	    /* 임시저장 눌렀을 때 빈칸이 있는지 여부 확인 */
	    
	    $("#savebutton").click(function()
		{
	    	var count=$("select option:selected").val()

	    	if(count == 0)
    		{
	    		
	    		//alert("카테고리를 선택해주세요.");
	    		return false;
    		}
	    	
			if($("#prjTitle").val() == "")
			{
				Swal.fire(
						  '제목을 입력해주세요!',
						  '',
						  'warning'
						)
						return false;	
				$("#prjTitle").focus();
							
			}
			
			if($("#prjSname").val() == "")
   			{
				Swal.fire(
						  '프로젝트 요약을 입력해주세요!',
						  '',
						  'warning'
						)
   				$("#prjSname").focus();
   				return false;				
   			}
			
			if($("#prjGoal").val() == "")
   			{
				Swal.fire(
						  '목표금액을 입력해주세요!',
						  '',
						  'warning'
						)
   				$("#prjGoal").focus();
   				return false;				
   			}
			
			if($("#prjImg").val() == "")
   			{
				Swal.fire(
						  '이미지 파일을 첨부해주세요!',
						  '',
						  'warning'
						)
   				return false;				
   			}
			
			if($("#prjTag").val() == "")
   			{
				Swal.fire(
						  '태그를 입력해주세요!',
						  '',
						  'warning'
						)
   				$("#prjTag").focus();
   				return false;				
   			}
			
			if($("#prjContent").val() == "")
   			{
   				alert("프로젝트내용을 입력해주세요.");
   				$("#prjContent").focus();
   				return false;				
   			}
			
			
			
			Swal.fire({
				  title: '다음 단계로 이동합니다!',
				  icon: 'warning',
				  showCancelButton: true,
				  confirmButtonColor: '#3085d6',
				  cancelButtonColor: '#d33',
				  confirmButtonText: '이동'
				}).then((result) => 
				{
				  if (result.value) {
					  nextstep.submit();
				  }
				});
				
			
			//alert("임시저장되어 다음단계로 넘어갑니다.");
			
			
		});
	    
	    
   			
   		
	    
	});
</script>



</head>

<body>


<jsp:include page="top.jsp"/>
      <!-- step시작-->
  <div class="container">
   <div class="start_pro">
     <div class="col-sm-12" style="margin:0 auto;">
      
         <div class="basic-info">
            <span>기본정보</span>
         </div>
         <div class="step1">
            <span class="step-1">STEP 1.</span>
            <span class="step-2">기본정보 입력하기</span><br>
            <span class="step-3">프로젝트의 기본적인 정보들 입니다.</span><br>
            <span class="step-4">달성가능한 목표금액을 입력해주세요.</span>
         </div>
     <!-- summer note용 데이터 확인 O  -->     
    <!--  <form action="extra.action" method="post"   >-->     <!--  enctype="multipart/form-data" 이걸쓰면 데이터가 안들어가네 ? -->
        
        <!-- 파일업로드용 test중  -->
        <form name="nextstep" action="upload.action" method="post" enctype="multipart/form-data" >
                  <input type="hidden" name="userNum" value="${userNum }">
          <div class="form-group pass_show"> 
           <label class="making1" id="prjNum">프로젝트 생성번호</label>
               <!-- <input type="hidden"  class="form-control" readonly="readonly" name="prjNum" id="prjNum">  -->
            </div> 
           
            <div class="form-group pass_show"> 
              <label class="making1">카테고리 선택</label>
              
                 <!--카테고리 출력 구문--------------------------------------------------------------------------------------------  -->
                <select id="categorySelect" name="caNum">  
                   
                <c:forEach var="list" items="${list }">      
               <option value="${list.caNum }">${list.caName }</option>     
            </c:forEach>
            
                                               
                </select> 
               <!--카테고리 출력 구문--------------------------------------------------------------------------------------------  -->
                
            </div>
             
          
            <div class="form-group pass_show"> 
               <label class="making1">프로젝트 제목</label>
                <input type="text"  class="form-control-title" placeholder="30자 미만으로 입력" name="prjTitle" id="prjTitle"> 
            </div> 
          
            <div class="form-group pass_show"> 
                <label class="making2">프로젝트 요약</label>
                <textarea cols="2" rows="1" style="color: black;" placeholder="10자 이상 50자 이하로 입력" class="form-control-sum" name="prjSname" id="prjSname"></textarea>
                <span id="counterText1" style="margin-left: 80%;">10자 이하로 입력 불가합니다.</span>
                <span id="counterText2" style="margin-left: 80%;">50자 이상 입력 불가합니다.</span>
            <span id="counter" style="margin-left: 95%;"></span>
            </div> 
            
           
            <div class="form-group pass_show"> 
               <label class="making1">목표금액 입력</label>
                <input type="text" class="form-control-money" placeholder="최소 10,000원 이상입니다.(숫자만입력가능합니다.)" id="prjGoal" name="prjGoal" > 
                <span id="minGoal" style="margin-left: 60%;">최소 목표금액 이상으로 입력해주세요.(최소목표금액:10,000원)</span>
            </div> 
            
            
            <div class="form-group pass_show">
                 <label class="making1">대표 이미지</label>
                <label class="making3">
                <input type="file" name="file" id="prjImg" accept=".jpg,.png">
                <div class="select_img"><img src="" /></div>
                </label> 
                
				<script>
					$("#prjImg").change(function(){
						if(this.files && this.files[0]) {
							var reader = new FileReader;
							reader.onload = function(data) {
								$(".select_img img").attr("src", data.target.result).width(500);								
							}
							reader.readAsDataURL(this.files[0]);
						}
					});
				</script>
				 
				<%-- <div>프로젝트 실제 저장 경로 : <%=request.getRealPath("/") %></div>
				<div>dd : <%=request.getContextPath() %></div> --%>
				 
				<!--  이코드는 현재 프로젝트의 실제 경로를 표시하는데 , 
				스프링 파일이 저장되는 워크스페이스와 다르므로 파일을 저장할 때 실제 경로를 알아야한다. -->
				<!--  이 경로를 통해서 파일을 불러오고 저장할 수 있다 .  -->	
				<!--  이 컴퓨터는 개발자의 컴퓨터에서 로컬로 실행되므로, 프로젝트가 완성되어 서버에 업로드 되었을 경우 새로운 경로를 확인해야한다. -->
            </div>
            
            
            <div class="form-group pass_show"> 
               <label class="making1">해시태그</label>
               <input type="text" class="form-control-tag" placeholder="콤마로 구별해서 입력해주세요. ex) 태그1, 태그2" name="prjTag" id="prjTag"> 
            </div> 
            
             <div class="form-group pass_show"> 
               <label class="making2">프로젝트 내용</label>
						<!-- <textarea cols="2" rows="25" name="prjContent" id="prjContent"> -->
						<textarea id="summernote" name="prjContent" ></textarea>
						<input type="hidden" name="imgList" value="">
						
            </div>


               <div class="buttons">
                  <div class="buttonparent" style="margin-top: 40px;">
                     <button id="canclebutton">취소</button>
                     <input type="button" id="savebutton" value="다음단계">
                  </div>
               </div>
               <!--buttons-->
            </form>
      </div><!--col-sm-12 -->  
   </div>
</div>
      <!-- step1끝 -->
     
      
  <jsp:include page="footer.jsp"></jsp:include>
     

<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.11/summernote-bs4.js"></script>


      
  
  <script src="js/owl.carousel.min.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <script src="js/jquery.magnific-popup.js"></script>
  <script src="js/jquery.firstVisitPopup.js"></script>
  <script src="js/custom.js"></script>
</body>


</html>