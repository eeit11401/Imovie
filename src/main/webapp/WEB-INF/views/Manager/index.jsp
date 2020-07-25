<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<c:set var="funcName" value="index" scope="session"/>
	<head>
		<meta charset="UTF-8">
		<title>首頁</title>
		<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
<script src="https://code.highcharts.com/highcharts.js"></script>
<script src="https://code.highcharts.com/highcharts-more.js"></script>
<script src="https://code.highcharts.com/modules/exporting.js"></script>
<script src="https://code.highcharts.com/modules/export-data.js"></script>
<script src="https://code.highcharts.com/modules/accessibility.js"></script>


<style type="text/css">
credits: {
enabled:false
}
</style>
	</head>
	<body class="bg-theme bg-theme1">
		<c:set var="funcName" value="index" scope="session"/>
		<div id="wrapper">
			<jsp:include page="../Manager/Manager.jsp" />
			<div class="content-wrapper">
    <div class="container-fluid">

  <!--Start Dashboard Content-->

	<div class="card mt-3">
    <div class="card-content">
        <div class="row row-group m-0">
<!--             <div class="col-12 col-lg-6 col-xl-3 border-light"> -->
<!--                 <div class="card-body"> -->
<!--                   <h5 class="text-white mb-0">10000 <span class="float-right"><i class="fa fa-shopping-cart"></i></span></h5> -->
<!--                     <div class="progress my-3" style="height:3px;"> -->
<!--                        <div class="progress-bar" style="width:55%"></div> -->
<!--                     </div> -->
<!--                   <p class="mb-0 text-white small-font">Total Orders <span class="float-right">+4.2% <i class="zmdi zmdi-long-arrow-up"></i></span></p> -->
<!--                 </div> -->
<!--             </div> -->
            <div class="col-12 col-lg-6 col-xl-3 border-light">
                <div class="card-body">
                  <h5 class="text-white mb-0">8323 <span class="float-right"><i class="fa fa-usd"></i></span></h5>
                    <div class="progress my-3" style="height:3px;">
                       <div class="progress-bar" style="width:55%"></div>
                    </div>
                  <p class="mb-0 text-white small-font">Total Revenue <span class="float-right">+1.2% <i class="zmdi zmdi-long-arrow-up"></i></span></p>
                </div>
            </div>
            <div class="col-12 col-lg-6 col-xl-3 border-light">
                <div class="card-body">
                  <h5 class="text-white mb-0">6200 <span class="float-right"><i class="fa fa-eye"></i></span></h5>
                    <div class="progress my-3" style="height:3px;">
                       <div class="progress-bar" style="width:55%"></div>
                    </div>
                  <p class="mb-0 text-white small-font">Visitors <span class="float-right">+5.2% <i class="zmdi zmdi-long-arrow-up"></i></span></p>
                </div>
            </div>
            <div class="col-12 col-lg-6 col-xl-3 border-light">
                <div class="card-body">
                  <h5 class="text-white mb-0">5630 <span class="float-right"><i class="fa fa-envira"></i></span></h5>
                    <div class="progress my-3" style="height:3px;">
                       <div class="progress-bar" style="width:55%"></div>
                    </div>
                  <p class="mb-0 text-white small-font">Messages <span class="float-right">+2.2% <i class="zmdi zmdi-long-arrow-up"></i></span></p>
                </div>
            </div>
        </div>
    </div>
 </div>  
	  
	<div class="row">
     <div class="col-12 col-lg-8 col-xl-8">
	    <div class="card">
		 <div class="card-header">Site Traffic
		   <div class="card-action">
			 <div class="dropdown">
			 <a href="javascript:void();" class="dropdown-toggle dropdown-toggle-nocaret" data-toggle="dropdown">
			  <i class="icon-options"></i>
			 </a>
				<div class="dropdown-menu dropdown-menu-right">
				<a class="dropdown-item" href="javascript:void();">Action</a>
				<a class="dropdown-item" href="javascript:void();">Another action</a>
				<a class="dropdown-item" href="javascript:void();">Something else here</a>
				<div class="dropdown-divider"></div>
				<a class="dropdown-item" href="javascript:void();">Separated link</a>
			   </div>
			  </div>
		   </div>
		 </div>
		 <div id="container" class="card-body">
		 
		    <!-- <ul class="list-inline">
			  <li class="list-inline-item"><i class="fa fa-circle mr-2 text-white"></i>New Visitor</li>
			  <li class="list-inline-item"><i class="fa fa-circle mr-2 text-light"></i>Old Visitor</li>
			</ul> -->
			<div  class="chart-container-1">
			
<%--         	<canvas id="chart1"> --%>
        		<div ></div>
<%--         	</canvas> --%>
			  
<!-- 			  <button id="plain">Plain</button> -->
<!-- 			  <button id="inverted">Inverted</button> -->
<!-- 			  <button id="polar">Polar</button> -->
			</div>
		 </div>
		 
		 <div class="row m-0 row-group text-center border-top border-light-3">
<!-- 		   <div class="col-12 col-lg-4"> -->
<!-- 		     <div class="p-3"> -->
<!-- 		       <h5 class="mb-0">45.87M</h5> -->
<!-- 			   <small class="mb-0">Overall Visitor <span> <i class="fa fa-arrow-up"></i> 2.43%</span></small> -->
<!-- 		     </div> -->
<!-- 		   </div> -->
<!-- 		   <div class="col-12 col-lg-4"> -->
<!-- 		     <div class="p-3"> -->
<!-- 		       <h5 class="mb-0">15:48</h5> -->
<!-- 			   <small class="mb-0">Visitor Duration <span> <i class="fa fa-arrow-up"></i> 12.65%</span></small> -->
<!-- 		     </div> -->
<!-- 		   </div> -->
<!-- 		   <div class="col-12 col-lg-4"> -->
<!-- 		     <div class="p-3"> -->
<!-- 		       <h5 class="mb-0">245.65</h5> -->
<!-- 			   <small class="mb-0">Pages/Visit <span> <i class="fa fa-arrow-up"></i> 5.62%</span></small> -->
<!-- 		     </div> -->
<!-- 		   </div> -->
		 </div>
		 
		</div>
	 </div>

     <div class="col-12 col-lg-4 col-xl-4">
        <div class="card">
           <div class="card-header">Weekly sales
             <div class="card-action">
             <div class="dropdown">
             <a href="javascript:void();" class="dropdown-toggle dropdown-toggle-nocaret" data-toggle="dropdown">
              <i class="icon-options"></i>
             </a>
              <div class="dropdown-menu dropdown-menu-right">
              <a class="dropdown-item" href="javascript:void();">Action</a>
              <a class="dropdown-item" href="javascript:void();">Another action</a>
              <a class="dropdown-item" href="javascript:void();">Something else here</a>
              <div class="dropdown-divider"></div>
              <a class="dropdown-item" href="javascript:void();">Separated link</a>
               </div>
              </div>
             </div>
           </div>
           <div class="card-body">
		     <div class="chart-container-2">
               <canvas id="chart2"></canvas>
			  </div>
           </div>
           <div class="table-responsive">
             <table class="table align-items-center">
               <tbody>
                 <tr>
                   <td><i class="fa fa-circle text-white mr-2"></i> Direct</td>
                   <td>$5856</td>
                   <td>+55%</td>
                 </tr>
                 <tr>
                   <td><i class="fa fa-circle text-light-1 mr-2"></i>Affiliate</td>
                   <td>$2602</td>
                   <td>+25%</td>
                 </tr>
                 <tr>
                   <td><i class="fa fa-circle text-light-2 mr-2"></i>E-mail</td>
                   <td>$1802</td>
                   <td>+15%</td>
                 </tr>
                 <tr>
                   <td><i class="fa fa-circle text-light-3 mr-2"></i>Other</td>
                   <td>$1105</td>
                   <td>+5%</td>
                 </tr>
               </tbody>
             </table>
           </div>
         </div>
     </div>
	</div><!--End Row-->
	
	<div class="row">
	 <div class="col-12 col-lg-12">
	   <div class="card">
	     <div class="card-header">預約單資訊
		  <div class="card-action">
             <div class="dropdown">
             <a href="javascript:void();" class="dropdown-toggle dropdown-toggle-nocaret" data-toggle="dropdown">
              <i class="icon-options"></i>
             </a>
              <div class="dropdown-menu dropdown-menu-right">
              <a class="dropdown-item" href="javascript:void();">Action</a>
              <a class="dropdown-item" href="javascript:void();">Another action</a>
              <a class="dropdown-item" href="javascript:void();">Something else here</a>
              <div class="dropdown-divider"></div>
              <a class="dropdown-item" href="javascript:void();">Separated link</a>
               </div>
              </div>
             </div>
		 </div>
	       <div class="table-responsive">
              <table class="table align-items-center table-flush table-borderless">
                  <thead>
	                   <tr>
	                     <th>訂單編號</th>
	                     <th>使用者帳號</th>
	                     <th>預約包廂名稱</th>
	                     <th>預約電影名稱</th>
	                     <th>預約日期</th>
	                     <th>預約開始時間</th>
	                     <th>預約結束時間</th>
	                   </tr>
                   </thead>
                   <tbody>
                   		<c:forEach var="CartOrderBean" items="${CartOrderBean}">
                   			<tr>
                   				<td>${CartOrderBean.value.orderNo}</td>
                   				<td>${CartOrderBean.value.member.memberId}</td>
                   				<td>${CartOrderBean.value.room.roomName}</td>
                   				<td>${CartOrderBean.value.movie.movieName}</td>
                   				<td>${CartOrderBean.value.orderDate}</td>
                   				<td>${CartOrderBean.value.orderDateStart}</td>
                   				<td>${CartOrderBean.value.orderDateEnd}</td>
                   			</tr>
                   		</c:forEach>
                   </tbody>
                 </table>
            </div>
	   </div>
	 </div>
	</div>
	<div class="row">
	 <div class="col-12 col-lg-12">
	   <div class="card">
	     <div class="card-header">評分與評論
		  <div class="card-action">
             <div class="dropdown">
             <a href="javascript:void();" class="dropdown-toggle dropdown-toggle-nocaret" data-toggle="dropdown">
              <i class="icon-options"></i>
             </a>
              <div class="dropdown-menu dropdown-menu-right">
              <a class="dropdown-item" href="javascript:void();">Action</a>
              <a class="dropdown-item" href="javascript:void();">Another action</a>
              <a class="dropdown-item" href="javascript:void();">Something else here</a>
              <div class="dropdown-divider"></div>
              <a class="dropdown-item" href="javascript:void();">Separated link</a>
               </div>
              </div>
             </div>
		 </div>
	       <div class="table-responsive">
              <table class="table align-items-center table-flush table-borderless">
                  <thead>
	                   <tr>
	                     <th>訂單編號</th>
	                     <th>預約日期</th>
	                     <th>評分(分數)</th>
	                     <th>評論內容</th>
	                   </tr>
                   </thead>
                   <tbody>
                   		<c:forEach var="survey" items="${SurveyBean}">
                   			<tr>
                   				<td>${survey.value.orderNo}</td>
                   				<td>${survey.value.date}</td>
                   				<td>${survey.value.satisfaction}分</td>
                   				<td>${survey.value.comment}</td>
                   			</tr>
                   		</c:forEach>
                   </tbody>
                 </table>
            </div>
	   </div>
	 </div>
	</div>
	<!--End Row-->

      <!--End Dashboard Content-->
	  
	<!--start overlay-->
		  <div class="overlay toggle-menu"></div>
		<!--end overlay-->
		
    </div>
    <!-- End container-fluid-->
    
    </div><!--End content-wrapper--></div>
    <script src="assets/plugins/Chart.js/Chart.min.js"></script>
  <!-- Index js -->
  	<script src="assets/js/index.js"></script>
    <script>
    function wdithChane(){
    	var scriptJSON = document.createElement('script');
		var xhr = new XMLHttpRequest();
		xhr.open("GET","<c:url value='roomAnalysis' />", true);
		xhr.setRequestHeader("Content-type","application/x-www-form-urlencoded");
		xhr.send();
		console.log("jalfshkjadnfjl");
		xhr.onreadystatechange = function() {
			if (xhr.readyState == 4 && xhr.status == 200) {
				var rooms = JSON.parse(xhr.responseText);
				var roomName = new Array();
				var roomRate = new Array();
				console.log(rooms);
				for (var i = 0; i < rooms.length; i++) {
					roomName.push(rooms[i].roomName);
					roomRate.push(Math.round(rooms[i].roomRate));
					
					console.log(rooms[i].roomName +" , "+ rooms[i].roomRate);
				}
				analysisF(roomName,roomRate);
			}
		}
    }
// 		var container = document.getElementById("hiFigure");
		var scriptJSON = document.createElement('script');
		var xhr = new XMLHttpRequest();
		xhr.open("GET","<c:url value='roomAnalysis' />", true);
		xhr.setRequestHeader("Content-type","application/x-www-form-urlencoded");
		xhr.send();
		console.log("jalfshkjadnfjl");
		xhr.onreadystatechange = function() {
			if (xhr.readyState == 4 && xhr.status == 200) {
				var rooms = JSON.parse(xhr.responseText);
				var roomName = new Array();
				var roomRate = new Array();
				console.log(rooms);
				for (var i = 0; i < rooms.length; i++) {
					roomName.push(rooms[i].roomName);
					roomRate.push(Math.round(rooms[i].roomRate));
					
					console.log(rooms[i].roomName +" , "+ rooms[i].roomRate);
				}
				analysisF(roomName,roomRate);
				
			}
		}
		function analysisF(roomName,roomRate){
			console.log(roomName)
			console.log(roomRate)
			var chart = Highcharts.chart("container", {
				chart: {
			        height: 380,
			        type: 'line',
			        backgroundColor: 'rgba(0,0,0,0)',
			        
			    },
			    title: {
			        text: '包廂使用率(%)',
			        style: {
		                color: '#FFFFFF'
		            }
			    },
			    xAxis: {
			    	title:{
			    	       text:'包廂名稱',
		    	    	   style: {
				                color: '#FFFFFF'
				            }
			    	   },
			        categories: roomName,
			        labels: {
			            style: {
			                color: '#FFFFFF'
			            }
			        }
			    },
			    yAxis:{
		    	   title:{
		    	       text:'使用率(%)',
		    	       style: {
			                color: '#FFFFFF'
			            }
		    	   },
		    	   labels: {
			            style: {
			                color: '#FFFFFF'
			            }
			        }
			    },
			    credits: { enabled:false },   //去掉右下角highchart.com
			    exporting: { enabled:false },   //去掉右上角的打印及导出按钮
			    series: [{
			        type: 'column',
			        colorByPoint: true,
			        data: roomRate,
			        showInLegend: false
			    }],
			 
			});
			$('#plain').click(function () {
			    chart.update({
			        chart: {
			            inverted: false,
			            polar: false
			        },
			        subtitle: {
			            text: 'Plain'
			        }
			    });
			});

			$('#inverted').click(function () {
			    chart.update({
			        chart: {
			            inverted: true,
			            polar: false
			        },
			        subtitle: {
			            text: 'Inverted'
			        }
			    });
			});

			$('#polar').click(function () {
			    chart.update({
			        chart: {
			            inverted: false,
			            polar: true
			        },
			        subtitle: {
			            text: 'Polar'
			        }
			    });
			});
			//	$('#container').highcharts().reflow();
		}
		window.onresize = function() {
	        $('#container').highcharts().reflow();
	    }
		

			
</script>
    
 	</body>
</html>