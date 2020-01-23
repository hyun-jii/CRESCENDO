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

<title>MakeProject.jsp</title>
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
<meta name="viewport" content="width=device-width, initial-scale=1">
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
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<!-- ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■ -->
<!-- css파일 따로 적용한 부분 -->
<link rel="stylesheet" href="css/mypagelike.css">
<link rel="stylesheet" href="css/makeproject.css">

<!-- 쪽지보내기 모달 -->
<style>
.show-on-hover:hover > ul.dropdown-menu
{
    display: block;    
}

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
.state{font-size: 14px; margin-bottom:4px;}
.state2{font-size: 14px; font-weight: bold; color:red;}
.state3{font-size: 14px; font-weight: bold; color:orange;}
.state4{font-size: 14px; font-weight: bold; color:#ff559b;}
.state1{width: 20%;float: right; font-size: 15px; margin-top:10px; margin-right:10px;}
.totalMake{font-weight: bold;}
.fa-truck{font-size: 20px; color:orange}
</style>
<!-- ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■ -->
    <!-- 모두선택 -->
   <script src="//code.jquery.com/jquery-3.3.1.min.js"></script>
   <!-- ajax 처리를 위해  -->
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

<script>
function state_sort()
{
   $(function()
   {
      
      var state = $("#state").val();
      var sort = $("#sort").val();
      
      
      $(location).attr("href","<%=cp%>/make.action?state=" + state + "&sort=" + sort );
      
   });
   
}
</script>

<!-- 모두동의 체크 -->
    <script>
      $( document ).ready( function() {
        $( '.check-all' ).click( function() {
          $( '.check' ).prop( 'checked', this.checked );
        } );
      } );
    </script>
 <!-- 모두동의 체크 -->
 
 <!-- 쪽지보내기 모달 처리-->
 <script type="text/javascript">   
 
 $(function()
{
   $("#insertLetter").click(function()
   {
      $.ajax({
         url : "<%=cp%>/minsertletter2.action",
         type : "POST",
         data : { "leTitle"       : $("#leTitle").val(),
                  "leContent" : $("#leContent").val()
         },
         success : function(data)
         {
            if(data > 0)
            {
               alert("쪽지보내기 완료");
            }
            else
            {
               alert("쪽지 보내기 실패");
            }
         }
         
      });
   });
});
 
 

 </script>
 


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
         <div class="col-md-10 col-sm-8 col-xs-8" style="border:1px #cccccc; float:left; height:1000px; padding: 0px;">
         
            
               
               <div style="height: 1700px;">

                  <!-- ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■ -->
                  <!-- 만든 프로젝트 내용 큰 머리 부분  -->
                  <div class="all_like">
                     <div class="content">
                        <div class="mypage_image">
                           <div class="zzim">
                              <i class="fas fa-user-circle"
                                 style="font-size: 100px; margin-top: 100px;"></i>
                           </div>
                           <div class="mypage_liketext">
                              <p>${user.userName}님</p>
                           </div>
                        </div>
                        
                        <!-- 만든 프로젝트 갯수 -->
                         <div class="makeStatus">
                                   <div class="makeCount">
         
                              <c:choose>
                                 <c:when test="${state == 'total' }">
                                 <!-- 전체 프로젝트 -->
                                  만든 프로젝트&nbsp;<span class="totalMake">${total}</span>개
                                 </c:when>
                                 
                                 <c:when test="${state == 'allow' }">
                                 <!-- 승인 프로젝트 -->
                                  승인 프로젝트&nbsp;<span class="totalMake">${allowtotal}</span>개
                                 </c:when>
                                 
                                 <c:when test="${state == 'refuse' }">
                                 <!-- 거절 프로젝트 -->
                                  승인 거절 프로젝트&nbsp;<span class="totalMake">${refusetotal}</span>개
                                 </c:when>
                                 
                                 <c:when test="${state == 'wait' }">
                                 <!-- 승인대기 프로젝트 -->
                                  승인 대기 프로젝트&nbsp;<span class="totalMake">${waittotal}</span>개
                                 </c:when>
                                 
                                 <c:otherwise>
                                        만든 프로젝트&nbsp;<span class="totalMake">${total}</span>개
                                 </c:otherwise>
                              </c:choose>
                              </div>
                               </div>
                               <br>
                               
                            
                            <!-- 프로젝트 드롭다운 -->

                         <select name="state" id="state" onchange="state_sort()" class="state1">
                          <option value="total" ${state == "total"?"selected='selected'":"" } selected="selected">만든 프로젝트</option>
                          <option value="allow" ${state == "allow"?"selected='selected'":"" }>승인 프로젝트</option>
                          <option value="refuse" ${state == "refuse"?"selected='selected'":"" }>승인 거절 프로젝트</option>
                          <option value="wait" ${state == "wait"?"selected='selected'":"" }>승인 대기 프로젝트</option>
                         </select>
                        <br><br>

                        <!-- 마이페이지 만든 프로젝트 나열 부분 1  -->
                        <div style="margin-top: 30px;">
                        <c:choose>
                           <c:when test="${state == 'total' }">
                            <c:forEach var="makeList" items="${data}">
                           <div class="product-grid">
                              <div class="item" style="width: 31%;">
                                 <div class="product-thumb_like">
                                    
                                    <div class="image product-imageblock">
                                    <input type="hidden" id="userNum" name="userNum" value="${makeList.userNum }">
                                    <input type="hidden" id="proNum" name="proNum" value="${makeList.proNum }">
                                    <input type="hidden" id="prjTitle" name="prjTitle" value="${makeList.prjTitle }">
                                    
                                       <img data-name="product_image" src="upload/${list.prjImg }" class="img-responsive"
                                          onclick="location.href='supporterlist.action?proNum=${makeList.proNum }&userNum=${makeList.userNum}&prjTitle=${makeList.prjTitle}'">
                                       <div class="button-group text-center"></div>
                                    </div>
                                    <div class="caption product-detail text-center">
                                          <h6 data-name="product_name" class="product-name" style="height: 70px; margin-top: 15px;">
                                             <c:if test="${makeList.finalSta=='거절'}">
                                             <p class="state">프로젝트 상태 : <span class="state2">승인거절</span></p>
                                             </c:if>
                                             <c:if test="${makeList.proSta=='진행중'}">
                                             <p class="state">프로젝트 상태 : <span class="state3">${makeList.proSta}</span></p>
                                             </c:if>
                                             <c:if test="${makeList.proSta=='성공'}">
                                             <p class="state">프로젝트 상태 : <span class="state4">${makeList.proSta}</span></p>
                                             </c:if>
                                             <c:if test="${makeList.proSta=='실패'}">
                                             <p class="state">프로젝트 상태 : <span class="state4">${makeList.proSta}</span></p>
                                             </c:if>
                                             <c:if test="${makeList.finalDate ==null}">
                                             <p class="state">프로젝트 상태 : <span class="state4">승인대기</span></p>
                                             </c:if>
                                             <a href="#" title="${makeList.prjTitle }" style="color: black; font-weight: bold; font-size: 15px;vertical-align: -webkit-baseline-middle;">${makeList.prjTitle }</a>
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
                                       
                                          <!--  쪽지모달 (관리자에게) -->
                                          <a id="modal-94" role="button" href="#modal-container-94" data-toggle="modal">
                                           <i class="fas fa-envelope" style="float:right; margin-left:10px;"></i>
                                          </a>
                                           <!--  쪽지모달 (관리자에게) -->
                                           <!-- 배송완료 버튼은 성공한 프로젝트에서만 보이게 -->
                                          <c:if test="${makeList.percent >=100}">
                                           <i class="fas fa-truck"style="float:right; margin-left:10px;"
                                           onclick="if(confirm('배송완료 하시겠습니까?'))location.href='postfinish.action?proNum=${makeList.proNum }'"></i>
                                           </c:if>
                                           <c:if test="${makeList.percent >=100 && makeList.proFinish != null}">
                                           <i class="fas fa-truck"style="float:right; margin-left:10px; color:#eeeeee"
                                           onclick="alert('배송완료된 프로젝트 입니다.')"></i>
                                           </c:if>
                                    
                                        <span class="c" style="float: right"><p>${makeList.totalMoney }원</p></span>
                                       </div>
                                    </div>
                                   </div>
                                 </div>
                              </div>
                           </c:forEach>
                           </c:when>
                           
                           
                           
                            <c:when test="${state == 'allow' }">
                            <c:forEach var="makeList" items="${allowdata}">
                           <div class="product-grid">
                              <div class="item" style="width: 31%;">
                                 <div class="product-thumb_like">
                                    
                                    <div class="image product-imageblock">
                                    <input type="hidden" id="userNum" name="userNum" value="${makeList.userNum }">
                                    <input type="hidden" id="proNum" name="proNum" value="${makeList.proNum }">
                                    <input type="hidden" id="prjTitle" name="prjTitle" value="${makeList.prjTitle }">
                                       <img data-name="product_image" src="upload/${list.prjImg }" class="img-responsive"
                                          onclick="location.href='supporterlist.action?proNum=${makeList.proNum }&userNum=${makeList.userNum}&prjTitle=${makeList.prjTitle}'">
                                    </div>
                                    <div class="caption product-detail text-center">
                                          <h6 data-name="product_name" class="product-name" style="height: 70px; margin-top: 15px;">
                                             <c:if test="${makeList.finalSta=='거절'}">
                                             <p class="state">프로젝트 상태 : <span class="state2">승인거절</span></p>
                                             </c:if>
                                             <c:if test="${makeList.proSta=='진행중'}">
                                             <p class="state">프로젝트 상태 : <span class="state3">${makeList.proSta}</span></p>
                                             </c:if>
                                             <c:if test="${makeList.proSta=='성공'}">
                                             <p class="state">프로젝트 상태 : <span class="state4">${makeList.proSta}</span></p>
                                             </c:if>
                                             <c:if test="${makeList.proSta=='실패'}">
                                             <p class="state">프로젝트 상태 : <span class="state4">${makeList.proSta}</span></p>
                                             </c:if>
                                             <c:if test="${makeList.finalDate ==null}">
                                             <p class="state">프로젝트 상태 : <span class="state4">승인대기</span></p>
                                             </c:if>
                                         
                                            
                                             <a href="#" title="${makeList.prjTitle }" style="color: black; font-weight: bold; font-size: 15px;vertical-align: -webkit-baseline-middle;">${makeList.prjTitle }</a>
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
                                         <!--  쪽지모달 (관리자에게) -->
                                          <a id="modal-94" role="button" href="#modal-container-94" data-toggle="modal">
                                           <i class="fas fa-envelope" style="float:right; margin-left:10px;"></i>
                                           </a>
                                           <!--  쪽지모달 (관리자에게) -->
                                           <!-- 배송완료 버튼은 성공한 프로젝트에서만 보이게 -->
                                          <c:if test="${makeList.percent >=100 && makeList.proFinish == null}">
                                           <i class="fas fa-truck"style="float:right; margin-left:10px;"
                                           onclick="if(confirm('배송완료 하시겠습니까?'))location.href='postfinish.action?proNum=${makeList.proNum }'"></i>
                                           </c:if>
                                            <c:if test="${makeList.percent >=100 && makeList.proFinish != null}">
                                           <i class="fas fa-truck"style="float:right; margin-left:10px; color:#eeeeee"
                                           onclick="alert('배송완료된 프로젝트 입니다.')"></i>
                                           </c:if>
                                        <span class="c" style="float: right"><p>${makeList.totalMoney }원</p></span>
                                       </div>
                                    </div>
                                   </div>
                                 </div>
                              </div>
                           </c:forEach>
                           </c:when>
                           
                            <c:when test="${state == 'refuse' }">
                            <c:forEach var="makeList" items="${refusedata}">
                           <div class="product-grid">
                              <div class="item" style="width: 31%;">
                                 <div class="product-thumb_like">
                                    
                                    <div class="image product-imageblock">
                                    <input type="hidden" id="userNum" name="userNum" value="${makeList.userNum }">
                                    <input type="hidden" id="proNum" name="proNum" value="${makeList.proNum }">
                                    <input type="hidden" id="prjTitle" name="prjTitle" value="${makeList.prjTitle }">
                                       <img data-name="product_image" src="upload/${list.prjImg }" class="img-responsive"
                                          onclick="location.href='supporterlist.action?proNum=${makeList.proNum }&userNum=${makeList.userNum}&prjTitle=${makeList.prjTitle}'">
                                       <div class="button-group text-center"></div>
                                    </div>
                                    <div class="caption product-detail text-center">
                                          <h6 data-name="product_name" class="product-name" style="height: 70px; margin-top: 15px;">
                                             <c:if test="${makeList.finalSta=='거절'}">
                                             <p class="state">프로젝트 상태 : <span class="state2">승인거절</span></p>
                                             </c:if>
                                             <c:if test="${makeList.proSta=='진행중'}">
                                             <p class="state">프로젝트 상태 : <span class="state3">${makeList.proSta}</span></p>
                                             </c:if>
                                             <c:if test="${makeList.proSta=='성공'}">
                                             <p class="state">프로젝트 상태 : <span class="state4">${makeList.proSta}</span></p>
                                             </c:if>
                                             <c:if test="${makeList.proSta=='실패'}">
                                             <p class="state">프로젝트 상태 : <span class="state4">${makeList.proSta}</span></p>
                                             </c:if>
                                             <c:if test="${makeList.finalDate ==null}">
                                             <p class="state">프로젝트 상태 : <span class="state4">승인대기</span></p>
                                             </c:if>
                                             <a href="#" title="${makeList.prjTitle }" style="color: black; font-weight: bold; font-size: 15px; vertical-align: -webkit-baseline-middle;">${makeList.prjTitle }</a>
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
                                         <!--  쪽지모달 (관리자에게) -->
                                          <a id="modal-94" role="button" href="#modal-container-94" data-toggle="modal">
                                           <i class="fas fa-envelope" style="float:right; margin-left:10px;"></i>
                                           </a>
                                           <!--  쪽지모달 (관리자에게) -->
                                        <span class="c" style="float: right"><p>${makeList.totalMoney }원</p></span>
                                       </div>
                                    </div>
                                   </div>
                                 </div>
                              </div>
                           </c:forEach>
                           </c:when>
                           
                           <c:when test="${state == 'wait' }">
                            <c:forEach var="makeList" items="${waitdata}">
                           <div class="product-grid">
                              <div class="item" style="width: 31%;">
                                 <div class="product-thumb_like">
                                    
                                    <div class="image product-imageblock">
                                    <input type="hidden" id="userNum" name="userNum" value="${makeList.userNum }">
                                    <input type="hidden" id="proNum" name="proNum" value="${makeList.proNum }">
                                    <input type="hidden" id="prjTitle" name="proNum" value="${makeList.prjTitle }">
                                    
                                       <img data-name="product_image" src="upload/${list.prjImg }" class="img-responsive"
                                          onclick="location.href='supporterlist.action?proNum=${makeList.proNum }&userNum=${makeList.userNum}&prjTitle=${makeList.prjTitle}'">
                                       <div class="button-group text-center"></div>
                                    </div>
                                    <div class="caption product-detail text-center">
                                          <h6 data-name="product_name" class="product-name" style="height: 70px; margin-top: 15px;">
                                             <c:if test="${makeList.finalSta=='거절'}">
                                             <p class="state">프로젝트 상태 : <span class="state2">승인거절</span></p>
                                             </c:if>
                                             <c:if test="${makeList.proSta=='진행중'}">
                                             <p class="state">프로젝트 상태 : <span class="state3">${makeList.proSta}</span></p>
                                             </c:if>
                                             <c:if test="${makeList.proSta=='성공'}">
                                             <p class="state">프로젝트 상태 : <span class="state4">${makeList.proSta}</span></p>
                                             </c:if>
                                             <c:if test="${makeList.proSta=='실패'}">
                                             <p class="state">프로젝트 상태 : <span class="state4">${makeList.proSta}</span></p>
                                             </c:if>
                                             <c:if test="${makeList.finalDate ==null}">
                                             <p class="state">프로젝트 상태 : <span class="state4">승인대기</span></p>
                                             </c:if>
                                             <a href="#" title="${makeList.prjTitle }" style="color: black; font-weight: bold; font-size: 15px; vertical-align: -webkit-baseline-middle;">${makeList.prjTitle }</a>
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
                                       
                                          <!--  쪽지모달 (관리자에게) -->
                                          <a id="modal-94" role="button" href="#modal-container-94" data-toggle="modal">
                                           <i class="fas fa-envelope" style="float:right; margin-left:10px;"></i>
                                          </a>
                                           <!--  쪽지모달 (관리자에게) -->
                                           <!-- 배송완료 버튼은 성공한 프로젝트에서만 보이게 -->
                                          <c:if test="${makeList.percent >=100}">
                                           <i class="fas fa-truck"style="float:right; margin-left:10px;"
                                           onclick="if(confirm('배송완료 하시겠습니까?'))location.href='postfinish.action?proNum=${makeList.proNum }'"></i>
                                           </c:if>
                                           <c:if test="${makeList.percent >=100 && makeList.proFinish != null}">
                                           <i class="fas fa-truck"style="float:right; margin-left:10px; color:#eeeeee"
                                           onclick="alert('배송완료된 프로젝트 입니다.')"></i>
                                           </c:if>
                                    
                                        <span class="c" style="float: right"><p>${makeList.totalMoney }원</p></span>
                                       </div>
                                    </div>
                                   </div>
                                 </div>
                              </div>
                           </c:forEach>
                           </c:when>
                           
                           <c:otherwise>
                           <c:forEach var="makeList" items="${data}">
                           <div class="product-grid">
                              <div class="item" style="width: 31%;">
                                 <div class="product-thumb_like">
                                    
                                    <div class="image product-imageblock">
                                    <input type="hidden" id="userNum" name="userNum" value="${makeList.userNum }">
                                    <input type="hidden" id="proNum" name="proNum" value="${makeList.proNum }">
                                    <input type="hidden" id="prjTitle" name="prjTitle" value="${makeList.prjTitle }">
                                       <img data-name="product_image" src="upload/${list.prjImg }" class="img-responsive"
                                          onclick="location.href='supporterlist.action?proNum=${makeList.proNum }&userNum=${makeList.userNum}&prjTitle=${makeList.prjTitle}'">
                                       <div class="button-group text-center"></div>
                                    </div>
                                    <div class="caption product-detail text-center">
                                          <h6 data-name="product_name" class="product-name" style="height: 70px; margin-top: 15px;">
                                             <c:if test="${makeList.finalSta=='거절'}">
                                             <p class="state">프로젝트 상태 : <span class="state2">승인거절</span></p>
                                             </c:if>
                                             <c:if test="${makeList.proSta=='진행중'}">
                                             <p class="state">프로젝트 상태 : <span class="state3">${makeList.proSta}</span></p>
                                             </c:if>
                                             <c:if test="${makeList.proSta=='성공'}">
                                             <p class="state">프로젝트 상태 : <span class="state4">${makeList.proSta}</span></p>
                                             </c:if>
                                             <c:if test="${makeList.proSta=='실패'}">
                                             <p class="state">프로젝트 상태 : <span class="state4">${makeList.proSta}</span></p>
                                             </c:if>
                                             <c:if test="${makeList.finalDate ==null}">
                                             <p class="state">프로젝트 상태 : <span class="state4">승인대기</span></p>
                                             </c:if>
                                             <a href="#" title="${makeList.prjTitle }" style="color: black; font-weight: bold; font-size: 15px; vertical-align: -webkit-baseline-middle;">${makeList.prjTitle }</a>
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
                                         <!--  쪽지모달 (관리자에게) -->
                                          <a id="modal-94" role="button" href="#modal-container-94" data-toggle="modal">
                                           <i class="fas fa-envelope" style="float:right; margin-left:10px;"></i>
                                           </a>
                                           <!--  쪽지모달 (관리자에게) -->   
                                           <!-- 배송완료 버튼은 성공한 프로젝트에서만 보이게 -->
                                          <c:if test="${makeList.percent >=100 && makeList.proFinish == null}">
                                           <i class="fas fa-truck"style="float:right; margin-left:10px;"
                                           onclick="if(confirm('배송완료 하시겠습니까?'))location.href='postfinish.action?proNum=${makeList.proNum }'"></i>
                                           </c:if>
                                           <c:if test="${makeList.percent >=100 && makeList.proFinish != null}">
                                           <i class="fas fa-truck"style="float:right; margin-left:10px; color:#eeeeee"
                                           onclick="alert('배송완료된 프로젝트 입니다.')"></i>
                                           </c:if>
                                           
                                        <span class="c" style="float: right"><p>${makeList.totalMoney }원</p></span>
                                       </div>
                                    </div>
                                   </div>
                                 </div>
                              </div>
                           </c:forEach>
                           </c:otherwise>
                           </c:choose>   
                        </div>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </div>
</div>
  

    <!-- 답장모달폼 -->
         <div class="modal fade" id="modal-container-94" role="dialog" aria-hidden="true" aria-labelledby="myModalLabel" style="margin-top: 100px;">
            <div class="modal-dialog" role="document">
               <div class="modal-content">
                  <div class="modal-header" style="background-color: orange; color:#fff; font-size: 16px; font-weight: bold">
                     <h5 class="modal-title" id="myModalLabel">
                        <center>쪽지 보내기</center>
                     </h5>
                 </div>
         
         <div class="modal-body" style="height: 320px;">
                     <br>
         
                  <span style="font-weight: bold; font-size: 15px; color: black; margin-top:10px;">제목
                     </span>
                      <input type="text" style="width: 65%; margin-left: 70px; font-size: 10px;"
                     placeholder="제목을 입력해주세요" id="leTitle" name="leTitle" ><br><br>
                  <span style="font-weight: bold; font-size: 15px; color: black; vertical-align: top;">내용</span>
                  <textarea rows="5"
                     style="width: 65%; margin-left: 70px; resize: none;"
                     placeholder="내용을 입력해주세요." id="leContent" name="leContent"></textarea>
               
                    <div class="mid" style="width:15%; margin:0 auto; margin-top:20px;">
                  <button class="btn btn-secondary" type="button" id="insertLetter"
                     data-dismiss="modal"
                     style="background-color: orange; color: white;" >쪽지 보내기</button>
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