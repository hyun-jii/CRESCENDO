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
    width: 750px;
    margin-bottom: 60px;
    overflow: hidden;
}
.hoTitle
{
	margin-top: 50px;
}
</style>

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
				<div class="container-fluid" style="padding-bottom: 3.5rem;">

					<!--  page Heading -->

					<h1 class="h3 mb-2 text-gray-800" >이용방법</h1>
					<br>
					<article class="article">
						<div class="article-main" style="padding-bottom : 4.0rem">
							<header class="article-header">
								<h2 title="🙌 크라우드펀딩과 후원이란 무엇인가요?" class="article-title">
									🙌크레센도 이용방법</h2>

							</header>

					<!-- 반복문을 통해 DB에 저장된 이용약관 내용 출력 -->
							<c:forEach var="how" items="${lists }">
							<section class="article-info">
								<div class="article-content">
									<div class="article-body" id="c">
										<h2 id="id-이용방법1.창작자의 모금액 설정?-크라우드펀딩이란무엇이죠?" class="hoTitle">
											 <span class="wysiwyg-font-size-large"><strong><span class="inline-comment-marker" id="howTitle">
											 	${how.howTitle }
											 </span></strong></span>
										</h2>
										<br>
											<p class="howContent" id="howContent">${how.howContent }</p>	
										
										<!-- 수정을 눌렀을 때 -->
										<button type="button" class="btn btn-warning" style="margin-top: 5px; margin-left: 45%;" onclick="location.href='howupdateform.action?howNum=${how.howNum}'">수정</button>
									</div>
								</div>
							</section>
							</c:forEach>
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