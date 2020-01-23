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

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>


<script type="text/javascript" src="<%=cp%>/js/jquery-3.4.1.min.js"></script>
<script type="text/javascript" src="<%=cp%>/js/highcharts.js"></script>
<script type="text/javascript" src="<%=cp%>/js/export-data.js"></script>
<script type="text/javascript" src="<%=cp%>/js/exporting.js"></script>

<script type="text/javascript" src="<%=cp%>/js/data.js"></script>
<script type="text/javascript" src="<%=cp%>/js/drilldown.js"></script>
<script type="text/javascript" src="<%=cp%>/js/accessibility.js"></script>


</head>


<script type="text/javascript">
	$(document).ready(function()
	{
		/* 년도별 총수익 그래프 스크립트 */
		Highcharts.chart('container',
				{

					title :
					{
						text : '년도별 매출현황'
					},

					yAxis :
					{
						title :
						{
							text : '원'
						}
					},
					legend :
					{
						layout : 'vertical',
						align : 'right',
						verticalAlign : 'middle'
					},

					plotOptions :
					{
						series :
						{
							label :
							{
								connectorAllowed : false
							},
							pointStart :<c:out value="${year7}"/>
						}
					},

					series : [{
						name : '년도별 총 수익',
						data : [  <c:out value='${totalYear7}'/>, <c:out value='${totalYear6}'/>, <c:out value='${totalYear5}'/>,<c:out value='${totalYear4}'/>, <c:out value='${totalYear3}'/>, <c:out value='${totalYear2}'/>, <c:out value='${totalYear1}'/>
							,<c:out value='${totalYear}'/> ]
					} ],

					responsive :
					{
						rules : [
						{
							condition :
							{
								maxWidth : 500
							},
							chartOptions :
							{
								legend :
								{
									layout : 'horizontal',
									align : 'center',
									verticalAlign : 'bottom'
								}
							}
						} ]
					}

				});
		
		/* 최근 3개월 수익 */
		Highcharts.chart('container2', {
		    chart: {
		        type: 'column'
		    },
		    title: {
		        text: '최근 3개월 수익현황'
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
		            text: 'Total percent market share'
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
		        pointFormat: '<span style="color:{point.color}">{point.name}</span>: <b>{point.y:f}%</b> of total<br/>'
		    },

		    series: [
		        {
		            name: "Browsers",
		            colorByPoint: true,
		            data: [
		                {
		                    name:"<c:out value='${month2}'/>",
		                    y: <c:out value='${day2}'/>,
		   
		                },
		                {
		                    name: "<c:out value='${month1}'/>",
		                    y: <c:out value='${day1}'/>,
		               
		                },
		                {
		                	name:"<c:out value='${month}'/>",
		                    y: <c:out value='${day}'/>,
		                    
		                }
		            ]
		        }
		    ]
		});
		
	});
</script>


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
						<h1 class="h3 mb-0 text-gray-800"># 총 수익 현황</h1>
					</div>
					
					<div>
						
						<h3>총 수익 : <span style="color: black">${data }</span>원</h3>
						
					</div>
					
				
					<div id="container"></div>
					<div id="container2"></div>


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

	<!-- 관리자 로그아웃 모달  -->
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

	<!-- Page level custom scripts -->
	<script src="js/demo/chart-area-demo.js"></script>
	<script src="js/demo/chart-pie-demo.js"></script>
</body>

</html>