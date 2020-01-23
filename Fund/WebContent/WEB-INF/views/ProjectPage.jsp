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

<title>Prodie.jsp</title>
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
<link rel="apple-touch-icon" sizes="114x114"href="images/apple-touch-icon-114x114.png">
<link rel="stylesheet" type="text/css" href="<%=cp%>/css/Main.css">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

<script>
	function w3_open()
	{
		document.getElementById("mySidebar").style.display = "block";
	}

	function w3_close()
	{
		document.getElementById("mySidebar").style.display = "none";
	}
	
	function state_sort()
	{
		$(function()
		{
			
			var state = $("#state").val();
			var sort = $("#sort").val();
			var caNum = $("#cate_name").val();
			
			
			$(location).attr("href","<%=cp%>/category.action?caNum=" + caNum + "&state=" + state + "&sort=" + sort );
			
		});
		
	}
	/* 카테고리 선택에 따른 페이지전환  */
	function categorySelect()
	{
		$(function()
		{
			var category = $("#cate_name").val();
			
			$(location).attr("href","category.action?caNum=" + category);
		});
	}
	
</script>
<!-- ■내가 한 부분■ --------------------------------------------------------------------------  -->
<link rel="stylesheet" href="css/projectpageview.css">
<!--  -------------------------------------------------------------------------- ■내가 한 부분■ -->

</head>

<body>
	<jsp:include page="top.jsp"/>

	<!-- =====  CONTAINER START  ===== -->
	<div class="container">
		<!-- =====  SUB BANNER  STRAT ===== -->

		<div class="row ">
			<div class="col-sm-12 mt_30">
				<!-- =====  PRODUCT TAB  ===== -->
				
				<div style="color: black; font-size: 20px; margin-left: 20px; margin-bottom: 20px; margin-top: 20px;">
					<c:if test="${keyword != null }">
					'<span style="color: red; font-weight: bold;">${keyword }</span>' (으)로 검색하신 프로젝트 입니다.
					</c:if>
				</div>
				
				
				<div id="product-tab" class="mt_10">
					<!-- ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■ -->
					
					
					<!-- 카테고리 select 부분 -->
					<div class="cate-select">
						<select id="cate_name" onchange="categorySelect()">
							<option value="0" ${caNum == "0"?"selected='selected'":"" }>카테고리 ▼</option>
							<option value="1" ${caNum == "1"?"selected='selected'":"" }>조각품</option>
							<option value="2" ${caNum == "2"?"selected='selected'":"" }>의류</option>
							<option value="3" ${caNum == "3"?"selected='selected'":"" }>음악</option>
							<option value="4" ${caNum == "4"?"selected='selected'":"" }>출판</option>
							<option value="5" ${caNum == "5"?"selected='selected'":"" }>공연</option>
							<option value="6" ${caNum == "6"?"selected='selected'":"" }>기술</option>
						</select>
					</div>
					
					<div class="state-select">
						<!-- 프로젝트 상태 select 부분 -->
						<select name="state" id="state" onchange="state_sort()">
							<option value="total" ${state == "total"?"selected='selected'":"" }>전체프로젝트</option>
							<option value="ing" ${state == "ing"?"selected='selected'":"" }>진행중인프로젝트</option>
							<option value="end" ${state == "end"?"selected='selected'":"" }>마감한프로젝트</option>
						</select>
					</div>
					
					<div class="project_array">
						<!-- 프로젝트 정렬 기준 select 부분 -->
						<select name="sort" id="sort" onchange="state_sort()">
							<option value="popular" ${sort == "popular"?"selected='selected'":"" }>인기순</option>
							<option value="new" ${sort == "new"?"selected='selected'":"" }>최신순</option>
							<option value="deadline" ${sort == "deadline"?"selected='selected'":"" }>마감임박순</option>
						</select>
					</div>

					<div class="heading-part mb_10 ">
						<hr>
						<!-- 검색된 프로젝트를 보여주는 부분  -->
						<p class="project_the_number">
							<c:choose>
							
							<c:when test="${keyword != null }">
							<!-- 검색 키워드별 프로젝트 -->
							<span>${searchCount }</span>개의 프로젝트가 있습니다.
							</c:when>
							
							<c:when test="${caNum == '0'}">
							<!-- 전체 프로젝트 -->
							<span>${totalCount }</span>개의 프로젝트가 있습니다.
							</c:when>
							
							<c:when test="${state == 'total' }">
							<!-- 카테고리별 전체 프로젝트 -->
							<span>${totalPrjCount }</span>개의 프로젝트가 있습니다.
							</c:when>
							
							<c:when test="${state == 'ing' }">
							<!-- 진행중인 프로젝트 -->
							<span>${ingPrjCount }</span>개의 프로젝트가 있습니다.
							</c:when>
							
							<c:when test="${state == 'end' }">
							<!-- 마감한 프로젝트 -->
							<span>${endPrjCount }</span>개의 프로젝트가 있습니다.
							</c:when>
							
							<c:otherwise>
							<!-- 그 외의 경우 -->
							<span>${totalPrjCount }</span>개의 프로젝트가 있습니다.
							</c:otherwise>
							
							
							</c:choose>
						</p>
					</div>
					
				</div>	
					


<!-- ■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■■ -->
			
				<div class="thdnjs">
				
					<div class="product-grid">
					<c:choose>
						<c:when test="${state == 'total' && sort == 'popular' }">
						<!-- 전체프로젝트, 인기순 -->
						<c:forEach var="list" items="${totalList_popular }">
						<div class="item">
							<div class="product-thumb_like">
								<!-- 대표이미지 -->
								<div class="image product-imageblock">
									<a href="<%=cp%>/projectdetail.action?proNum=${list.proNum}&userNum=${list.userNum}" style="vertical-align: -webkit-baseline-middle;"><img
										data-name="product_image" src="upload/${list.prjImg }"
										class="img-responsive"></a>

									<div class="button-group text-center"></div>
								</div>
								<!-- 프로젝트 제목 -->
								<div class="caption product-detail text-center">
									<h6 data-name="product_name" class="product-name" style="height: 50px; margin-top: 15px;">
										<a href="<%=cp%>/projectdetail.action?proNum=${list.proNum}&userNum=${list.userNum}" title="${list.prjTitle }" style="color: black; font-weight: bold; font-size: 15px;">${list.prjTitle }</a>
									</h6>
									<!-- 프로그래스바 시작 -->
									
									<div class="progress" style="margin-top: 5px; margin-bottom: 10px;">
										<div class="progress-bar" role="progressbar"
											aria-valuenow="${list.percent }" aria-valuemin="0" aria-valuemax="100"
											style="width: ${list.percent}%; max-width:100%; background-color: red;">
											<span class="sr-only">70% Complete</span>
										</div>
									</div>
									<!-- end progressbar-->
								</div>
								<!-- 창작자 이름 -->
								<div style="font-size: 15px; font-weight: bold; text-align: left;">&nbsp;${list.maName }</div>
								<!-- 남은기간, 현재 총 후원금액 -->
								<div>
									<span class="c" style="float: left">
									<i class="fas fa-calendar-alt"></i></span> 
									<span class="b" style="float: left; margin-left: 6px;">
									<c:if test="${list.remainDay >= '0' }">
									<p>${list.remainDay }일남음</p></span>
									</c:if>
									<!-- 프로젝트 마감시 프로젝트 상태 표시 -->
									<c:if test="${list.remainDay < '0' }">
									<p>${list.proSta}</p></span>
									</c:if> 
									<span class="c" style="float: right"><p>${list.totalMoney }원</p></span>
								</div>
							</div>
						</div>
						</c:forEach>
						</c:when>
						<c:when test="${state == 'total' && sort == 'new' }">
						<!-- 전체프로젝트, 최신순 -->
						<c:forEach var="list" items="${totalList_new }">
						<div class="item">
							<div class="product-thumb_like">
								<!-- 대표이미지 -->
								<div class="image product-imageblock">
									<a href="<%=cp%>/projectdetail.action?proNum=${list.proNum}&userNum=${list.userNum}" style="vertical-align: -webkit-baseline-middle;"><img
										data-name="product_image" src="upload/${list.prjImg }"
										class="img-responsive"></a>


									<div class="button-group text-center"></div>
								</div>
								<!-- 프로젝트 제목 -->
								<div class="caption product-detail text-center">
									<h6 data-name="product_name" class="product-name" style="height: 50px; margin-top: 15px;">
										<a href="<%=cp%>/projectdetail.action?proNum=${list.proNum}&userNum=${list.userNum}" title="${list.prjTitle }" style="color: black; font-weight: bold; font-size: 15px;">${list.prjTitle }</a>
									</h6>
									<!-- 프로그래스바 시작 -->
									<div class="progress" style="margin-top: 5px; margin-bottom: 10px;">
										<div class="progress-bar" role="progressbar"
											aria-valuenow="${list.percent }" aria-valuemin="0" aria-valuemax="100"
											style="width: ${list.percent}%; background-color: red; max-width:100%;">
											<span class="sr-only">70% Complete</span>
										</div>
									</div>
									<!-- end progressbar-->
								</div>
								<!-- 창작자 이름 -->
								<span style="font-size: 15px; font-weight: bold;">&nbsp;${list.maName }</span>
								<!-- 남은기간, 현재 총 후원금액 -->
								<div>
									<span class="c" style="float: left">
									<i class="fas fa-calendar-alt"></i></span> 
									<span class="b" style="float: left; margin-left: 6px;">
									<c:if test="${list.remainDay >= '0' }">
									<p>${list.remainDay }일남음</p></span>
									</c:if>
									<!-- 프로젝트 마감시 프로젝트 상태 표시 -->
									<c:if test="${list.remainDay < '0' }">
									<p>${list.proSta}</p></span>
									</c:if> 
									<span class="c" style="float: right"><p>${list.totalMoney }원</p></span>
								</div>
							</div>
						</div>
						</c:forEach>
						</c:when>
						<c:when test="${state == 'total' && sort == 'deadline' }">
						<!-- 전체프로젝트, 마감임박순 -->
						<c:forEach var="list" items="${totalList_deadline }">
						<div class="item">
							<div class="product-thumb_like">
								<!-- 대표이미지 -->
								<div class="image product-imageblock">
									<a href="<%=cp%>/projectdetail.action?proNum=${list.proNum}&userNum=${list.userNum}" style="vertical-align: -webkit-baseline-middle;"><img
										data-name="product_image" src="upload/${list.prjImg }"
										class="img-responsive"></a>


									<div class="button-group text-center"></div>
								</div>
								<!-- 프로젝트 제목 -->
								<div class="caption product-detail text-center">
									<h6 data-name="product_name" class="product-name" style="height: 50px; margin-top: 15px;">
										<a href="<%=cp%>/projectdetail.action?proNum=${list.proNum}&userNum=${list.userNum}" title="${list.prjTitle }" style="color: black; font-weight: bold; font-size: 15px;">${list.prjTitle }</a>
									</h6>
									<!-- 프로그래스바 시작 -->
									<div class="progress" style="margin-top: 5px; margin-bottom: 10px;">
										<div class="progress-bar" role="progressbar"
											aria-valuenow="${list.percent }" aria-valuemin="0" aria-valuemax="100"
											style="width: ${list.percent}%; background-color: red; max-width:100%;">
											<span class="sr-only">70% Complete</span>
										</div>
									</div>
									<!-- end progressbar-->
								</div>
								<!-- 창작자 이름 -->
								<span style="font-size: 15px; font-weight: bold;">&nbsp;${list.maName }</span>
								<!-- 남은기간, 현재 총 후원금액 -->
								<div>
									<span class="c" style="float: left">
									<i class="fas fa-calendar-alt"></i></span> 
									<span class="b" style="float: left; margin-left: 6px;">
									<c:if test="${list.remainDay >= '0' }">
									<p>${list.remainDay }일남음</p></span>
									</c:if>
									<!-- 프로젝트 마감시 프로젝트 상태 표시 -->
									<c:if test="${list.remainDay < '0' }">
									<p>${list.proSta}</p></span>
									</c:if> 
									<span class="c" style="float: right"><p>${list.totalMoney }원</p></span>
								</div>
							</div>
						</div>
						</c:forEach>
						</c:when>
						
						<c:when test="${state == 'ing' && sort == 'popular' }">
						<!-- 진행중인 프로젝트, 인기순 -->
						<c:forEach var="list" items="${ingList_popular }">
						<div class="item">
							<div class="product-thumb_like">
								<!-- 대표이미지 -->
								<div class="image product-imageblock">
									<a href="<%=cp%>/projectdetail.action?proNum=${list.proNum}&userNum=${list.userNum}" style="vertical-align: -webkit-baseline-middle;"><img
										data-name="product_image" src="upload/${list.prjImg }"
										class="img-responsive"></a>

									<div class="button-group text-center"></div>
								</div>
								<!-- 프로젝트 제목 -->
								<div class="caption product-detail text-center">
									<h6 data-name="product_name" class="product-name" style="height: 50px; margin-top: 15px;">
										<a href="<%=cp%>/projectdetail.action?proNum=${list.proNum}&userNum=${list.userNum}" title="${list.prjTitle }" style="color: black; font-weight: bold; font-size: 15px;">${list.prjTitle }</a>
									</h6>
									<!-- 프로그래스바 시작 -->
									<div class="progress" style="margin-top: 5px; margin-bottom: 10px;">
										<div class="progress-bar" role="progressbar"
											aria-valuenow="${list.percent }" aria-valuemin="0" aria-valuemax="100"
											style="width: ${list.percent}%; background-color: red; max-width:100%;">
											<span class="sr-only">70% Complete</span>
										</div>
									</div>
									<!-- end progressbar-->
								</div>
								<!-- 창작자 이름 -->
								<span style="font-size: 15px; font-weight: bold;">&nbsp;${list.maName }</span>
								<!-- 남은기간, 현재 총 후원금액 -->
								<div>
									<span class="c" style="float: left">
									<i class="fas fa-calendar-alt"></i></span> 
									<span class="b" style="float: left; margin-left: 6px;">
									<c:if test="${list.remainDay >= '0' }">
									<p>${list.remainDay }일남음</p></span>
									</c:if>
									<!-- 프로젝트 마감시 프로젝트 상태 표시 -->
									<c:if test="${list.remainDay < '0' }">
									<p>${list.proSta}</p></span>
									</c:if> 
									<span class="c" style="float: right"><p>${list.totalMoney }원</p></span>
								</div>
							</div>
						</div>
						</c:forEach>
						</c:when>
						
						<c:when test="${state == 'ing' && sort == 'new' }">
						<!-- 진행중인 프로젝트, 최신순 -->
						<c:forEach var="list" items="${ingList_new }">
						<div class="item">
							<div class="product-thumb_like">
								<!-- 대표이미지 -->
								<div class="image product-imageblock">
									<a href="<%=cp%>/projectdetail.action?proNum=${list.proNum}&userNum=${list.userNum}" style="vertical-align: -webkit-baseline-middle;"><img
										data-name="product_image" src="upload/${list.prjImg }"
										class="img-responsive"></a>

									<div class="button-group text-center"></div>
								</div>
								<!-- 프로젝트 제목 -->
								<div class="caption product-detail text-center">
									<h6 data-name="product_name" class="product-name" style="height: 50px; margin-top: 15px;">
										<a href="<%=cp%>/projectdetail.action?proNum=${list.proNum}&userNum=${list.userNum}" title="${list.prjTitle }" style="color: black; font-weight: bold; font-size: 15px;">${list.prjTitle }</a>
									</h6>
									<!-- 프로그래스바 시작 -->
									<div class="progress" style="margin-top: 5px; margin-bottom: 10px;">
										<div class="progress-bar" role="progressbar"
											aria-valuenow="${list.percent }" aria-valuemin="0" aria-valuemax="100"
											style="width: ${list.percent}%; background-color: red; max-width:100%;">
											<span class="sr-only">70% Complete</span>
										</div>
									</div>
									<!-- end progressbar-->
								</div>
								<!-- 창작자 이름 -->
								<span style="font-size: 15px; font-weight: bold;">&nbsp;${list.maName }</span>
								<!-- 남은기간, 현재 총 후원금액 -->
								<div>
									<span class="c" style="float: left">
									<i class="fas fa-calendar-alt"></i></span> 
									<span class="b" style="float: left; margin-left: 6px;">
									<c:if test="${list.remainDay >= '0' }">
									<p>${list.remainDay }일남음</p></span>
									</c:if>
									<!-- 프로젝트 마감시 프로젝트 상태 표시 -->
									<c:if test="${list.remainDay < '0' }">
									<p>${list.proSta}</p></span>
									</c:if> 
									<span class="c" style="float: right"><p>${list.totalMoney }원</p></span>
								</div>
							</div>
						</div>
						</c:forEach>
						</c:when>
						
						<c:when test="${state == 'ing' && sort == 'deadline' }">
						<!-- 진행중인 프로젝트, 마감임박순 -->
						<c:forEach var="list" items="${ingList_deadline }">
						<div class="item">
							<div class="product-thumb_like">
								<!-- 대표이미지 -->
								<div class="image product-imageblock">
									<a href="<%=cp%>/projectdetail.action?proNum=${list.proNum}&userNum=${list.userNum}" style="vertical-align: -webkit-baseline-middle;"><img
										data-name="product_image" src="upload/${list.prjImg }"
										class="img-responsive"></a>

									<div class="button-group text-center"></div>
								</div>
								<!-- 프로젝트 제목 -->
								<div class="caption product-detail text-center">
									<h6 data-name="product_name" class="product-name" style="height: 50px; margin-top: 15px;">
										<a href="<%=cp%>/projectdetail.action?proNum=${list.proNum}&userNum=${list.userNum}" title="${list.prjTitle }" style="color: black; font-weight: bold; font-size: 15px;">${list.prjTitle }</a>
									</h6>
									<!-- 프로그래스바 시작 -->
									<div class="progress" style="margin-top: 5px; margin-bottom: 10px;">
										<div class="progress-bar" role="progressbar"
											aria-valuenow="${list.percent }" aria-valuemin="0" aria-valuemax="100"
											style="width: ${list.percent}%; background-color: red; max-width:100%;">
											<span class="sr-only">70% Complete</span>
										</div>
									</div>
									<!-- end progressbar-->
								</div>
								<!-- 창작자 이름 -->
								<span style="font-size: 15px; font-weight: bold;">&nbsp;${list.maName }</span>
								<!-- 남은기간, 현재 총 후원금액 -->
								<div>
									<span class="c" style="float: left">
									<i class="fas fa-calendar-alt"></i></span> 
									<span class="b" style="float: left; margin-left: 6px;">
									<c:if test="${list.remainDay >= '0' }">
									<p>${list.remainDay }일남음</p></span>
									</c:if>
									<!-- 프로젝트 마감시 프로젝트 상태 표시 -->
									<c:if test="${list.remainDay < '0' }">
									<p>${list.proSta}</p></span>
									</c:if> 
									<span class="c" style="float: right"><p>${list.totalMoney }원</p></span>
								</div>
							</div>
						</div>
						</c:forEach>
						</c:when>
						
						<c:when test="${state == 'end' && sort == 'popular' }">
						<!-- 마감프로젝트 -->
						<c:forEach var="list" items="${endList }">
						<div class="item">
							<div class="product-thumb_like">
								<!-- 대표이미지 -->
								<div class="image product-imageblock">
									<a href="<%=cp%>/projectdetail.action?proNum=${list.proNum}&userNum=${list.userNum}" style="vertical-align: -webkit-baseline-middle;"><img
										data-name="product_image" src="upload/${list.prjImg }"
										class="img-responsive"></a>

									<div class="button-group text-center"></div>
								</div>
								<!-- 프로젝트 제목 -->
								<div class="caption product-detail text-center">
									<h6 data-name="product_name" class="product-name" style="height: 50px; margin-top: 15px;">
										<a href="<%=cp%>/projectdetail.action?proNum=${list.proNum}&userNum=${list.userNum}" title="${list.prjTitle }" style="color: black; font-weight: bold; font-size: 15px;">${list.prjTitle }</a>
									</h6>
									<!-- 프로그래스바 시작 -->
									<div class="progress" style="margin-top: 5px; margin-bottom: 10px;">
										<div class="progress-bar" role="progressbar"
											aria-valuenow="${list.percent }" aria-valuemin="0" aria-valuemax="100"
											style="width: ${list.percent}%; background-color: red; max-width:100%;">
											<span class="sr-only">70% Complete</span>
										</div>
									</div>
									<!-- end progressbar-->
								</div>
								<!-- 창작자 이름 -->
								<span style="font-size: 15px; font-weight: bold;">&nbsp;${list.maName }</span>
								<!-- 남은기간, 현재 총 후원금액 -->
								<div>
									<span class="c" style="float: left">
									<i class="fas fa-calendar-alt"></i></span> 
									<span class="b" style="float: left; margin-left: 6px;">
									<c:if test="${list.remainDay >= '0' }">
									<p>${list.remainDay }일남음</p></span>
									</c:if>
									<!-- 프로젝트 마감시 프로젝트 상태 표시 -->
									<c:if test="${list.remainDay < '0' }">
									<p>${list.proSta}</p></span>
									</c:if> 
									<span class="c" style="float: right"><p>${list.totalMoney }원</p></span>
								</div>
							</div>
						</div>
						</c:forEach>
						</c:when>
						
						<c:when test="${keyword != null }">
						<!-- 키워드에 따른 프로젝트 리스트 -->
						<c:forEach var="list" items="${searchList }">
						<div class="item">
							<div class="product-thumb_like">
								<!-- 대표이미지 -->
								<div class="image product-imageblock">
									<a href="<%=cp%>/projectdetail.action?proNum=${list.proNum}&userNum=${list.userNum}" style="vertical-align: -webkit-baseline-middle;"><img
										data-name="product_image" src="upload/${list.prjImg }"
										class="img-responsive"></a>

									<div class="button-group text-center"></div>
								</div>
								<!-- 프로젝트 제목 -->
								<div class="caption product-detail text-center">
									<h6 data-name="product_name" class="product-name" style="height: 50px; margin-top: 15px;">
										<a href="<%=cp%>/projectdetail.action?proNum=${list.proNum}&userNum=${list.userNum}" title="${list.prjTitle }" style="color: black; font-weight: bold; font-size: 15px;">${list.prjTitle }</a>
									</h6>
									<!-- 프로그래스바 시작 -->
									
									<div class="progress" style="margin-top: 5px; margin-bottom: 10px;">
										<div class="progress-bar" role="progressbar"
											aria-valuenow="${list.percent }" aria-valuemin="0" aria-valuemax="100"
											style="width: ${list.percent}%; background-color: red; max-width:100%;">
											<span class="sr-only">70% Complete</span>
										</div>
									</div>
									<!-- end progressbar-->
								</div>
								<!-- 창작자 이름 -->
								<div style="font-size: 15px; font-weight: bold; text-align: left;">&nbsp;${list.maName }</div>
								<!-- 남은기간, 현재 총 후원금액 -->
								<div>
									<span class="c" style="float: left">
									<i class="fas fa-calendar-alt"></i></span> 
									<span class="b" style="float: left; margin-left: 6px;">
									<c:if test="${list.remainDay >= '0' }">
									<p>${list.remainDay }일남음</p></span>
									</c:if>
									<!-- 프로젝트 마감시 프로젝트 상태 표시 -->
									<c:if test="${list.remainDay < '0' }">
									<p>${list.proSta}</p></span>
									</c:if> 
									<span class="c" style="float: right"><p>${list.totalMoney }원</p></span>
								</div>
							</div>
						</div>
						</c:forEach>
						</c:when>
						
						<c:when test="${caNum == '0'}">
						<!-- 모든프로젝트, 인기순 -->
						<c:forEach var="list" items="${totalList }">
						<div class="item">
							<div class="product-thumb_like">
								<!-- 대표이미지 -->
								<div class="image product-imageblock">

									
									<a href="<%=cp%>/projectdetail.action?proNum=${list.proNum}&userNum=${list.userNum}" style="vertical-align: -webkit-baseline-middle;"><img
										data-name="product_image" src="upload/${list.prjImg }"

										class="img-responsive"></a>

									<div class="button-group text-center"></div>
								</div>
								<!-- 프로젝트 제목 -->
								<div class="caption product-detail text-center">
									<h6 data-name="product_name" class="product-name" style="height: 50px; margin-top: 15px;">
										<a href="<%=cp%>/projectdetail.action?proNum=${list.proNum}&userNum=${list.userNum}" title="${list.prjTitle }" style="color: black; font-weight: bold; font-size: 15px;">${list.prjTitle }</a>
									</h6>
									<!-- 프로그래스바 시작 -->
									
									<div class="progress" style="margin-top: 5px; margin-bottom: 10px;">
										<div class="progress-bar" role="progressbar"
											aria-valuenow="${list.percent }" aria-valuemin="0" aria-valuemax="100"
											style="width: ${list.percent}%; background-color: red; max-width:100%;">
											<span class="sr-only">70% Complete</span>
										</div>
									</div>
									<!-- end progressbar-->
								</div>
								<!-- 창작자 이름 -->
								<div style="font-size: 15px; font-weight: bold; text-align: left;">&nbsp;${list.maName }</div>
								<!-- 남은기간, 현재 총 후원금액 -->
								<div>
									<span class="c" style="float: left">
									<i class="fas fa-calendar-alt"></i></span> 
									<span class="b" style="float: left; margin-left: 6px;">
									<c:if test="${list.remainDay >= '0' }">
									<p>${list.remainDay }일남음</p></span>
									</c:if>
									<!-- 프로젝트 마감시 프로젝트 상태 표시 -->
									<c:if test="${list.remainDay < '0' }">
									<p>${list.proSta}</p></span>
									</c:if> 
									<span class="c" style="float: right"><p>${list.totalMoney }원</p></span>
								</div>
							</div>
						</div>
						</c:forEach>
						</c:when>
						
						
						
						<c:otherwise>
						<!-- 카테고리 클릭 시 처음요청할때 -->
						<c:forEach var="list" items="${totalList_popular }">
						<div class="item">
							<div class="product-thumb_like">
								<!-- 대표이미지 -->
								<div class="image product-imageblock">
									<a href="<%=cp%>/projectdetail.action?proNum=${list.proNum}&userNum=${list.userNum}" style="vertical-align: -webkit-baseline-middle;"><img
										data-name="product_image" src="upload/${list.prjImg }"
										class="img-responsive"></a>


									<div class="button-group text-center"></div>
								</div>
								<!-- 프로젝트 제목 -->
								<div class="caption product-detail text-center">
									<h6 data-name="product_name" class="product-name" style="height: 50px; margin-top: 15px;">
										<a href="<%=cp%>/projectdetail.action?proNum=${list.proNum}&userNum=${list.userNum}" title="${list.prjTitle }" style="color: black; font-weight: bold; font-size: 15px;">${list.prjTitle }</a>
									</h6>
									<!-- 프로그래스바 시작 -->
									<div class="progress" style="margin-top: 5px; margin-bottom: 10px;">
										<div class="progress-bar" role="progressbar"
											aria-valuenow="${list.percent }" aria-valuemin="0" aria-valuemax="100"
											style="width: ${list.percent}%; background-color: red; max-width:100%;">
											<span class="sr-only">70% Complete</span>
										</div>
									</div>
									<!-- end progressbar-->
								</div>
								<!-- 창작자 이름 -->
								<span style="font-size: 15px; font-weight: bold;">&nbsp;${list.maName }</span>
								<!-- 남은기간, 현재 총 후원금액 -->
								<div>
									<span class="c" style="float: left">
									<i class="fas fa-calendar-alt"></i></span> 
									<span class="b" style="float: left; margin-left: 6px;">
									<c:if test="${list.remainDay >= '0' }">
									<p>${list.remainDay }일남음</p></span>
									</c:if>
									<!-- 프로젝트 마감시 프로젝트 상태 표시 -->
									<c:if test="${list.remainDay < '0' }">
									<p>${list.proSta}</p></span>
									</c:if> 
									<span class="c" style="float: right"><p>${list.totalMoney }원</p></span>
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
		<hr>						
				<!-- 페이징 처리 부분 -->
				<div class="pagination_project">
					
					<a href="#">&laquo;</a> 
					<a href="#" class="active">1</a> 
					<a href="#">2</a> 
					<a href="#">3</a> 
					<a href="#">4</a> 
					<a href="#">5</a> 
					<a href="#">6</a> 
					<a href="#">&raquo;</a>
				</div>
			</div>
		

	<jsp:include page="footer.jsp"/>

	<script src="js/jQuery_v3.1.1.min.js"></script>
	<script src="js/owl.carousel.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/jquery.magnific-popup.js"></script>
	<script src="js/jquery.firstVisitPopup.js"></script>
	<script src="js/custom.js"></script>


</body>
</html>