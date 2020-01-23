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

<title>makerpage.jsp</title>
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


<!-- ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■ -->
<link rel="stylesheet" href="css/makerpage.css">
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


</head>

<body>

    <jsp:include page="top.jsp"></jsp:include>
    

   <div class="container-fluid">
      <div class="row" style="margin: 0 auto; max-width: 1200px;">
         <div class="col-md-12 col-sm-12 col-xs-12"
            style="margin: 0 auto; margin-top: 40px;">
            <div class="row">

               <div class="makerPage">
                  <!-- ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■ -->
                  <!-- 마이페이지 찜하기 내용 큰 머리 부분  -->
                  <div class="all_like">
                     <div class="content">
                        <div class="mypage_image">
                           <div class="zzim">
                              <i class="fas fa-user-circle"
                                 style="font-size: 100px; margin-top: 100px;"></i>
                           </div>
                           <div class="mypage_liketext">
                              <p>${maName }</p>
                           </div>
                        </div>
                        
                        <!-- 만든 프로젝트 갯수 -->
                   <div class="makeStatus">
                          <div class="makeCount">
                        <!-- 전체 프로젝트 -->
                         <h2 class="makerTitle">만든프로젝트 <span style="color: #ffc425; font-size: 30px; font-weight: bold;"> ${total} </span>개</h2>
                     </div>
                      </div>
                        
                        
                  
                        <!-- 마이페이지 찜한 프로젝트 나열 부분 1  -->
                        
                           <c:forEach var="makeList" items="${data}">
                              <c:if test="${makeList.proSta=='진행중' || makeList.proSta=='성공'}">
                           <div class="product-grid">
                              <div class="item" style="width: 30%; margin-top: 50px;">
                                 <div class="product-thumb_like">
                                    <!-- 프로젝트 체크박스 부분 -->
                                    <div class="makeCheckDiv" >
                                             </div>
                                    <div class="image product-imageblock">
                                       <img data-name="product_image" src="upload/${list.prjImg }" class="img-responsive"
                                          onclick="location.href='projectdetail.action?proNum=${makeList.proNum}&userNum=${makeList.userNum}'">
                                       <div class="button-group text-center"></div>
                                    </div>
                                    <div class="caption product-detail text-center">
                                          <h6 data-name="product_name" class="product-name" style="height: 70px; margin-top: 15px;">
                                             
                                              <c:if test="${makeList.proSta=='진행중'}">
                                             <p class="state">프로젝트 상태 : <span class="state3">${makeList.proSta}</span></p>
                                              <a href="projectdetail.action" title="${makeList.prjTitle }" style="color: black; font-weight: bold; font-size: 15px; vertical-align: -webkit-baseline-middle;">${makeList.prjTitle }</a>
                                             </c:if>
                                             <c:if test="${makeList.proSta=='성공'}">
                                             <p class="state">프로젝트 상태 : <span class="state4">${makeList.proSta}</span></p>
                                              <a href="projectdetail.action" title="${makeList.prjTitle }" style="color: black; font-weight: bold; font-size: 15px; vertical-align: -webkit-baseline-middle;"">${makeList.prjTitle }</a>
                                             </c:if>
                                            
                                          </h6>
                                         <!-- 프로그래스바 시작 -->
                                       <div class="progress" style="margin-top: 5px; margin-bottom: 10px;">
                                        <div class="progress-bar" role="progressbar"
                                        aria-valuenow="${makeList.percent }" aria-valuemin="0" aria-valuemax="100"
                                        style="max-width:100%; width: ${makeList.percent}%; background-color: red;">
                                        </div>
                                       </div>
                                       <!-- end progressbar-->
                                       <!-- 창작자 이름 -->
                                        <span style="font-size: 15px; font-weight: bold; ">&nbsp;${makeList.maName }</span>
                                       <!-- 남은기간, 현재 총 후원금액 -->
                                        <div>
                                        <span class="c" style="float: left">
                                        <i class="fas fa-calendar-alt"></i></span> 
                                        <span class="b" style="float: left; margin-left: 6px;">
                                        <p>${makeList.remainDay }일남음</p></span> 
                                        <span class="c" style="float: right"><p>${makeList.totalMoney }원</p></span>
                                       </div>
                                    </div>
                                   </div>
                                 </div>
                              </div>
                           </c:if>
                        </c:forEach>
                        
                           <!-- 페이지 네이션 하단으로 고정시키는 구문 -->
                           <div class="clear" style="clear: both;"></div>

                           <!-- 페이지 네이션 -->
                           <div class="pagParent">
                              <div class="pagination">
                                 <a href="#">&laquo;</a> 
                                 <a href="#">1</a> 
                                 <a href="#">2</a> 
                                 <a href="#">3</a> 
                                 <a href="#">4</a> 
                                 <a href="#">5</a> 
                                 <a href="#">6</a>
                                 <a href="#">&raquo;</a>
                              </div>
                           </div>   
                     </div>
                  </div>
               </div>
               <!-- ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■ -->

            </div>
         </div>
      </div>

<jsp:include page="footer.jsp"/> 



      <script src="js/jQuery_v3.1.1.min.js"></script>
      <script src="js/owl.carousel.min.js"></script>
      <script src="js/bootstrap.min.js"></script>
      <script src="js/jquery.magnific-popup.js"></script>
      <script src="js/jquery.firstVisitPopup.js"></script>
      <script src="js/custom.js"></script>
</body>

</html>