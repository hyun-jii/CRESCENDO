<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix ="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
   request.setCharacterEncoding("UTF-8");
   String cp = request.getContextPath();
%>

<%
    /* String poMoney = (String)request.getAttribute("poMoney"); */
    /* String email = (String)request.getAttribute("email");
    String phone = (String)request.getAttribute("phone");
    String address = (String)request.getAttribute("address"); */
    /* int totalPrice = (Integer)request.getAttribute("totalPrice");     */
%>

<!DOCTYPE html>
<!--[if (gte IE 9)|!(IE)]><!-->
<html lang="en">
<!--<![endif]-->
<head>
<meta charset="UTF-8">
<title>RewardCredit.html</title>
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
<link rel="stylesheet" type="text/css" href="css/Main.css">
<link rel="stylesheet" type="text/css" href="<%=cp%>/css/style.css">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<!-- jQuery -->
<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script>
<!-- iamport.payment.js -->
<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>
<link rel="stylesheet" href="css/creditreward.css">
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


<!-- 배송 정보 입력 -->
<script type="text/javascript">
   $(document).ready(function() 
   {
      /* 취소하기 버튼을 클릭 */
      $(".creditCacel").click(function() 
      {
         var proNum = $("#proNum").val();
         var userNum = $("#userNum").val();
         
         if(confirm("취소하시면 입력한 내용이 사라집니다. 그래도 취소하시겠습니까?"));
         {
            $(location).attr("href", "projectdetail.action?proNum=" + proNum + "&userNum=" + userNum);
         }
      });
      
      /* 결제하기를 눌렀을 때, 빈칸 여부 확인 */
      $(".btn").click(function() 
      {
         if($("#fName").val() == "")
         {
            alert("이름을 입력해주세요.");
            $("#fName").focus();
            return false;
         }
         
         if($("#fTel").val() == "")
         {
            alert("전화번호를 입력해주세요.");
            $("#fTel").focus();
            return false;
         }
         
         if($("#fZipcode").val() == "")
         {
            alert("우편번호를 검색해주세요.");
            $("#fZipcode").focus();
            return false;
         }
         
         if($("#userAddr2").val() == "")
         {
            alert("상세주소를 입력해주세요.");
            $("#userAddr2").focus();
            return false;
         }
      });
      
      
      /* 완료 버튼을 눌렀을 때, 빈칸 여부 확인 */
      $("#inputCredit").click(function() 
      {
         if($("#prCard").val() == "")
         {
            alert("카드번호 16자리를 입력해주세요.");
            $("#prCard").focus();
            return false;
         }
         
         if($("#prExpire").val() == "")
         {
            alert("카드 유효기간을 입력해주세요.");
            $("#prExpire").focus();
            return false;
         }
         
         if($("#prPw").val() == "")
         {
            alert("비밀번호 앞 2자리를 입력해주세요.");
            $("#prPw").focus();
            return false;
         }
         
         if($("#prBirth").val() == "")
         {
            alert("생년월일을 입력해주세요.");
            $("#prBirth").focus();
            return false;
         }
         
         if($(".fundCheck").prop("checked")==false)
         {
            alert("결제정보 동의에 체크해주셔야 합니다.");
         }
      });
      
      // 핸드폰 유효성 검사
       $("#fTel").on('keydown', function(e)
      {
          // 숫자만 입력받기
           var trans_num = $(this).val().replace(/-/gi,'');
         var k = e.keyCode;
                  
         if(trans_num.length >= 11 && ((k >= 48 && k <=126) || (k >= 12592 && k<= 12687 || k==32 || k==229 || (k>=45032 && k<=55203)) ))
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
</script>

<!-- 숫자만 입력 & 제한 수량 초과 입력 시, alert -->
<script type="text/javascript">
   $(document).ready(function() 
   {
      $("#err").css("display","none");
      
      $("#fCount").on("keyup", function() 
      {       
          $(this).val($(this).val().replace(/[^0-9]/g,"")); 
          
          var fCount = Number($(this).val());
          var reLimit = $("#reLimit").val();
          
         if(fCount>reLimit)
         {
             $("#err").css("display","");
             $("#err").css("color","red");
             
             //수량입력 버튼 비활성화
             $("#countBtn").attr("disabled",true);
             $("#countBtn").css("background-color", "gray");
         }
         else
         {
            $("#err").css("display","none");
            
            // 수량입력 버튼 활성화
            $("#countBtn").attr("disabled",false);
            $("#countBtn").css("background-color", "#ffc425");
         }
      });
      
      /* 카드번호 글자 수 제한 및 숫자입력 */
      $("#prCard").on("keyup", function() 
      {
         // 숫자만 입력
          $(this).val($(this).val().replace(/[^0-9]/g,"")); 

         if($(this).val().length > 16) 
         {
            $(this).val($(this).val().substr(0, 16));
            $("#cardErr").text("카드번호를 다시 입력해주세요.").css("color", "red");
                $(this).val("");
                $(this).focus();
         }
         else
         {
            $("#cardErr").css("display","none");
         }
      });

      /* 비밀번호 글자 수 제한 및 숫자입력 */
      $("#prPw").on("keyup", function() 
      {
         // 숫자만 입력
          $(this).val($(this).val().replace(/[^0-9]/g,"")); 

         if($(this).val().length > 2) 
         {
            $(this).val($(this).val().substr(0, 3));
            $("#pwErr").text("비밀번호 앞 두자리를 다시 입력해주세요.").css("color", "red");
                $(this).val("");
                $(this).focus();
         }
         else
         {
            $("#pwErr").css("display","none");
         }
      });

      /* 생년월일 글자 수 제한 및 숫자입력 */
      $("#prBirth").on("keyup", function() 
      {
         // 숫자만 입력
          $(this).val($(this).val().replace(/[^0-9]/g,"")); 

         if($(this).val().length > 6) 
         {
            $(this).val($(this).val().substr(0, 6));
            $("#birthErr").text("생년월일을 다시 입력해주세요.").css("color", "red");
                $(this).val("");
                $(this).focus();
         }
         else
         {
            $("#birthErr").css("display","none");
         }
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
         $('[name=fZipcode]').val(data.zonecode); // 우편번호 (5자리)
         $('[name=fAddr]').val(data.address);
         $('[name=userAddr2]').val(data.buildingName);
         /*  $("#userAddr").show(); */
      }
   }).open();
} 
</script>



<script type="text/javascript">
   
   /* 리워드 수량에 따른 가격 ajax */
   $(function()
   {
      
      $("#countBtn").click(function()
      {
         
         $.ajax({
            type : "POST",
            url : "<%=cp%>/checkmoney.action",
            data : {"fCount"       : $("#fCount").val(),
                  "total_money"    : $("#total_money").val()
            },
            success : function(data)
            {
               if(data > 0)
               {
                  /* alert("성공"); */
                  $("#money").html(data);
               }
               else
               {
                  alert("통신실패");
               }
            }
            
         });
         
      });   
   
   });
   
   
   /* 결제하기 모달 이동 ajax */
   $(function()
   {
      /* 결제하기 버튼 클릭 시 */
      $("#pay-request").click(function()
      {
         $.ajax({
            type : "POST",
            url : "orderinsert.action",
            data : { "fName" : $("#fName").val(),
                   "fTel"  : $("#fTel").val(),
                   "fAddr" : $("#fAddr").val(),
                   "fZipcode" : $("#fZipcode").val(),
                   "fInquire" : $("#fInquire").val(),
                   "reNum"   : $("#reNum").val(),
                   "fCount"   : $("#fCount").val()
               
            },
            success : function(data)
            {
               /* 후원 테이블 insert 성공 시  */
               if(data>0)
               {
                  $("#modal-container-94").modal("show");
               }
               else
               {
                  alert("정보 입력 실패");
               }
            }
            
            
         });
      });
   });
   
   /* 결제정보 입력 모달 */
   $(function() 
   {
      /* 입력 완료 버튼 클릭 시 */
      $("#inputCredit").click(function()
      {
         $.ajax({
            type : "POST",
            url : "<%=cp%>/creditinsert.action",
            data : {"prCard" : $("#prCard").val(),
                   "prExpire" : $("#prExpire").val(),
                  "prPw" : $("#prPw").val(),
                  "prBirth" : $("#prBirth").val()
                  },
            success : function(data)
            {
               if(data > 0)
               {   
                  /* alert("결제가 완료되었습니다."); */
                  requestPay(); 
               }
               else
               {
                  alert("결제가 실패했습니다.");
               }
               
                 
            }
                  
         })
         
      });
   });
   
</script>



</head>
<body>

 <jsp:include page="top.jsp"/>  


<!-- 선택한 리워드 확인부분  -->
<div class="reward-credit" style="width: 65%; margin-top: 100px;">
<c:forEach var="list" items="${rewardList }">
   <input type="hidden" class="reLimit" id="reLimit" name="reLimit" value="${list.reLimit }">
   <input type="hidden" name="total_money" id="total_money" value="${list.reMoney }">
   <h3>리워드 구성&nbsp;<span style="color: red;">(${list.reLimit }개 남음)</span></h3>
   <p style="font-size: 15px;">${list.reName }</p>
   <input type="hidden" name="reName" id="reName" value="${list.reName }">
   <p style="font-size: 15px;">${list.reContent }</p>
   <p style="font-size: 15px;">선택한 수량 : <input type="text" id="fCount" name="fCount" value="1" style="margin-bottom: 0px; width: 30px;">
   <button type="button" id="countBtn" name="countBtn" style="border-radius: 3px; background-color: #ffc425; border: none; color: white;">수량입력</button>
   <span id="err" style="display: none;">선택할 수 있는 수량을 초과했습니다.</span>
   </p> 
   <p style="font-size: 15px;">최종 결제 금액 : <span id="money" >${list.reMoney }</span></p> <br>
   <textarea cols="100" id="fInquire" name="fInquire" placeholder="기타문의사항을 입력해주세요." style="resize: none; width: 100%;"></textarea>
</c:forEach>
</div>

<input type="hidden" id="userNum" name="userNum" value="${sessionScope.user.userNum}">

<!-- 배송지 및 카드 정보 입력란 -->
<div class="row" style="margin-bottom: 150px;">
  <div class="col-75">
    <div class="fundContainer" style="width: 65%;">
    <input type="hidden" id="proNum" class="proNum" name="proNum" value="${proNum }">
    
     <form action="orderinsert.action" method="post">
      <input type="hidden" id="reNum" class="reNum" name="reNum" value="${reNum }">
      <input type="hidden" id="fNum" class="fNum" name="fNum" value="${fNum }">
        <div class="row">
          <div class="col-50">
            <h3 style="margin-bottom: 20px;">리워드 배송지</h3>
            
            <span class="name" style="font-weight: bold; font-size: 15px; color: #9E9E9E;"><i class="fa fa-user"></i> 이름</span>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;<input name="fName" id="fName" type="text" placeholder="이름을 입력하세요." style="width: 50%;">
         <br>
         <span class="telephone" style="font-weight: bold; font-size: 15px; color: #9E9E9E;"><i class="fas fa-phone-alt"></i> 전화번호</span>
            &nbsp;&nbsp;&nbsp;<input name="fTel" id="fTel" type="text" placeholder="ex) 010-1111-1111" style="width: 50%;" >
            <span id="telmsg1" style="width: 100%;"></span>
         
         <br>
         <span class="adr" style="font-weight: bold; font-size: 15px; color: #9E9E9E;"><i class="fas fa-map-marker-alt"></i> 주소</span>
         <br><br> 
         &nbsp;&nbsp;<span class="adr" style="font-weight: bold; font-size: 13px; color: #9E9E9E;"> 우편번호</span>
             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
             <input type="text" name="fZipcode" id="fZipcode" type="text" style="width: 20%;"> 
             <button type="button" class="adrSearch" style="border-radius: 3px; background-color: #ffc425; border: none; color: white;" onclick="openZipSearch()">주소검색</button>
         <br>
         &nbsp;&nbsp;<span class="adr" style="font-weight: bold; font-size: 13px; color: #9E9E9E;"> 상세주소</span>
            <input name="fAddr" id="fAddr" type="text" style="width: 90%; float: right;" readonly="readonly">
            <input name="userAddr2" id="userAddr2" type="text" style="width: 90%; float: right;" placeholder="상세주소 입력">
          </div>
        </div>
        
        <div class="btnCredit" style="margin-top: 10px;">
         <button class="creditCacel" type="button"
        style="border-radius: 3px; font-size: 16px; font-weight: bold; width: 120px; height: 35px; background-color: gray; border: none; color: white;">취소하기</button>
        <a class="btn" id="pay-request" role="button" data-toggle="modal"
      style="font-size: 16px; border: none; background-color: #ffc425; color: white; width: 120px; font-weight: bold;
       height: 30px; padding: 5px; height: 35px;">결제하기</a>
        </div>
      </form>
      
    </div>
  </div>
  
  </div>
   

   <!-- 결제정보 입력 모달폼 -->
   <div class="modal fade" id="modal-container-94" role="dialog"
      aria-hidden="true" aria-labelledby="myModalLabel"
      style="margin-top: 100px;">
      <div class="modal-dialog" role="document">
         <div class="modal-content">
            <div class="modal-header"
               style="background-color: orange; color: #fff; font-size: 16px; font-weight: bold">
               <h5 class="modal-title" id="myModalLabel">
                  <center>결제정보 입력</center>
               </h5>
            </div>

            <div class="modal-body" style="height: 580px;">
            <input type="hidden" id="userNum" name="userNum" value="${sessionScope.user.userNum}">
            
               <span style="font-weight: bold; font-size: 15px; color: black;">카드번호</span>
               <input name="prCard" id="prCard" type="text" style="width: 60%; margin-left: 50px;" placeholder="ex) 카드번호 16자리를 입력해주세요."> <br> <br>
                  <span id="cardErr" style="width: 100%;"></span>   
               <span style="font-weight: bold; font-size: 15px; color: black;">카드 유효기간</span>
               <input name="prExpire" id="prExpire" type="text" placeholder="ex) 04/02(년도-월)"
                  style="width: 170px; margin-left: 12px;"> 
                  <br> <br> 
               <span style="font-weight: bold; font-size: 15px; color: black;" id="cardSnum">비밀번호</span> 
                  <input name="prPw" id="prPw" type="text" style="width: 170px; margin-left: 45px;" placeholder="비밀번호 앞 두자리">
                  <span id="pwErr" style="width: 100%;"></span>
                  <br><br> 
               <span style="font-weight: bold; font-size: 15px; color: black;" id="cname">생년월일</span> 
                  <input name="prBirth" id="prBirth" type="text" style="width: 200px; margin-left: 45px;" placeholder="ex) 940213">
                  <span id="birthErr" style="width: 100%;"></span>
                  <br><br>
                <label>결제사 정보제공 동의</label>
                      <input name="sameadr" type="checkbox" class="fundCheck" style="margin-left: -50px;">
                      <p style="font-size: 13px; margin-left: 200px; margin-top: -23px;">해당 결제의 정보제공에 동의합니다.</p>
               
               
               <div class="modal-footer" style="margin-top: 15px;">
                  <button class="btn btn-secondary" type="button" id="inputCredit" 
                     data-dismiss="modal"
                     style="background-color: orange; color: white; height: 40px; border: none; width: 120px; border-radius: 3px; font-size: 15px;">입력완료</button>
               </div>
            </div>
         </div>
      </div>
   </div>
   
   <jsp:include page="footer.jsp"/>  
   
   <!-- Bootstrap core JavaScript-->
   <!-- <script src="vendor/jquery/jquery.min.js"></script>
   <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
 -->
   <!-- Core plugin JavaScript-->
   <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

   <!-- Custom scripts for all pages-->
   <!-- <script src="js/sb-admin-2.min.js"></script>
 -->
   <!-- Page level plugins -->
   <script src="vendor/chart.js/Chart.min.js"></script>
   <script src="vendor/datatables/jquery.dataTables.js"></script>
   <script src="vendor/datatables/dataTables.bootstrap4.js"></script>

   <!-- Page level custom scripts -->
   <!-- <script src="js/demo/chart-area-demo.js"></script>
   <script src="js/demo/chart-pie-demo.js"></script>
 -->
   <!-- Demo scripts for this page-->
   <script src="js/demo/datatables-demo.js"></script>
   
   <script src="js/jQuery_v3.1.1.min.js"></script>
  <script src="js/owl.carousel.min.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <script src="js/jquery.magnific-popup.js"></script>
  <script src="js/jquery.firstVisitPopup.js"></script>
  <script src="js/custom.js"></script>
  
  <script>
    function requestPay() {
       var IMP = window.IMP; // 생략가능
        IMP.init('imp88157942'); // 'iamport' 대신 부여받은 "가맹점 식별코드"를 사용
        /* var msg; */
        
      // IMP.request_pay(param, callback) 호출
      IMP.request_pay({ // param
          pg: "html5_inicis",
          pay_method: "card",
          merchant_uid: 'merchant_' + new Date().getTime(),
          name: $("#reName").val(),
          amount: $("#money").html(),
          buyer_email: "Write Your Email",
          buyer_name: $("#fName").val(),
          buyer_tel: $("#fTel").val(),
          buyer_addr: $("#fAddr").val()+$("#userAddr2").val(),
          buyer_postcode: $("#fZipcode").val()
      }, function (rsp) { // callback
          if (rsp.success) {
             
              var poAgree =rsp.apply_num;
              var poMoney =rsp.paid_amount;
              var impUid= rsp.imp_uid;
              
              /* msg += rsp.paid_at; */
            var msg = '결제가 완료되었습니다.';
            /* msg += '\n고유ID : ' + rsp.imp_uid; */ 
            /* msg += '\n상점 거래ID : ' + rsp.merchant_uid; */
            /* msg += '\n결제 금액 : ' + rsp.paid_amount;
            msg += '\n카드 승인번호 : ' + rsp.apply_num; 
            msg += '\n결제 품목내역 : ' + rsp.name; 
            msg += '\n결제자 : ' + rsp.buyer_name; 
            msg += '\n결제자 이메일 : ' + rsp.buyer_email; */ 
               
             // jQuery로 HTTP 요청
              jQuery.ajax({
                  url: "insertpay.action", // 가맹점 서버
                  type: "POST",
                  data:{
                     impUid : rsp.imp_uid,
                     poMoney : rsp.paid_amount,
                     poAgree : rsp.apply_num
                      //기타 필요한 데이터가 있으면 추가 전달
                  }, 
                 success : function(data)
            {
               
                  // 가맹점 서버 결제 API 성공시 로직
                  if(data>0)
                  {
                     console.log("이니시스 결제 정보 저장 성공");
                     alert("이니시스 결제정보 저장 성공");
                     $(location).attr("href","<%=cp%>/finalpage.action");
                      
                     
                  }
                  else
                  {
                     console.log("이니시스 결제 정보 저장 실패");
                     alert("이니시스 결제정보 저장 실패");
                   }
                 }
                  
              });

          } 
            
      });
    }
  </script>
  

</body>
</html>