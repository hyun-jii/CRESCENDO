<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>


<!--[if (gte IE 9)|!(IE)]><!-->
<html lang="en">
<!--<![endif]-->

<head>
  <!-- =====  BASIC PAGE NEEDS  ===== -->
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
  

  <title>마이페이지 > 보낸쪽지</title>
  
  <!-- Custom fonts for this template-->
<link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet"
	type="text/css">
<link
	href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
	rel="stylesheet">

<!-- Custom styles for this template-->
<link href="css/sb-admin-2.min.css" rel="stylesheet">
<%--   <!-- =====  SEO MATE  ===== -->
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
  <script src="https://kit.fontawesome.com/b7c292b54b.js" crossorigin="anonymous"></script>
  <link rel="stylesheet" type="text/css" href="<%=cp %>/css/Main.css">
  <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css"> --%>
<%--   <link rel="stylesheet" type="text/css" href="<%=cp %>/css/mypage.css"> --%>

  
   <script>
   function w3_open() {
     document.getElementById("mySidebar").style.display = "block";
   }

   function w3_close() {
     document.getElementById("mySidebar").style.display = "none";
   }
   </script>

<style>
.theadTh{font-size: 15px;}
.sorting{text-align: center;}
.sorting_asc{text-align: center;}
.tbodyTd{font-size: 14px;}
</style>

<!-- 데이터 테이블 정렬 스크립트 -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script type="text/javascript">
	$(document).ready(function() 
	{
		$("#dataTable").DataTable
		({
			  order: [[0, "desc"]], // asc 또는 desc
			  ordering: true,
			  serverSide: false
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
			
			
			
			<!-- Begin Page Content -->
				<div class="container-fluid">
			
			<!-- 쪽지 화면구성 시작  -->
			<div class="col-md-10 col-sm-8 col-xs-5" style="border:1px solid #cccccc; height:150vh; padding-top:50px;">
			<!-- Page Heading -->
					<h1 class="h3 mb-4 text-gray-800"> 보낸 쪽지함 </h1>
					<br>
					<!-- DataTales Example -->
					<div class="card shadow mb-4">
						<div class="card-body">
							<div class="table-responsive">
								<div id="dataTable_wrapper"
									class="dataTables_wrapper dt-bootstrap4">
									<div class="row">
										<div class="col-sm-12">
											<table class="table table-bordered table-hover dataTable" id="dataTable"
												role="grid"
												aria-describedby="dataTable_info" style="width: 100%;">
												<thead class="theadTh">
													<tr role="row">
														<th class="sorting_asc" tabindex="0"
															aria-controls="dataTable" rowspan="1" colspan="1"
															aria-sort="ascending"
															aria-label="Name: activate to sort column descending"style="width:200px">보낸 쪽지번호</th>
														<th class="sorting" tabindex="0" aria-controls="dataTable"
															rowspan="1" colspan="1"
															aria-label="Office: activate to sort column ascending" style="width:350px" >쪽지 제목</th>
														<th class="sorting" tabindex="0" aria-controls="dataTable"
															rowspan="1" colspan="1"
															aria-label="Age: activate to sort column ascending"style="width:150px">수신인ID</th>
														<th class="sorting" tabindex="0" aria-controls="dataTable"
															rowspan="1" colspan="1"
															aria-label="Age: activate to sort column ascending"style="width:150px">발신인ID</th>
														<th class="sorting" tabindex="0" aria-controls="dataTable"
															rowspan="1" colspan="1"
															aria-label="Salary: activate to sort column ascending"style="width:100px">보낸 날짜</th>
														<th class="sorting" tabindex="0" aria-controls="dataTable"
															rowspan="1" colspan="1"
															aria-label="Salary: activate to sort column ascending"style="width:100px">삭제</th>
														</tr>
													
												</thead>
	
												<tbody class="tbodyTd">
													<c:forEach var="sletterList" items="${data }">
													<c:if test="${ sletterList.leSender==user.userNum}">	
												     <c:if test="${sletterList.leSdelete==null}">	
													<tr>
													<td>${sletterList.leNum }</td>
													<td><a href="lettersconfirmform.action?leNum=${sletterList.leNum }" >${sletterList.leTitle}</a></td>
													<td>${sletterList.leReceiver }</td>	
													<td>${sletterList.leSender}</td>	
													<td>${sletterList.leDate }</td>
													
												 	<td>
												 	<!-- 사용자에게 보낸쪽지일 경우 -->
													<c:if test="${ sletterList.leRdelete==null && sletterList.leReceiver!=0}">	
													<button type="button" class="btn btn-info btn-sm btn-danger" style="width:50px" id="deleteletter" style="width:50px"
													onclick="if(confirm('보낸쪽지를 삭제하시겠습니까?'))location.href='slettersupdatedeletedate.action?leNum=${sletterList.leNum }'"> 삭제</button>
													</c:if>
													<!-- 관리자에게 보낸쪽지일 경우 -->
													<c:if test="${ sletterList.leRdelete==null && sletterList.leReceiver==0}">	
													<button type="button" class="btn btn-info btn-sm btn-danger" style="width:50px" id="deleteletter" style="width:50px"
													onclick="if(confirm('관리자에게 보낸쪽쥐를 삭제하시겠습니까?'))location.href='letterupdatedeletesdate.action?leNum=${sletterList.leNum }'"> 삭제</button>
													</c:if>
													
													<!-- DB에서 쪽지삭제 -->
													<c:if test="${ sletterList.leRdelete!=null}">	
													<button type="button" class="btn btn-info btn-sm btn-danger" style="width:50px" id="deleteletter" style="width:50px"
													onclick="if(confirm('보낸쪽지를 삭제하시겠습니까?'))location.href='sdeleteletter.action?leNum=${sletterList.leNum }'"> 삭제</button>
													</c:if>
													</td>								 
													</tr>
													</c:if>
													</c:if>
													</c:forEach>
												</tbody>
											</table>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>

				 <br>
				 <br><br><br><br>
			     </div>
			   </div><!-- 마이페이지끝 -->
			 </div><!-- modu 끝 -->
	</div><!-- row 끝 -->
</div><!-- col-md-12 끝 -->

  
 
  <script src="js/jQuery_v3.1.1.min.js"></script>
  <script src="js/owl.carousel.min.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <script src="js/jquery.magnific-popup.js"></script>
  <script src="js/jquery.firstVisitPopup.js"></script>
  <script src="js/custom.js"></script>
</body>

</html>