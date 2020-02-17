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

  <title>마이페이지 > 프로필설정 </title>
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
  <link rel="stylesheet" type="text/css" href="<%=cp %>/css/Main.css">
  <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
  <link rel="stylesheet" type="text/css" href="<%=cp %>/css/mypage.css">
  <link rel="stylesheet" type="text/css" href="<%=cp %>/css/modal.css">
  
<style type="text/css">
   @media (max-width: 768px)
    {
      .vmenu h4 a
       {
       
          font-size:15px;
          font-weight: bold;
      }
      
    }
    
    @media (max-width: 500px)
    {
      .vmenu h4 a
       {
       
          font-size:5px;
          font-weight: bold;
      }
    }
   .btngray
   {
      background-color:#eeeeee; float:left; margin-left:10px; border:none; color:#666;
       width:90px;height:30px; border-radius: 2px; font-size: 15px; font-weight: bold;
   }    
   .btngray:focus 
   {
      outline: none;
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
</script>
   
<!-- 주소API -->
<script src="https://ssl.daumcdn.net/dmaps/map_js_init/postcode.v2.js"></script>

<script type="text/javascript">

function openZipSearch() {
    /*  var userAddr =$("#addr1").val().trim() + $("#addr2").val().trim(); */
   new daum.Postcode({
      oncomplete: function(data) {
         $('[name=zipCode]').val(data.zonecode); // 우편번호 (5자리)
         $('[name=userAddr]').val(data.address);
         $('[name=userAddr2]').val(data.buildingName);
         /*  $("#userAddr").show(); */
      }
   }).open();
} 

</script>

<!-- 닉네임 중복 확인 -->
<script type="text/javascript">

   $(function()
   {
      /* 이미 사용중인 이름 = 0, 사용가능한 이름 = 1 */
      check = 0;
      
      $("#nameCheck").click(function()
      {
         
         $.ajax({
            type : "GET",
            data : {"userName" : $("#userName").val() },
            url : "<%=cp%>/checkname.action",
            success : function(data) {
               if(data > 0) {
                  
                  alert("이미 존재하는 닉네임입니다.");
                  $("#userName").focus();
                  check = 0;
               }
               else
               {
                  alert("사용가능한 닉네임입니다.")
                  check = 1;
         
               }
               
            } 
            
         }); 
         
      });
   });
   
   /* 수정폼 검사(중복확인버튼 클릭여부, 빈칸여부) */
   
      $(function()
      {
         $("#btnUpdate").click(function()
         {
            
            /* 이미 사용중인 닉네임 이라면 */
            if(check == 0)
            {
               /* 닉네임은 변경하고 싶지 않은 경우 */
               /* 세션에 저장된 닉네임과 일치한다면, 중복확인버튼을 누르지않아도 submit */
               if($("#userName").val() == $("#sessionName").val())
               {
                  $("#updateForm").submit();
               }
               else
               {
                  alert("중복확인버튼을 눌러주세요.");
                  return;
               }
               
            }
            /* 중복 확인 후 사용가능한 닉네임 이라면 */
            else
            {
               $("#updateForm").submit();
            }
            
            
         });
      });
   
</script>

<script type="text/javascript">
   $(document).ready(function() 
   {
      $(".form-control").bind("keyup", function() 
      {
         re = ( /(^02.{0}|^01.{1}|[0-9]{3})([0-9]+)([0-9]{4})/, "$1-$2-$3" );
         var temp = $(".form-control").val();
         
         if(re.test(temp))
         {
            $(".form-control").val(temp.replace(re,"")); 
         }
      });
   });
</script>

<script type="text/javascript">
$(function() 
{
   // 1차비밀번호 입력시 유효성검사 실시.
   $("#inputPassword1").blur(function() {
      userPw = $("#inputPassword1").val().trim();
      pwdRegex = /^[a-zA-Z0-9]{6,14}$/;
      if(userPw ==""){
         $("#passwordmsg1").show();
         $("#passwordmsg1").text("비밀번호를 입력해주세요.").css("color", "#F39C12");
         $("#userPw").focus();
      }else if(!pwdRegex.test(userPw)){
            $("#passwordmsg1").show();
            $("#passwordmsg1").text("숫자와 문자를 조합하여 6이상 14자리 이내로 작성해주세요.").css("color","#8E44AD");
            $("#inputPassword1").focus();
      }else{
         $("#passwordmsg1").show();
         $("#passwordmsg1").show().text("비밀번호 재입력 칸에 다시한번 입력해주세요.").css("color","#F39C12");
         /* $("#userPwdCk").focus(); */
      
      }
   });
         
   // 2차 비밀번호 입력시 유효성 검사 실시.
   $("#inputPassword2").blur(function() {
      userPw = $("#inputPassword1").val().trim();
      userPwdCk = $("#inputPassword2").val().trim();
      if(userPwdCk != userPw){
         $("#passwordmsg2").text("비밀번호가 일치하지 않습니다.").css("color", "#8E44AD");
      }else if(userPw == "" || userPwdCk == ""){
         $("#passwordmsg2").text("비밀번호를 입력해 주세요.").css("color", "#8E44AD");
      }else{
         $("#passwordmsg2").show();
         $("#passwordmsg2").text("다음 단계를 진행해주세요.").css("color", "#F39C12");
      }
   });
   
   
   // 핸드폰 유효성 검사
    $("#inputtell").on('keydown', function(e){
          // 숫자만 입력받기
           var trans_num = $(this).val().replace(/-/gi,'');
         var k = e.keyCode;
                  
         if(trans_num.length >= 11 && ((k >= 48 && k <=126) || (k >= 12592 && k <= 12687 || k==32 || k==229 || (k>=45032 && k<=55203)) ))
         {
               e.preventDefault();
         }
          }).on('blur', function(){ // 포커스를 잃었을때 실행합니다.
              if($(this).val() == '') return;
   
              // 기존 번호에서 - 를 삭제합니다.
              var trans_num = $(this).val().replace(/-/gi,'');
            
              // 입력값이 있을때만 실행합니다.
              if(trans_num != null && trans_num != '')
              {
                  // 총 핸드폰 자리수는 11글자이거나, 10자여야 합니다.
                  if(trans_num.length==11 || trans_num.length==10) 
                  {   
                      // 유효성 체크
                      var regExp_ctn = /^(01[016789]{1}|02|0[3-9]{1}[0-9]{1})([0-9]{3,4})([0-9]{4})$/;
                      if(regExp_ctn.test(trans_num))
                      {
                          // 유효성 체크에 성공하면 하이픈을 넣고 값을 바꿔줍니다.
                          trans_num = trans_num.replace(/^(01[016789]{1}|02|0[3-9]{1}[0-9]{1})-?([0-9]{3,4})-?([0-9]{4})$/, "$1-$2-$3");                  
                          $(this).val(trans_num);
                          $("#telmsg1").show();
                       $("#telmsg1").text("다음 단계를 진행해주세요.").css("color", "#F39C12");
                      }
                      else
                      {
                          $("#telmsg1").text("유효하지 않은 전화번호 입니다.").css("color", "#8E44AD");
                          $(this).val("");
                          $(this).focus();
                      }
                  }
                  else 
                  {
                     $("#telmsg1").text("유효하지 않은 전화번호 입니다.").css("color", "#8E44AD");
                      $(this).val("");
                      $(this).focus();
                  }
            }
     });  

});


/* 회원 탈퇴 사유 ajax 처리 */
$(function()
{
   $("#outBtn").click(function()
   {
      $.ajax({
         type : "POST",
         url : "<%=cp%>/userout.action",
         data : {
                  "reason": $("#reason").val()
               },
         success : function(data)
         {
            if(data == 1)
            {
               Swal.fire
               ( 
                '탈퇴 불가능'
                ,'진행중인 프로젝트가 존재하여 탈퇴가 불가능합니다!'
                , 'error'
                )
                
               //alert("진행중인 프로젝트가 존재하여 탈퇴가 불가능합니다!");
               
            }
            else if(data == 2)
            {
               
               Swal.fire({
                    position: 'center',
                    type: 'success',
                    title: '그동안 가르쳐주신 김호진 강사님 감사합니다.',
                    text:'회원탈퇴가 완료되었습니다.',
                    
                    showConfirmButton: false,
                    timer: 15000
                  }).then((result) => {
                                           
                         location.href="main.action";
                      
                  }) 
                  
                  /* swal({
                       title: "회원 탈퇴가 완료되었습니다.",
                       text: "크레센도와 함께해주셔서 감사합니다",
                       imageUrl: 'thumbs-up.jpg'
                     }); */
               
                  
               //alert("회원 탈퇴가 완료되었습니다. 크레센도와 함께해주셔서 감사합니다.")
               //$(location).attr("href","main.action");
            }
            else
            {
                alert("전송실패");
            }
         }
         
      });
   });
   
   // 탈퇴안내 모달창에서 확인 클릭 시, 탈퇴사유 모달창으로 이동 후, 탈퇴안내 모달 창 닫힘
   $("#modal-45").click(function()
   {
      $("#modal-45").attr("href","#modal-container-45");
      $("#modal-45").attr("data-dismiss", "modal");
      
      
   });
});


</script>

<!-- 주소API -->
<script src="https://ssl.daumcdn.net/dmaps/map_js_init/postcode.v2.js"></script>

<script type="text/javascript">

function openZipSearch() {
    /*  var userAddr =$("#addr1").val().trim() + $("#addr2").val().trim(); */
   new daum.Postcode({
      oncomplete: function(data) {
         $('[name=zipCode]').val(data.zonecode); // 우편번호 (5자리)
         $('[name=userAddr1]').val(data.address);
         $('[name=userAddr2]').val(data.buildingName);
         /*  $("#userAddr").show(); */
      }
   }).open();
} 
</script>

 
</head>

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
         <div class="col-md-10 col-sm-5 col-xs-5" style="border:1px solid #cccccc; float:left; height:1000px; padding-top:50px;">
         
         <!-- 닉네임 변경 시 닉네임 비교를 위한 세션에 저장된 회원의 닉네임 -->
         <input type="hidden" id="sessionName" value="${user.userName }" >
         
         <!-- 내정보폼 시작 -->
         <form action="userupdate.action" method="post" class="form-horizontal" name="updateForm" id="updateForm">
         
               <div class="form-group">
                    <label for="inputprofile" class="control-label col-xs-8 col-md-4" style="font-size: 20px; color:#333; border-bottom: 1px ">프로필 설정</label>
                </div>
                <!-- 회원정보 번호 -->
                <input type="hidden" name=userNum id="userNum" value="${userInfo.userNum }">
                
                <!-- 프로필 사진 -->
                <div class="form-group">
                    <label for="inputpicture" class="control-label col-xs-6 col-md-4">프로필 사진</label>
                    <div class="col-xs-6">
                         <label class="making3"><input type="text" name="userProfile" value="${userInfo.userProfile }"></label> 
                    </div>
                </div>
                <!-- 닉네임 -->
                <div class="form-group">
                    <label for="inputnick" class="control-label col-xs-6 col-md-4">닉네임</label>
                    <div class="col-xs-6">
                        <input type="text" class="form-control" id="userName" name="userName" value="${userInfo.userName }" style="width:287px; float:left;" required ="required">
                        <button type="button" id="nameCheck" class="btngray">중복확인</button>
                    </div>
                </div>
                <!-- 비밀번호 -->
                <div class="form-group">
                    <label for="inputPassword" class="control-label col-xs-6 col-md-4">새 비밀번호 입력</label>
                    <div class="col-xs-6">
                        <input type="password" class="form-control" id="inputPassword1" name="userPw" value="${userInfo.userPw }">
                        <br><span id="passwordmsg1" style="width: 100%;"></span>
                    </div>
                </div>
                  <div class="form-group">
                    <label for="inputPassword" class="control-label col-xs-6 col-md-4">새 비밀번호 확인</label>
                    <div class="col-xs-6">
                        <input type="password" class="form-control" id="inputPassword2" value="${userInfo.userPw }">
                        <br><span id="passwordmsg2" style="width: 100%;"></span>
                    </div>
                </div>
                <!-- 이메일 -->
                <div class="form-group">
                    <label for="inputEmail" class="control-label col-xs-6 col-md-4">이메일</label>
                    <div class="col-xs-6">
                        <input type="email" class="form-control" id="inputEmail" name="userEmail" value="${userInfo.userEmail }" readonly="readonly">
                    </div>
                </div>
                <!-- 전화번호 -->
                <div class="form-group">
                    <label for="inputtell" class="control-label col-xs-6 col-md-4">전화번호</label>
                    <div class="col-xs-6">
                        <input type="text" class="form-control" id="inputtell" name="userTel" value="${userInfo.userTel }">
                        <br><span id="telmsg1" style="width: 100%;"></span>
                    </div>
                </div>
                
                <!-- 주소 -->
                  <div class="form-group">
                    <label for="inputaddr" class="control-label col-xs-6 col-md-4">주소</label>
                    <div class="col-xs-6">
                        <input type="text" class="form-control" id="inputaddr" name="zipCode" value="${userInfo.zipCode }" style="width:200px; float:left;">
                        <button type="button" class="btngray" onclick="openZipSearch()">주소검색</button>
                    </div>
                </div>
                
                 <div class="form-group">
                    <label for="inputaddr" class="control-label col-xs-6 col-md-4"></label>
                    <div class="col-xs-6">
                        <input type="text" class="form-control" id="inputaddr" name="userAddr" value="${userInfo.userAddr }" readonly="readonly">
                    </div>
                </div>
                
                 <div class="form-group">
                    <label for="inputaddr" class="control-label col-xs-6 col-md-4"></label>
                    <div class="col-xs-6">
                        <input type="text" class="form-control" id="inputaddr" name="userAddr2" placeholder="상세주소를 입력해주세요">
                    </div>
                </div>
                
                <div class="form-group">
                    <div class="col-xs-offset-2 col-xs-12 col-md-12">
                        <center><button type="button" id="btnUpdate" class="btn btn-primary" role="button">수정하기</button></center>
                    </div>
                </div>
                <div class="real" style="text-align: center; font-size: 14px;">
                크레센도에서 정말 탈퇴하시겠습니까?&nbsp;&nbsp;
                 <a id="modal-33" href="#modal-container-33" role="button" class="btn" data-toggle="modal">회원탈퇴</a>
         
                </div>
            </form>
            <!-- 내정보폼 끝 -->
            </div>
            </div><!-- modu 끝 -->
            </div><!-- row 끝 -->
            </div><!-- col-md-12 끝 -->
            
            
            <!-- ■■■■■■■■■■■■■■■■■■■ 회원탈퇴 모달 ■■■■■■■■■■■■■■■■■■■-->
      
         <div class="modal fade" id="modal-container-33" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
            <div class="modal-dialog" role="document">
               <div class="modal-content">
                  <div class="modal-header">
                     <button type="button" class="close" data-dismiss="modal">
                        <span aria-hidden="true">×</span>
                     </button>
                  </div>
                  <div class="modal-body">
                    <div class="modalComent">
                    진행중인 프로젝트가 있으면,&nbsp;회원탈퇴가 되지 않으며,<br>
                    탈퇴할 경우 지금까지 귀하의 프로젝트가 모두 사라집니다.<br>
                    정말 탈퇴하시겠습니까?
                    </div>
                  </div>
                  <div class="modal-footer">
                      
                     <button type="button" class="modalCancle" data-dismiss="modal">
                        취소하기
                     </button> 
                     &nbsp;&nbsp;
                     <button type="button" class="modalExit">
                      <a id="modal-45" role="button" class="btn" data-toggle="modal">탈퇴하기</a>
                     </button> 
                     
                  </div>
               </div>
               
            </div>
            
         </div>
      </div>
      <!-- ■■■■■■■■■■■■■■■■■■■ 회원탈퇴 모달 ■■■■■■■■■■■■■■■■■■■-->
      
      <!-- ■■■■■■■■■■■■■■■■■■■ 탈퇴사유 모달 ■■■■■■■■■■■■■■■■■■■-->
   
         <div class="modal fade" id="modal-container-45" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
            <div class="modal-dialog" role="document">
               <div class="modal-content">
                  <div class="modal-header">
                     <h5 class="modal-title" id="myModalLabel">
                        <br>
                        탈퇴사유를 작성해주세요
                     </h5> 
                     <button type="button" class="close" data-dismiss="modal">
                        <span aria-hidden="true">×</span>
                     </button>
                  </div>
                  <div class="modal-body">
                     <textarea class="modalarea" id="reason" name="reason" rows="5" cols="10">내용을 입력해주세요.</textarea>
                  </div>
                  <div class="modal-footer">
                  
                     <button type="button" class="modalCancle" data-dismiss="modal">
                        취소하기
                     </button> 
                     &nbsp;&nbsp;
                     <button type="button" class="modalExit" data-dismiss="modal" id="outBtn">
                        확인
                     </button> 
                  </div>
               </div>
               
            </div>
            
         </div>
   <!-- ■■■■■■■■■■■■■■■■■■■ 탈퇴 사유 모달 ■■■■■■■■■■■■■■■■■■■-->
     
  
 
  <script src="js/jQuery_v3.1.1.min.js"></script>
  <script src="js/owl.carousel.min.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <script src="js/jquery.magnific-popup.js"></script>
  <script src="js/jquery.firstVisitPopup.js"></script>
  <script src="js/custom.js"></script>
</body>

</html>