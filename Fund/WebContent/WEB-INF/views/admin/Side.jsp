<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
   request.setCharacterEncoding("UTF-8");
   String cp = request.getContextPath();
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Side.jsp</title>
<!-- Custom fonts for this template-->
<link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet"
	type="text/css">
<link
	href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
	rel="stylesheet">

<!-- Custom styles for this template-->
<link href="css/sb-admin-2.min.css" rel="stylesheet">

<style type="text/css">
span {
	color: white;
	font-weight: bold;
}
</style>

<!-- a태그를 post 방식으로 넘기기 -->
<script type="text/javascript">

	function page_move(url)
	{
		var form = document.createElement("form");
		
		form.action = url;
		form.method = "post";
		
		document.body.appendChild(form);
		
		form.submit();
	}

</script>

</head>

<body>

	<!-- Sidebar -->
	<ul
		class="navbar-nav bg-gradient-warning sidebar sidebar-dark accordion"
		id="accordionSidebar">

		<!-- Sidebar - Brand -->
		<a class="sidebar-brand d-flex align-items-center justify-content-center" href="<%=cp %>/main.action">
			<div class="sidebar-brand-icon rotate-n-18" style="color: yellow;">
				<i class="fas fa-cloud"></i>
			</div>
			<div class="sidebar-brand-text mx-3">크레센도</div>
		</a>

		<!-- Divider -->
		<hr class="sidebar-divider my-0">

		<!-- Nav Item - Dashboard -->
		<li class="nav-item active"><a class="nav-link" href= "javascript:page_move('<%=cp %>/adminhome.action');"> 
			<i class="fas fa-fw fa-tachometer-alt"></i>
				<span>메 인</span></a>
		</li>


		<!-- Divider -->
		<hr class="sidebar-divider">

		<!-- Heading -->
		<div class="sidebar-heading">
			<span style="color: yellow;"><h5>관리</h5></span>
		</div>

		<!-- Nav Item - Pages Collapse Menu -->
		<li class="nav-item"><a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#dropDown0" aria-expanded="true" aria-controls="dropDown0"> 
		<i class="fas fa-fw fa-cog"></i> 
		<span class="menuspan">수익조회</span>
		</a>
			<div id="dropDown0" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
				<div class="bg-white py-2 collapse-inner rounded">
					<a class="collapse-item" href="<%=cp%>/totalmoney.action"><p>〉 총 수익</p></a>
				</div>
			</div>
		</li>



		<li class="nav-item"><a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#dropDown1" aria-expanded="true" aria-controls="dropDown1"> 
		<i class="fas fa-fw fa-cog"></i> <span>회원관리</span>
		</a>
			<div id="dropDown1" class="collapse" aria-labelledby="headingTwo"
				data-parent="#accordionSidebar">
				<div class="bg-white py-2 collapse-inner rounded">
					<a class="collapse-item" href="<%=cp%>/userlist.action"><p>> 전체회원 관리</p></a>
				</div>
			</div></li>

		<li class="nav-item"><a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#dropDown2" aria-expanded="true" aria-controls="dropDown2"> 
		<i class="fas fa-fw fa-cog"></i> <span>프로젝트관리 </span>
		
		</a>
			<div id="dropDown2" class="collapse" aria-labelledby="headingTwo"
				data-parent="#accordionSidebar">
				<div class="bg-white py-2 collapse-inner rounded">
					<a class="collapse-item" href="<%=cp%>/projectlist1.action"><p>〉 검토 프로젝트 관리</p></a>
					<a class="collapse-item" href="<%=cp%>/projectlist2.action"><p>〉 거절 프로젝트 관리</p></a>
					<a class="collapse-item" href="<%=cp%>/projectlist3.action"><p>〉 진행중인 프로젝트</p></a>
					<a class="collapse-item" href="<%=cp%>/projectlist4.action"><p>〉 마감 프로젝트</p></a> 
				</div>
			</div></li>

		<li class="nav-item"><a class="nav-link collapsed" href="#"
			data-toggle="collapse" data-target="#dropDown4" aria-expanded="true"
			aria-controls="dropDown4"> <i class="fas fa-fw fa-cog"></i> <span>쪽지관리</span>
		</a>
			<div id="dropDown4" class="collapse" aria-labelledby="headingTwo"
				data-parent="#accordionSidebar">
				<div class="bg-white py-2 collapse-inner rounded">
					<a class="collapse-item" href="<%=cp%>/adminrletter.action"><p>〉 받은 쪽지함</p></a> 
					<a class="collapse-item" href="<%=cp%>/adminsletter.action"><p>〉 보낸 쪽지함</p></a>
				</div>
			</div></li>

		<li class="nav-item"><a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#dropDown5" aria-expanded="true" aria-controls="dropDown5"> 
		<i class="fas fa-fw fa-cog"></i> <span>게시판 관리</span>
		</a>
			<div id="dropDown5" class="collapse" aria-labelledby="headingTwo"
				data-parent="#accordionSidebar">
				<div class="bg-white py-2 collapse-inner rounded">
					<a class="collapse-item" href="<%=cp %>/noticelist.action"><p>〉 공지사항</p></a> 
					<a class="collapse-item" href="<%=cp %>/howlist.action"><p>〉 이용방법</p></a>
				</div>

			</div></li>

		<li class="nav-item"><a class="nav-link collapsed" href="" data-toggle="collapse" data-target="#dropDown6" aria-expanded="true" aria-controls="dropDown6"> 
		<i class="fas fa-fw fa-cog"></i> <span>카테고리 관리</span>
		</a>
			<div id="dropDown6" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
				<div class="bg-white py-2 collapse-inner rounded">
					<a class="collapse-item" href="<%=cp %>/categorylist.action"><p>〉 카테고리 수정</p></a>
				</div>

			</div></li>

		<li class="nav-item">
		<a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#dropDown7" aria-expanded="true" aria-controls="dropDown7"> 
			<i class="fas fa-fw fa-cog"></i> 
			<span>Help센터</span>
		</a>
			<div id="dropDown7" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
				<div class="bg-white py-2 collapse-inner rounded">
					<a class="collapse-item" href="<%=cp%>/faqlist.action"><p>〉 FAQ</p></a> 
					<a class="collapse-item" href="<%=cp%>/charge.action"><p>〉 정책 관리</p></a>
				</div>
			</div>
		</li>

		<li class="nav-item">
		<a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#dropDown8" aria-expanded="true" aria-controls="dropDown8"> 
			<i class="fas fa-fw fa-cog"></i> <span>결제관리</span>
		</a>
			<div id="dropDown8" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
				<div class="bg-white py-2 collapse-inner rounded">
					<a class="collapse-item" href="<%=cp%>/payoklist.action"><p>〉 결제내역 조회</p></a> 
					<a class="collapse-item" href="<%=cp%>/paybacklist.action"><p>〉 결제취소 조회</p></a>
				</div>
			</div>
		</li>


		<!-- Divider -->
		<hr class="sidebar-divider">


		<!-- Sidebar Toggler (Sidebar) -->
		<div class="text-center d-none d-md-inline">
			<button class="rounded-circle border-0" id="sidebarToggle"></button>
		</div>

	</ul>
	<!-- End of Sidebar -->



	<!-- Bootstrap core JavaScript-->
	<script src="vendor/jquery/jquery.min.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

	<!-- Core plugin JavaScript-->
	<script src="vendor/jquery-easing/jquery.easing.min.js"></script>

	<!-- Custom scripts for all pages-->
	<script src="js/sb-admin-2.min.js"></script>

	<!-- Page level plugins -->
	<script src="vendor/chart.js/Chart.min.js"></script>

	<!-- Page level custom scripts -->
	<script src="js/demo/chart-area-demo.js"></script>
	<script src="js/demo/chart-pie-demo.js"></script>



</body>
</html>