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
<!-- ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■ -->

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
         <div class="col-md-10 col-sm-8 col-xs-8" style="border:1px solid #cccccc; float:left; height:1000px; padding: 0px;">
         
         	
					
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
										<p>오지은님</p>
									</div>
								</div>
								
								<!-- 만든 프로젝트 갯수 -->
								 <div class="makeStatus">
			           					<div class="makeCount">
			         						만든 프로젝트 <span class="totalMake">7</span>개
			         					</div>
			         			 </div>	
			         			 
			         			 <!-- 프로젝트 드롭다운 -->
			         			 <div class="navbarMake">
									  <div class="dropdownMake">
									    <button class="makerBtn">프로젝트 선택 
									      <i class="fa fa-caret-down"></i>
									    </button>
									    <div class="project-content">
									      <a href="#">성공 프로젝트</a>
									      <a href="#">실패 프로젝트</a>
									    </div>
									  </div> 
								</div>
			         					

								<!-- 마이페이지 만든 프로젝트 나열 부분 1  -->
								<div style="margin-top: 30px;">
									<div class="product-grid">
										<div class="item" style="width: 31%;">
											<div class="product-thumb_like">
												<!-- 프로젝트 체크박스 부분 -->
												<div class="makeCheckDiv" >
				                                 	<input type="checkbox" class="myCheck" onclick="">
				                                 </div>
												<div class="image product-imageblock">
													<a href="product_detail_page.html"><img
														data-name="product_image" src="upload/${list.prjImg }" class="img-responsive"></a>
													<div class="button-group text-center"></div>
												</div>
												<div class="caption product-detail text-center">
													<h6 data-name="product_name" class="product-name">
														<a href="#" title="Casual Shirt With Ruffle Hem">온전한
															나의 것, "This Feeling is Mine"</a>
													</h6>
													<!-- 등록날짜, 승인여부, 쪽지보내기 부분 -->
													<div>
														<span class="makeDate" style="margin-left: -10px;">작성일 2019-01-01</span>
                                       					<span class="projectStatus" style="margin-left: 60px;">승인대기</span>
                                       					<a class="fas fa-envelope" id="modal-94539" role="button" href="#modal-container-94539" data-toggle="modal" style="float: right;"></a>
													</div>
												</div>
											</div>
										</div>
									</div>


									<!-- 마이페이지 만든 프로젝트 나열 부분 2  -->
									<div class="product-grid">
										<div class="item" style="width: 31%;">
											<div class="product-thumb_like">
												<!-- 프로젝트 체크박스 부분 -->
												<div class="makeCheckDiv" >
				                                 	<input type="checkbox" class="myCheck" onclick="">
				                                 </div>
												<div class="image product-imageblock">
													<a href="product_detail_page.html"><img
														data-name="product_image" src="upload/${list.prjImg }" class="img-responsive"></a> 
													<div class="button-group text-center"></div>
												</div>
												<div class="caption product-detail text-center">
													<h6 data-name="product_name" class="product-name">
														<a href="#" title="Casual Shirt With Ruffle Hem">온전한
															나의 것, "This Feeling is Mine"</a>
													</h6>
													<!-- 등록날짜, 승인여부, 쪽지 부분 -->
													<div>
														<span class="makeDate" style="margin-left: -10px;">작성일 2019-01-01</span>
                                       					<span class="projectStatus" style="margin-left: 60px;">승인대기</span>
                                       					<a class="fas fa-envelope" id="modal-94539" role="button" href="#modal-container-94539" data-toggle="modal" style="float: right;"></a>
													</div>	
												</div>
											</div>
										</div>

									</div>

									<!-- 마이페이지 만든 프로젝트 나열 부분 3  -->
									<div class="product-grid">
										<div class="item" style="width: 31%;">
											<div class="product-thumb_like">
												<!-- 프로젝트 체크박스 부분 -->
												<div class="makeCheckDiv" >
				                                 	<input type="checkbox" class="myCheck" onclick="">
				                                 </div>
												<div class="image product-imageblock">
													<a href="product_detail_page.html"><img
														data-name="product_image" src="upload/${list.prjImg }" class="img-responsive"></a> 
													<div class="button-group text-center"></div>
												</div>
												<div class="caption product-detail text-center">
													<h6 data-name="product_name" class="product-name">
														<a href="#" title="Casual Shirt With Ruffle Hem">온전한
															나의 것, "This Feeling is Mine"</a>
													</h6>
													<!-- 등록날짜, 승인여부, 쪽지 부분 -->
													<div>
														<span class="makeDate" style="margin-left: -10px;">작성일 2019-01-01</span>
                                       					<span class="projectStatus" style="margin-left: 60px;">승인대기</span>
                                       					<a class="fas fa-envelope" id="modal-94539" role="button" href="#modal-container-94539" data-toggle="modal" style="float: right;"></a>
													</div>	
												</div>
											</div>
										</div>
									</div>

									<!-- 마이페이지 만든 프로젝트 나열 부분 4  -->
									<div class="product-grid">
										<div class="item" style="width: 31%;">
											<div class="product-thumb_like">
												<!-- 프로젝트 체크박스 부분 -->
												<div class="makeCheckDiv" >
				                                 	<input type="checkbox" class="myCheck" onclick="">
				                                 </div>
												<div class="image product-imageblock">
													<a href="product_detail_page.html"><img
														data-name="product_image" src="upload/${list.prjImg }" class="img-responsive"></a> 
													<div class="button-group text-center"></div>
												</div>
												<div class="caption product-detail text-center">
													<h6 data-name="product_name" class="product-name">
														<a href="#" title="Casual Shirt With Ruffle Hem">온전한
															나의 것, "This Feeling is Mine"</a>
													</h6>
													<!-- 등록날짜, 승인여부, 쪽지 부분 -->
													<div>
														<span class="makeDate" style="margin-left: -10px;">작성일 2019-01-01</span>
                                       					<span class="projectStatus" style="margin-left: 60px;">승인대기</span>
                                       					<a class="fas fa-envelope" id="modal-94539" role="button" href="#modal-container-94539" data-toggle="modal" style="float: right;"></a>
													</div>	
												</div>
											</div>
										</div>
									</div>

									<!-- 마이페이지 만든 프로젝트 나열 부분 5  -->
									<div class="product-grid">
										<div class="item" style="width: 31%;">
											<div class="product-thumb_like">
												<!-- 프로젝트 체크박스 부분 -->
												<div class="makeCheckDiv" >
				                                 	<input type="checkbox" class="myCheck" onclick="">
				                                 </div>
												<div class="image product-imageblock">
													<a href="product_detail_page.html"><img
														data-name="product_image" src="upload/${list.prjImg }" class="img-responsive"></a>
													<div class="button-group text-center"></div>
												</div>
												<div class="caption product-detail text-center">
													<h6 data-name="product_name" class="product-name">
														<a href="#" title="Casual Shirt With Ruffle Hem">온전한
															나의 것, "This Feeling is Mine"</a>
													</h6>
													<!-- 등록날짜, 승인여부, 쪽지 부분 -->
													<div>
														<span class="makeDate" style="margin-left: -10px;">작성일 2019-01-01</span>
                                       					<span class="projectStatus" style="margin-left: 60px;">승인대기</span>
                                       					<a class="fas fa-envelope" id="modal-94539" role="button" href="#modal-container-94539" data-toggle="modal" style="float: right;"></a>
													</div>
												</div>
											</div>
										</div>
									</div>

									<!-- 마이페이지 만든 프로젝트 나열 부분 6  -->
									<div class="product-grid">
										<div class="item" style="width: 31%;">
											<div class="product-thumb_like">
												<!-- 프로젝트 체크박스 부분 -->
												<div class="makeCheckDiv" >
				                                 	<input type="checkbox" class="myCheck" onclick="">
				                                 </div>
												<div class="image product-imageblock">
													<a href="product_detail_page.html"><img
														data-name="product_image" src="upload/${list.prjImg }" class="img-responsive"></a>
													<div class="button-group text-center"></div>
												</div>
												<div class="caption product-detail text-center">
													<h6 data-name="product_name" class="product-name">
														<a href="#" title="Casual Shirt With Ruffle Hem">온전한
															나의 것, "This Feeling is Mine"</a>
													</h6>
													<!-- 등록날짜, 승인여부, 쪽지 부분 -->
													<div>
														<span class="makeDate" style="margin-left: -10px;">작성일 2019-01-01</span>
                                       					<span class="projectStatus" style="margin-left: 60px;">승인대기</span>
                                       					<a class="fas fa-envelope" id="modal-94539" role="button" href="#modal-container-94539" data-toggle="modal" style="float: right;"></a>	
													</div>
												</div>
											</div>
										</div>
									</div>

									<!-- 삭제버튼 -->
								     <div style="clear: both;"></div>
									  	<div>
									  		<button type="button" class="deliveryBtn">배송완료</button>
									  	</div>
								</div>
								
								<!-- 페이지네이션 -->
									<div class="container" style="margin-top: 150px; margin-left: -190px;">
										<div class="row">
											<ul class="pagination" style="margin-top: -300px; margin-left: 550px; width: 300px;">
											    <li><a href="#">«</a></li>
												<li><a href="#">1</a></li>
												<li><a href="#">2</a></li>
												<li><a href="#">3</a></li>
												<li><a href="#">4</a></li>
												<li><a href="#">5</a></li>
												<li><a href="#">»</a></li>
											</ul>
										</div>
									</div><!-- end container -->
							</div>
						</div>
					</div>
					<!-- ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■ -->

				</div>
			</div>
		</div>

  </div>
  
  
<!-- 쪽지 모달폼 -->
<div class="modal fade" id="modal-container-94539" role="dialog" aria-hidden="true" aria-labelledby="myModalLabel" style="margin-top: 100px;">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header" style="background-color: orange; color:#fff; font-size: 16px; font-weight: bold">
				<h5 class="modal-title" id="myModalLabel">
					<center>쪽지 보내기</center>
				</h5>
				
			</div>
			<div class="modal-body">
					<input type="text" style="width: 100%; margin:0 auto;" placeholder="제목:">
					<br><br>
					<textarea rows="5" style="width:100%;" placeholder="문의사항을 입력해주세요" ></textarea>
			</div>
			<div class="modal-footer">
				<button class="btn btn-secondary" type="button" data-dismiss="modal">
				    보내기
				</button>
				<button class="btn btn-secondary" type="button" data-dismiss="modal">
					취소
				</button>
			</div>
		</div>
	</div>
</div>
<!-- 쪽지 모달 끝 -->
           



		<script src="js/jQuery_v3.1.1.min.js"></script>
		<script src="js/owl.carousel.min.js"></script>
		<script src="js/bootstrap.min.js"></script>
		<script src="js/jquery.magnific-popup.js"></script>
		<script src="js/jquery.firstVisitPopup.js"></script>
		<script src="js/custom.js"></script>
</body>

</html>