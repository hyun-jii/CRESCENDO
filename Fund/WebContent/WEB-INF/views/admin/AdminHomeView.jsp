<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
   request.setCharacterEncoding("UTF-8");
   String cp = request.getContextPath();
%>
<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>AdminHome.jsp</title>
<!-- 방문자 그래프 스타일 -->
<style type="text/css">

.highcharts-figure, .highcharts-data-table table {
    min-width: 310px; 
    max-width: 100%;
    margin: 1em auto;
}

#container {
    height: 100%;
}

.highcharts-data-table table {
	font-family: Verdana, sans-serif;
	border-collapse: collapse;
	border: 1px solid #EBEBEB;
	margin: 10px auto;
	text-align: center;
	width: 100%;
	max-width: 500px;
}
.highcharts-data-table caption {
    padding: 1em 0;
    font-size: 1.2em;
    color: #555;
}
.highcharts-data-table th {
	font-weight: 600;
    padding: 0.5em;
}
.highcharts-data-table td, .highcharts-data-table th, .highcharts-data-table caption {
    padding: 0.5em;
}
.highcharts-data-table thead tr, .highcharts-data-table tr:nth-child(even) {
    background: #f8f8f8;
}
.highcharts-data-table tr:hover {
    background: #f1f7ff;
}

.counter{
	font-size: 20px;
	font-weight: bold;
}

.counter2{
	font-size: 20px;
	font-weight: bold;
}
.counter3{
	font-size: 20px;
	font-weight: bold;
}


</style>

</style>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

<!-- 숫자 카운트업 js -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/modernizr/2.8.3/modernizr.min.js" type="text/javascript"></script>

<!-- 방문자 그래프 -->
<script src="<%=cp %>/js/highcharts.js"></script>
<script src="<%=cp %>/js/exporting.js"></script>
<script src="<%=cp %>/js/export-data.js"></script>

<!-- 숫자 카운트업 -->
<script type="text/javascript">

	$(function()
	{
		$('.counter').each(function() {
			  var $this = $(this),
			      countTo = $this.attr('data-count');
			  
			  $({ countNum: $this.text()}).animate({
			    countNum: countTo
			  },

			  {
				/* 카운트업 속도 */
			    duration: 1000,
			    easing:'linear',
			    step: function() {
			      $this.text(Math.floor(this.countNum));
			    },
			    complete: function() {
			      $this.text(this.countNum + " 명");
			    }

			  });  

		});
		
		$('.counter2').each(function() {
			  var $this = $(this),
			      countTo = $this.attr('data-count');
			  
			  $({ countNum: $this.text()}).animate({
			    countNum: countTo
			  },

			  {
				/* 카운트업 속도 */
			    duration: 1000,
			    easing:'linear',
			    step: function() {
			      $this.text(Math.floor(this.countNum));
			    },
			    complete: function() {
			      $this.text(this.countNum + " 개");
			    }

			  });  

		});
		
		$('.counter3').each(function() {
			  var $this = $(this),
			      countTo = $this.attr('data-count');
			  
			  $({ countNum: $this.text()}).animate({
			    countNum: countTo
			  },

			  {
				/* 카운트업 속도 */
			    duration: 1000,
			    easing:'linear',
			    step: function() {
			      $this.text(Math.floor(this.countNum));
			    },
			    complete: function() {
			      $this.text(this.countNum + " 건");
			    }

			  });  

		});
		
	});
	
	/* 방문자 그래프 */
	$(function()
	{
		Highcharts.chart('container', {
		    chart: {
		        type: 'column'
		    },
		    title: {
		        text: ''
		    },
		    accessibility: {
		        announceNewData: {
		            enabled: true
		        }
		    },
		    xAxis: {
		        type: 'category'
		    },
		    yAxis: {
		        title: {
		            text: '방문자 수'
		        }

		    },
		    legend: {
		        enabled: false
		    },
		    plotOptions: {
		        series: {
		            borderWidth: 0,
		            dataLabels: {
		                enabled: true,
		                format: '{point.y:f}'
		            }
		        }
		    },

		    tooltip: {
		        headerFormat: '<span style="font-size:11px">{series.name}</span><br>',
		        pointFormat: '<span style="color:{point.color}">{point.name}</span>: <b>{point.y:f}</b><br/>'
		    },

		    series: [
		        {
		        	/* 일자별 방문자 수 (7일전 ~ 당일) */
		            name: "날짜",
		            colorByPoint: true,
		            data: [
		                {
		                	/* 스크립트에서 EL문 사용 */
		                	name: "<c:out value='${day7}'/>",
		                    y: <c:out value='314'/>,
		                },
		                {
		                    name: "<c:out value='${day6}'/>",
		                    y: <c:out value='211'/>,
		                },
		                {
		                    name: "<c:out value='${day5}'/>",
		                    y: <c:out value='105'/>,
		                },
		                {
		                    name: "<c:out value='${day4}'/>",
		                    y: <c:out value='110'/>,
		                },
		                {
		                    name: "<c:out value='${day3}'/>",
		                    y: <c:out value='339'/>,
		                },
		                {
		                    name: "<c:out value='${day2}'/>",
		                    y: <c:out value='432'/>,
		                },
		                {
		                    name: "<c:out value='${day1}'/>",
		                    y: <c:out value='${dayVisit1}'/>,
		                }
		            ]
		        }
		    ],
		        
		});
	});

</script>


</head>

<body id="page-top">

	<!-- Page Wrapper -->
	<div id="wrapper">

		
		<jsp:include page="Side.jsp" />
		<!-- Content Wrapper -->
    <div id="content-wrapper" class="d-flex flex-column">

      <!-- Main Content -->
      <div id="content">

      
      <jsp:include page="Topbar.jsp"/>
      

				<!-- Begin Page Content -->
				<div class="container-fluid">

					<!-- Page Heading -->
					<div
						class="d-sm-flex align-items-center justify-content-between mb-4">
						<h1 class="h3 mb-0 text-gray-800"># 메인</h1>
					</div>

					<!-- Content Row -->
					<div class="row">

						<!-- Earnings (Monthly) Card Example -->
						<div class="col-xl-4 col-md-6 mb-4">
							# 회원 현황
							<!-- mb-4 sm으로 수저 -->
							<div class="card border-left-warning shadow h-100 py-2">
								<div class="card-body">
									<div class="row no-gutters align-items-center">
										<div class="col mr-2">
											<div class="text-xs font-weight-bold text-primary text-uppercase mb-1" style="font-size: 20px;">전체회원</div>
											<br>
											<div class="counter" data-count="${userCount }"></div>
											
											<div class="h5 mb-0 font-weight-bold text-gray-800" id="memberAllMember"></div>
											<br>
											<div class="text-xs font-weight-bold text-primary text-uppercase mb-1" style="font-size: 20px;">신규회원</div>
											<br>
											<div class="counter" data-count="${newUserCount }"></div>
											
											<div class="h5 mb-0 font-weight-bold text-gray-800" id="memberNewMember"></div>
											<br>
											<div class="text-xs font-weight-bold text-primary text-uppercase mb-1" style="font-size: 20px;">탈퇴회원</div>
											<br>
											<div class="counter" data-count="${outUserCount }"></div>
											
											<div class="h5 mb-0 font-weight-bold text-gray-800" id="memberLeaveMember"></div>
											<br> <br>
											

											<!--       <div class="text-xs font-weight-bold text-primary text-uppercase mb-1">블랙리스트 회원</div>
                      <div class="h5 mb-0 font-weight-bold text-gray-800" id="blackListMember"></div>  -->
										</div>
										<div class="col-auto">
											<i class="fas fa-calendar fa-2x text-gray-300"></i>
										</div>
									</div>
								</div>
							</div>
						</div>

						<!-- Pending Requests Card Example -->
						<div class="col-xl-4 col-md-6 mb-4">
							# 프로젝트 현황
							<div class="card border-left-primary shadow h-100 py-2">
								<div class="card-body">
									<div class="row no-gutters align-items-center">
										<div class="col mr-2">
											<div class="text-xs font-weight-bold text-warning text-uppercase mb-1" style="font-size: 20px;"><a href="projectlist1.action">심사대기중 프로젝트</a></div>
											<br>
											<div class="counter2" data-count="${readyProject }"></div>
											<div class="h5 mb-0 font-weight-bold text-gray-800" id="countProject1"></div>
											<br>
											<div
												class="text-xs font-weight-bold text-warning text-uppercase mb-1" style="font-size: 20px;"><a href="projectlist3.action">진행중 프로젝트</a></div>
											<br>
											<div class="counter2" data-count="${ingProject }"></div>
											<div class="h5 mb-0 font-weight-bold text-gray-800"
												id="countProject2"></div>
											<br>
											<div
												class="text-xs font-weight-bold text-warning text-uppercase mb-1" style="font-size: 20px;"><a href="projectlist4.action">마감된
												프로젝트</a></div>
											<br>
											<div class="counter2" data-count="${endProject }"></div>
											<div class="h5 mb-0 font-weight-bold text-gray-800"
												id="countProject3"></div>
										</div>
										<!--  아이콘 -->
										<div class="col-auto">
											<i class="fas fa-comments fa-2x text-gray-300"></i>
										</div>
									</div>
								</div>
							</div>
						</div>

						<!-- Earnings (Monthly) Card Example -->
						<div class="col-xl-4 col-md-6 mb-4">
							# 결제 현황
							<div class="card border-left-warning shadow h-100 py-2">
								<div class="card-body">
									<div class="row no-gutters align-items-center">
										<div class="col mr-2">
											<!--        <div class="text-xs font-weight-bold text-primary text-uppercase mb-1">주문 예약 현황 </div>
                      <div class="h5 mb-0 font-weight-bold text-gray-800" id="countReserve1"></div><br> -->
											<div
												class="text-xs font-weight-bold text-primary text-uppercase mb-1" style="font-size: 20px;">결제
												완료 현황</div>
											<div class="counter3" data-count="${payOkCount }"></div>
											<br>
											<div
												class="text-xs font-weight-bold text-primary text-uppercase mb-1" style="font-size: 20px;">취소
												및 환불 현황</div>
											<div class="counter3" data-count="${payBackCount }"></div>
										</div>
										<!-- 아이콘 설정 -->
										<div class="col-auto">
											<i class="fas fa-calendar fa-2x text-gray-300"></i>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>

					<!-- Content Row -->
					<br>
					<div class="row">

						<!--  방문자수 그래프 -->
						<!-- Area Chart -->
						<div class="col-xl-12 col-lg-7">
							<div class="card shadow mb-4">
								<!-- Card Header - Dropdown -->
								<div
									class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
									<p class="m-0 font-weight-bold text-primary"> 방문자 수
										
									</p>
									<div class="dropdown no-arrow">
										<a class="dropdown-toggle" href="#" role="button"
											id="dropdownMenuLink" data-toggle="dropdown"
											aria-haspopup="true" aria-expanded="false"> <i
											class="fas fa-ellipsis-v fa-sm fa-fw text-gray-400"></i>
										</a>
										<div
											class="dropdown-menu dropdown-menu-right shadow animated--fade-in"
											aria-labelledby="dropdownMenuLink">
											<div class="dropdown-header">Dropdown Header:</div>
											<a class="dropdown-item" href="#">Action</a> <a
												class="dropdown-item" href="#">Another action</a>
											<div class="dropdown-divider"></div>
											<a class="dropdown-item" href="#">Something else here</a>
										</div>
									</div>
								</div>

								<!--  방문자수 그래프  -->
								<!-- Card Body -->
								<div class="card-body">
									<!-- <div class="chart-area"> -->
										<%-- <canvas id="myAreaChart"></canvas> --%>
											<figure class="highcharts-figure">
										    	<div id="container"></div>
											   
											</figure>
									<!-- </div> -->
								</div>
							</div>
						</div>

						<%--        <!-- Pie Chart -->
             <div class="col-xl-4 col-lg-5">
              <div class="card shadow mb-4">
                <!-- Card Header - Dropdown -->
                <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                  <p class="m-0 font-weight-bold text-primary">카테고리 분포도</p>
                  <div class="dropdown no-arrow">
                    <a class="dropdown-toggle" href="#" role="button" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                      <i class="fas fa-ellipsis-v fa-sm fa-fw text-gray-400"></i>
                    </a>
                    <div class="dropdown-menu dropdown-menu-right shadow animated--fade-in" aria-labelledby="dropdownMenuLink">
                      <div class="dropdown-header">Dropdown Header:</div>
                      <a class="dropdown-item" href="#">Action</a>
                      <a class="dropdown-item" href="#">Another action</a>
                      <div class="dropdown-divider"></div>
                      <a class="dropdown-item" href="#">Something else here</a>
                    </div>
                  </div>
                </div>
                <!-- Card Body -->
                <div class="card-body">
                  <div class="chart-pie pt-4 pb-2">
                    <canvas id="myPieChart"></canvas>
                  </div>
                  <div class="mt-4 text-center small">
                    <span class="mr-2">
                      <i class="fas fa-circle text-primary"></i> 게임
                    </span>
                    <span class="mr-2">
                      <i class="fas fa-circle text-success" ></i> 문화
                    </span>
                    <span class="mr-2">
                      <i class="fas fa-circle text-info"></i> 연극
                    </span>
                    <span class="mr-2">
                      <i class="fas fa-circle text-success"></i> 미술
                    </span>
                    <span class="mr-2">
                      <i class="fas fa-circle text-info"></i> 공연
                    </span>
                    <span class="mr-2">
                      <i class="fas fa-circle text-success"></i> 기타
                    </span>
                  </div>
                </div>
              </div>
            </div>  --%>


					</div>


				</div>
				<!-- /.container-fluid -->

			</div>
			<!-- End of Main Content -->


		</div>
		<!-- End of Content Wrapper -->

	</div>
	<!-- End of Page Wrapper -->

	<!-- Scroll to Top Button-->
	<a class="scroll-to-top rounded" href="#page-top"> <i
		class="fas fa-angle-up"></i>
	</a>

	<!-- Logout Modal -->
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




	<!-- Core plugin JavaScript-->
	<script src="vendor/jquery-easing/jquery.easing.min.js"></script>

	<!-- Page level plugins -->
	<script src="vendor/chart.js/Chart.min.js"></script>

	<!-- Page level custom scripts -->
	<script src="js/demo/chart-area-demo.js"></script>
	<!-- <script src="js/demo/chart-pie-demo.js"></script> -->
</body>

</html>