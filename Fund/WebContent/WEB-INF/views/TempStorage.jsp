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

<title>TempStorage.jsp</title>
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
<link rel="stylesheet" type="text/css" href="css/style.css">
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
<link rel="stylesheet" type="text/css" href="<%=cp%>/css/Main.css">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" type="text/css" href="<%=cp%>/css/mypage.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

<!-- ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■ -->
<link rel="stylesheet" href="css/mypagelike.css">
<link rel="stylesheet" href="css/tempPrj.css">
<!-- ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■ -->

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

@media ( max-width : 768px) {
   .vmenu h4 a {
      font-size: 15px;
      font-weight: bold;
   }
}

@media ( max-width : 500px) {
   .vmenu h4 a {
      font-size: 5px;
      font-weight: bold;
   }
}
</style>
<!-- 
<script type="text/javascript">
	$(document).ready(function()
	{
		$("#tempBtn").click(function()
		{	
			if ($("#myCheck").is(":checked"))
			{
			  	alert($("#myCheck").val());
			}
		});
	});
</script>

 --></head>

<body>

  

   <jsp:include page="top.jsp"/>
 	
			<!-- 사이드 넣기 전에 꼭 넣어주어야할 3가지 -->
			<div class="col-md-12 col-sm-12 col-xs-12" style="margin:0 auto; margin-top:40px; width:100%;">
			<div class="row" style="margin:0 auto; max-width:1200px;">
			<div class="modu" style="width:1200px; margin:0 auto;">
			<!-- 마이페이지 사이드 넣기 -->
			<!-- MypageSide가 col-md-2 col-sm-4 col-xs-4 이것이기 때문에 -->
			<jsp:include page="MypageSide.jsp"></jsp:include>
			
			<!-- 여기서부터 시작  이거 꼭 넣어주어야 함-->
			<div class="col-md-10 col-sm-8 col-xs-8" style"float:left; height:150vh;">
               <div
                  style=" height: 150vh;">
                  <!-- ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■ -->
                  <!-- 마이페이지 찜하기 내용 큰 머리 부분  -->
                  <div class="allLike">
                     <div class="content">
                        <div class="mypageImage">
                           <div class="zzim">
                              <i class="fas fa-user-circle"
                                 style="font-size: 100px; margin-top: 100px;"></i>
                           </div>
                           <div class="mypageLikeText">
                              <p>임시저장 프로젝트</p>
                           </div>
                        </div>
						
						<div class="tempStatus">
           					<div class="tempCount">
         						임시저장 프로젝트 <span class="totalCount">${count }</span>개
         					</div>
         					<!-- 
         					<div class="tempBtn2">
         						<button type="button" id="tempBtn">삭제</button>
         					</div>
         					 -->
						</div>
						
                        <!-- 마이페이지 프로젝트 나열 부분 1  -->
                    
                        <div>
                        <c:forEach var="list" items="${list }" varStatus="status">
                        <input type="hidden" value="${list.userNum}">
                           <div class="product-grid">
                              <div class="item" style="margin-bottom: 50px; widows: 190%;">
                                 <div class="product-thumb_like">
                                 
                                    <div class="image product-imageblock">
                                    <div class="myCheckDiv" >
                                 	<%--  <input type="checkbox" class="myCheck" value="${status.index }"> --%>
                                 	<button type="button" onclick="if(confirm('해당 프로젝트를 삭제하시겠습니까?'))location.href='mypagetempdelete.action?prjNum=${list.prjNum }'" style="background-color: #ffc425; border:none; font-size:22px; font-weight: bold; border-radius: 3px; color: #fff; float: right; margin-bottom:7px;"><i class="far fa-trash-alt"></i></button>
                                 </div>
                                       <a href="searchstep.action?prjNum=${list.prjNum }">
                                       <img data-name="product_image" src="images/product/sum1.jpg"
                                          class="img-responsive"></a>


                                       <div class="button-group text-center"></div>
                                    </div>
                                    <div class="caption product-detail text-center">
                                       <h6 data-name="product_name" class="product-name">
                                          <a href="#" title="Casual Shirt With Ruffle Hem">${list.prjTitle }</a>
                                       </h6>
                                    </div>
                                    <div>
                 
                                       <span class="writeDate" style="float: right">작성일 ${list.prjDate }</span>
                                    </div>
                                 </div>
                              </div>
                           </div>
						</c:forEach>

       					
					<!-- 삭제버튼 -->
				     <div style="clear: both;"></div>
					   
					     
                  </div>
               </div>
               <!-- ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■ -->

            </div>
        </div><!-- modu 끝 -->
	</div><!-- row 끝 -->
</div><!-- col-md-12 끝 -->




      <script src="js/jQuery_v3.1.1.min.js"></script>
      <script src="js/owl.carousel.min.js"></script>
      <script src="js/bootstrap.min.js"></script>
      <script src="js/jquery.magnific-popup.js"></script>
      <script src="js/jquery.firstVisitPopup.js"></script>
      <script src="js/custom.js"></script>
</body>

</html>