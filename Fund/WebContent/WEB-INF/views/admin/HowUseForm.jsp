<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>크레센도 이용방법</title>

<!-- Custom styles for this template-->
<link href="css/sb-admin-2.css" rel="stylesheet">

<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<style>
.article-main {
	background-color: #ffffff;
	padding: 20px 30px;
	border: 1px solid rgba(0, 0, 0, .1);
}

/* 이용방법 제목 및 내용 스타일 추가 */
.hoContent
{
	margin-left: 50px; 
	font-size: 14px;
    color: #757575;
    word-wrap: break-word;
    word-break: keep-all;
    word-spacing: 0.05em;
    line-height: 1.8em;
    font-size: 15px;
    width: 1200px;
    margin-bottom: 60px;
    overflow: hidden;
}
.hoTitle
{
	margin-top: 50px;
}
@media screen and (max-width: 767px)
{
	.howUpdateText
	{
		width: 80%;
	}
 }

</style>

<!-- 수정 취소눌렀을 때 팝업창 및 이용방법 리스트로 돌아가기 -->
<script type="text/javascript">
$(document).ready(function()
{
	$(".cancel").click(function()
	{
		if(confirm("작성을 취소하시겠습니까?"))
			$(location).attr("href", "howlist.action");
	});
});
</script>

</head>

<body>

	<!--  page Wrapper  -->
	<div id="wrapper">
	
		<%-- <jsp:include page="/Side.jsp" /> --%>
		<jsp:include page="/WEB-INF/views/admin/Side.jsp" />

		<!-- Content Wrapper -->
		<div id="content-wrapper" class="d-flex flex-column">

		<jsp:include page="/WEB-INF/views/admin/Topbar.jsp" />
		<%-- 	<jsp:include page="/Topbar.jsp" /> --%>

			<!--  Main Content -->
			<div id="content">

				<!--  Begin Page Content -->
				<div class="container-fluid" style="padding-bottom: 3.5rem; height: 50px;">

					<!--  page Heading -->

					<h1 class="h3 mb-2 text-gray-800" >이용방법</h1>
					<br>
					<article class="article">
						<div class="article-main" style="padding-bottom : 4.0rem">
							<header class="article-header">
								<h2 title="🙌 크라우드펀딩과 후원이란 무엇인가요?" class="article-title">
									🙌크레센도 이용방법</h2>
							</header>

						<form action="howupdate.action" method="post" id="c" role="form">
						<input type="hidden" value="${lists.howNum }" name="howNum" id="howNum">
							<section class="article-info">
							<!-- 이용방법 제목 및 내용 수정 입력 -->					 
								<div class="article-content">
									<div class="article-body">
										 최종수정일자  ${lists.howDate }
										<br>
										<label for="howTitle">제목 입력 </label>
                                 			<input type="text" class="howTitle" id="howTitle" name="howTitle" style="width: 50%; margin-left: 10px;" value="${lists.howTitle }">
                                 		<br>
									</div>
									<div class="article-body">
										<label for="howContent" style="width: 70px; margin-top: 30px; float: left;">내용 입력</label>
										<textarea rows="15" cols="100" class="howContent" id="howContent" name="howContent" style="margin-left: 10px; margin-top: 30px;">${lists.howContent }</textarea>
									</div>
									<div class="howBtn">
										<!-- 수정을 눌렀을 때 -->
										<div>
											<button type="submit" class="btn btn-warning howmModify" value="${lists.howNum }" style="margin-top: 20px; margin-left: 50%;" >
												수정완료
											</button>
										</div>
										
										<div>
											<!-- 취소를 눌렀을 때 -->
											<input type="button" class="btn btn-warning cancel" value="수정취소" 
											style="margin-top:-62px; margin-left: 670px; background-color:gray;">
											<span id="err" style="color: red; font-weight: bold; display: none;"></span>
										</div>									
									</div>										
								</div>
							</section>
						 </form>
						</div>
				</article>
				</div>
			</div>
		</div>
	</div>
	
	<!-- Bootstrap core JavaScript-->
	<script src="vendor/jquery/jquery.min.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

	<!-- Core plugin JavaScript-->
	<script src="vendor/jquery-easing/jquery.easing.min.js"></script>

	<!-- Custom scripts for all pages-->
	<script src="js/sb-admin-2.min.js"></script>

	<!-- Page level plugins -->
	<script src="vendor/chart.js/Chart.min.js"></script>
	<script src="vendor/datatables/jquery.dataTables.js"></script>
	<script src="vendor/datatables/dataTables.bootstrap4.js"></script>

	<!-- Page level custom scripts -->
	<script src="js/demo/chart-area-demo.js"></script>
	<script src="js/demo/chart-pie-demo.js"></script>

	<!-- Demo scripts for this page-->
	<script src="js/demo/datatables-demo.js"></script>
	
	
	
</body>
</html>