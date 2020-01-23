<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/message/magnific-popup.css"> 
<script type="text/javascript" src="${pageContext.request.contextPath}/js/message/jquery.magnific-popup.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/message/jquery.magnific-popup.min.js"></script> 
<!-- <script type="text/javascript">
function resendForm(){
	    var frm =document.getElementById('sendForm');
	    frm.submit();
	    closeBrowser();
}	
function closeBrowser(){
	 window.close();
}
</script> -->
<style type="text/css">
button{
    width: 93px;
    height: 40px;
    background: #333;
    font: 0em/0em "Trade-Gothic-W-Cond-Bold", Arial, Helvetica, sans-serif;
    outline: none;
    border: 0;
    margin: 0 0 0 20px;
    padding: 0;
    color: #fff;
    text-transform: uppercase;
    cursor: pointer;
    text-align: center;
    vertical-align:middle;
    font-size: 16px;
    font-weight: bold;
    } 
button.mfp-close,
button.mfp-arrow {
  overflow: visible;
  cursor: pointer;
  background: transparent;
  border: 0;
  -webkit-appearance: none;
  display: block;
  outline: none;
  padding: 0;
  z-index: 1046;
  box-shadow: none;
  touch-action: manipulation; }

button::-moz-focus-inner {
  padding: 0;
  border: 0; }
/*       
input[type="submit"]{
    width: 73px;
    height: 30px;
    background: #333;
    font: 1.336em/1.07em "Trade-Gothic-W-Cond-Bold", Arial, Helvetica, sans-serif;
    outline: none;
    border: 0;
    margin: 0 0 0 130px;
    padding: 0;
    color: #fff;
    text-transform: uppercase;
    cursor: pointer;
    }      */
button:HOVER, input[type="submit"]:HOVER {
   background: #ddd;
}/* 
.checked {
font-size: 8px;
float: right;
   position: relative;
   width: 0.5em;
   height: 2.0em;
   margin: 30% auto;
   background: #2c2c2c;
   border-radius: 0.5em;
   -webkit-transform: rotate(-30deg);
   -moz-transform: rotate(-30deg);
   -o-transform: rotate(-30deg);
   -ms-transform: rotate(-30deg);
   transform: rotate(-30deg);
margin-left: -0.7em;
}

.checked:before {
   content: "";
   position: absolute;
   left:1em;
   top:-0.5em;
   width: 0.5em;
   height: 3.0em;
   background: #2c2c2c;
   border-radius: 0.5em;
   -webkit-transform: rotate(50deg);   
   -moz-transform: rotate(50deg);
   -o-transform: rotate(50deg);
   -ms-transform: rotate(50deg);
   transform: rotate(50deg);
   }

.close{
  position:relative;
  width:0.3em;
  height:1.5em;
  background: #2C2C2C;
  -webkit-transform: rotate(45deg);
  -moz-transform: rotate(45deg);
  -o-transform: rotate(45deg);
  -ms-transform: rotate(45deg);
  transform: rotate(45deg);
font-size: 22px;
cursor: pointer;
}
.close:after{
  content: "";
  position: absolute;
  top: 0;
  left: 0;
  width:0.3em;
  height:1.5em;
  background: #2C2C2C;
  -webkit-transform: rotate(-90deg);
  -moz-transform: rotate(-90deg);
  -o-transform: rotate(-90deg);
  -ms-transform: rotate(-90deg);
  transform: rotate(-90deg);
}
 */
</style> 
<meta charset=UTF-8">
<title>쪽지</title>
</head>
<body>
<form class="white-popup-block" id="sendForm" action="/message/insert" method="post">
   <fieldset style="border:0; background: #ffeb3b73; width: 50%;">
  <!--  <div class="close" style="float: right; margin-right: 20px; margin-top: 10px;" onclick=""></div> -->
   <br><br>
   <h1 style="padding-left: 30px; font-size: 30px">&nbsp&nbspCrescendo Message !</h1>
      <ul>
         <li>
         <label style="font-weight: bold;">보낸이 : </label>
            <input id="name" name="u_id_sender" readonly="readonly" value="<%=session.getAttribute("login") %>" type="text" required="" disabled="disabled">
         </li>

         <li>
         <label style="font-weight: bold;">받는이 : </label>
            <input id="email" name="u_id_recipient" type="text" value="${sender}" required="">
         </li>

         <!-- <li>
         <label style="font-weight: bold;">Category : </label>
          <select class="" name="m_category">
               <option value="accompany">Accompany</option>
               <option value="carpool">Carpool</option>
               <option value="exchange">Exchange</option>
            </select>
         </li> -->

         <li>
         <label style="font-weight: bold;">내용 : </label>
            <textarea id="textarea" style="width:350px; height:150px;" name="m_content"></textarea>
         </li>

      </ul>
      <button style="margin-left: 40%;" onClick="resendForm()">전송하기</button>
   </fieldset>
      
</form>
</body>
</html>