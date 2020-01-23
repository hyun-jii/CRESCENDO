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
<!-- css파일 따로 적용한 부분 -->
<link rel="stylesheet" href="css/mypagelike.css">
<!-- ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■ -->
<!-- ajax 처리를 위해  -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>


<style>
@media ( max-width : 768px)
 {
   .vmenu h4 a
    {
      font-size: 15px;
      font-weight: bold;
    }
   #lion img
   {
        width: 20%;
   }
}

@media ( max-width : 500px)
 {
   .vmenu h4 a
    {
      font-size: 5px;
      font-weight: bold;
    }
    #lion img
   {
        width: 20%;
   }
}

#product img
{
       width: 90%;
       margin-top: 5px;
}
.supportCount{font-weight: bold; color:orange; font-size: 18px;}


.col1{font-size: 12px; text-align: left;}
</style>


</head>

<body>

     <jsp:include page="top.jsp"></jsp:include>
    
         <!-- 사이드 넣기 전에 꼭 넣어주어야할 3가지 -->
         <div class="col-md-12 col-sm-12 col-xs-12" style="margin:0 auto; margin-top:40px; width:100%;">
         <div class="row" style="margin:0 auto; max-width:1200px;">
         <div class="modu" style="width:1200px; margin:0 auto;">
         <!-- 마이페이지 사이드 넣기 -->
         <!-- MypageSide가 col-md-2 col-sm-4 col-xs-4 이것이기 때문에 -->
         <jsp:include page="MypageSide.jsp"></jsp:include>
         
         <!-- 여기서부터 시작  이거 꼭 넣어주어야 함-->
         <div class="col-md-10 col-sm-8 col-xs-8" style="border:1px solid #cccccc; float:left; height:2000px; padding-top:50px;">
               

                  <!-- ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■ -->
                  <!-- 마이페이지 찜하기 내용 큰 머리 부분  -->
                  <div class="all_like">
                     <div class="content">
                        <div class="mypage_image" style="background: #fff;">
                           <div class="zzim">
                              <i class="fas fa-user-circle"
                                 style="font-size: 100px; margin-top: 100px;"></i>
                           </div>
                           <div class="mypage_liketext">
                              <p>${user.userName }님의 후원현황</p>
                           </div>
                           
                        </div>
                        
                        
                        <div class="endfunding">
                        &nbsp;
                        내가 후원한 프로젝트&nbsp;&nbsp;<span class="modu1"><span class="supportCount">${count}</span>&nbsp;개</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        </div>
                        <br>
                        <div class="row" style="margin:0 auto;">
                         <!--■■■■■■■■■■■■■■■■■ 결제현황 시작 ■■■■■■■■■■■■■■■■■  -->
                         <c:forEach var="supportList" items="${data }">
                          <div class="colmom">
                        <div class="col-md-3" height:100px;"  id="product">
                           <div class="col1" style="margin-top:10px;"><td>후원날짜 : ${supportList.fDate }</td></div>
                           <!-- 프로젝트 이미지 클릭시 프로젝트 상세 페이지로 -->
                           <a href="<%=cp%>/projectdetail.action?proNum=${supportList.proNum}&userNum=${supportList.userNum}"><img
                              data-name="product_image" src="upload/${list.prjImg }"
                              class="img-responsive">
                            </a>
                           
                        </div>
                        
                        
                        <div class="col-md-5" height:100px; margin-top:80px;">
                            <div class="col6">후원번호:${supportList.fNum }</div>
                           <div class="col8" style="margin-right:7px; background: #eeeeee;" >
                           <!-- 결제상태가 N이 아니라면 결제완료가 뜸 -->
                           <c:if test="${supportList.poSta=='Y'}">
                            결제완료
                           </c:if>
                           <c:if test="${supportList.poSta=='N'}">
                            취소신청 완료
                           </c:if>
                           
                           </div>
                           <a href="">
                           <div class="col8">
                           <input type="hidden" name="poNum" id="poNum" value="${supportList.poNum }"> 
                           <input type="hidden" name="userNum" id="userName" value="${supportList.userName }">
                           <input type="hidden" name="reNum" id="reNum" value="${supportList.reNum }">
                           <input type="hidden" name="fCount" id="fCount" value="${supportList.fCount }">
                           <!-- 결제가 안되었다면 or 취소되었다면 -->
                           <c:if test="${supportList.poSta=='N'}">
                           <p onclick="alert('결제취소중인 프로젝트입니다.')">결제취소</p>
                           </c:if>
                           <c:if test="${supportList.poSta=='Y'}">
                           <p onclick="location.href='canclepay.action?userName=${supportList.userName }&reNum=${supportList.reNum }&fCount=${supportList.fCount }'">결제취소</p>
                           </c:if>
                           </div>
                           </a>
                           <div class="clear"></div>
                           <div class="col3">프로젝트명 : ${supportList.prjTitle }</div>
                           <div class="col3">리워드 선택 : ${supportList.reContent}</div>
                           <div class="col3"><b>${supportList.poMoney }</b>원을 후원하셨습니다.</div>
                        
                        </div>
                        
                        
                        
                        <div class="col-md-1">
                           <div class="col7">
                           <!-- arrow 아이콘 클릭시 프로젝트 상세페이지로 이동 -->
                           <a href="<%=cp%>/projectdetail.action?proNum=${supportList.proNum}&userNum=${supportList.userNum}">
                           <i class="fas fa-angle-right"></i>
                           </a>
                           
                            </div>
                        </div>
                        
                        </div>
                        </c:forEach>
                         <!--■■■■■■■■■■■■■■■■■ 결제현황 끝 ■■■■■■■■■■■■■■■■■  -->
                        </div><!-- end row -->
                  </div><!-- 여기가 끝 -->
            </div>
      </div>
      


      <script src="js/jQuery_v3.1.1.min.js"></script>
      <script src="js/owl.carousel.min.js"></script>
      <script src="js/bootstrap.min.js"></script>
      <script src="js/jquery.magnific-popup.js"></script>
      <script src="js/jquery.firstVisitPopup.js"></script>
      <script src="js/custom.js"></script>
</body>

</html>