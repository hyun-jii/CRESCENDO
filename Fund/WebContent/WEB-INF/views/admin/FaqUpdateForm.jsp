<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>FAQ 관리</title>

<!-- Custom fonts for this template -->
<link href="resources/vendor/fontawesome-free/css/all.min.css"
	rel="stylesheet" type="text/css">
<link
	href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
	rel="stylesheet">

<!-- Custom styles for this template -->
<link href="resources/css/sb-admin-2.min.css" rel="stylesheet">

<!-- Custom styles for this page -->
<link href="resources/vendor/datatables/dataTables.bootstrap4.min.css"
	rel="stylesheet">

<!-- ★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★ -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

<style>
.collapse-item p{
	color: gray;
	font-weight: bold;
} 
.rewardBtn {
	width: auto;
	height: auto;
	background-color: #F39C12;
	border: #F39C12;
	font-size: 15px;
}
.rewardBtn:hover {
	background-color: #8E44AD;
	cursor: pointer;
}
.sorting{
	width: auto;
}
tbody tr:hover{
	background: #f8f9fc;
}
</style>
<!-- 
<script type="text/javascript">
	$(document).ready(function()
	{
		$(".resetFaq").click(function()
		{
			
			if(confirm("공지사항 수정을 취소하시겠습니까?"))
			{
				$(location).attr("href","/Faqlist.action");
			}
		});
	});
</script> -->

<!-- ★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★ -->
<style type="text/css">
	input[type=text], select, textarea {
	  width: 100%;
	  padding: 12px;
	  border: 1px solid #ccc;
	  border-radius: 4px;
	  box-sizing: border-box;
	  margin-top: 6px;
	  margin-bottom: 16px;
	  resize: vertical;
	}
	
	input[type=submit]{
	  background-color: orange;
	  color: white;
	  padding: 12px 20px;
	  border: none;
	  border-radius: 4px;
	  cursor: pointer;
	}
	input[type=button]
	{
		background-color: gray;
	    color: white;
	    padding: 12px 20px;
	    border: none;
	    border-radius: 4px;
	    cursor: pointer;
	}
	
	input[type=submit]:hover {
	  background-color: #45a049;
	}
	
	.Faq_container" {
	  border-radius: 5px;
	  background-color: #f2f2f2;
	  padding: 20px;
	  margin-top: 40px;
	}
</style>
<!-- ★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★★ -->

</head>
<body id="page-top">

	<!-- Page Wrapper -->
	<div id="wrapper">
		<jsp:include page="Side.jsp"/>

		<!-- Content Wrapper -->
		<div id="content-wrapper" class="d-flex flex-column">

			<!-- Main Content -->
			<div id="content">

				<jsp:include page="Topbar.jsp"/>

				<!-- Begin Page Content -->

				
			 	<div class="FaqHead" style="margin-left: 100px; color: black; font-weight: bold;">
					<h1>FAQ 수정 입력</h1>
				</div>
				
				<div class="Faq_container" style="width: 90%; margin-left: 100px; margin-top: 50px;">
				
					<form action="faqupdate.action" id="updateFaq" role="form">
					 <input type="hidden" value="${data.hNum }" name="hNum" id="hNum">
						<label for="FaqTitle">제목 입력</label> 
							<input type="text" id="hTitle" name="hTitle" placeholder="수정할 제목을 입력하세요" value="${data.hTitle }" >
						<label for="FaqContent">내용 입력</label>
							<textarea id="hContent" name="hContent" placeholder="수정할 공지사항 내용을 입력하세요." style="height: 500px">${data.hContent }</textarea>
					
							
						<div class="FaqBtn" style="float: right;">
							<button class="btn btn-primary btn-lg btn-inline rewardBtn" type="button" id="submitBtn" style="background: #8E44AD; border: #8E44AD;">등록</button>
							<button class="btn btn-primary btn-lg btn-inline rewardBtn" style="background: #8E44AD; border: #8E44AD;" onclick="cancle();">취소</button>
									
							<!-- <input type="submit" value="변경하기"> -->
						</div>
					</form>
					
				</div>

			</div>
				<!-- /.container-fluid -->

			</div>
			<!-- End of Main Content -->

		

		</div>
		<!-- End of Content Wrapper -->


	<!-- End of Page Wrapper -->

	<!-- Scroll to Top Button-->
	<a class="scroll-to-top rounded" href="#page-top"> <i
		class="fas fa-angle-up"></i>
	</a>

	<div class="modal fade" id="logoutModal" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">로그아웃</h5>
					<button class="close" type="button" data-dismiss="modal"
						aria-label="Close" style="float: right;">
						<span aria-hidden="true" style="float: right;">×</span>
					</button>
				</div>
				<div class="modal-body">로그아웃 시 메인 페이지로 이동합니다.</div>
				<div class="modal-footer">
					<button class="btn btn-secondary" type="button"
						data-dismiss="modal">Cancel</button>
					<a class="btn btn-primary" href="adminlogout.action">Logout</a>
				</div>
			</div>
		</div>
	</div>

	<script>
		// 취소 버튼을 누를 경우 action 속성값 변경
		function cancle() {
			$("#updateFaq").attr("action", "cancleFaq.action");
		}

		$(function() {
			$("#submitBtn").on("click", function() {
				var inputTitle = $("input[name=hTitle]").val();
				if (inputTitle.trim() == "") {
					alert("제목을 입력해주세요.");
					return false;
				}
				var inputContent =$("textarea[name=hContent]").val();
				if (inputContent.trim()==""){
					alert("내용을 입력해주세요.");
					return false;
				}
				console.log("이제 서브밋 하면 됨");
				$("#updateFaq").submit();
			});
		});
	</script>


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
	
	

</body>
</html>
