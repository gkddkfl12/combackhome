<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@ include file="../js/header.jsp"%>
<script type="text/javascript" src="https://www.google.com/jsapi"></script>
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css">
<script>
	//구글 차트 라이브러리 로딩
	google.load("visualization", "1", {
		"packages" : [ "corechart" ]
	});
	//라이브러리 로딩이 완료되면 drawChart 함수 호출, ()는 안씀
	google.setOnLoadCallback(drawChart);
	function drawChart() {
		//차트 그리기에 필요한 json 데이터 로딩
		var jsonData = $.ajax({
			url : "${path}/comChart/cart_money_list.do",
			dataType : "json",
			async : false
		//동기식처리(순차적 처리:데이터를 다부른 후 챠트출력하기 위해)
		}).responseText;
		console.log(jsonData);//콘솔에도 출력해봄
		//json => 데이터테이블
		var data = new google.visualization.DataTable(jsonData);
		console.log("데이터 테이블:" + data);
		var chart = new google.visualization.PieChart(document
				.getElementById("chart_div"));
		/* var chart=new google.visualization.LineChart(
				document.getElementById("chart_div")); */
		/* 	var chart=new google.visualization.ColumnChart(
		 document.getElementById("chart_div")); */
		chart.draw(data, {
			title : "상품 판매",
			//curveType: "function", //곡선 처리		
			width : 600,
			height : 440
		});
	}
	//구글 차트 라이브러리 로딩
	google.load("visualization", "1", {
		"packages" : [ "corechart" ]
	});
	
	//라이브러리 로딩이 완료되면 drawChart 함수 호출, ()는 안씀
	google.setOnLoadCallback(drawChartGender);
	function drawChartGender() {
		//차트 그리기에 필요한 json 데이터 로딩
		var jsonData = $.ajax({
			url : "${path}/comChart/cart_gender_list.do",
			dataType : "json",
			async : false
		//동기식처리(순차적 처리:데이터를 다부른 후 챠트출력하기 위해)
		}).responseText;
		console.log(jsonData);//콘솔에도 출력해봄
		//json => 데이터테이블
		var data = new google.visualization.DataTable(jsonData);
		console.log("데이터 테이블:" + data);
		var chart = new google.visualization.PieChart(document
				.getElementById("chart_gender"));
		/* var chart=new google.visualization.LineChart(
				document.getElementById("chart_div")); */
		/* 	var chart=new google.visualization.ColumnChart(
		 document.getElementById("chart_div")); */
		chart.draw(data, {
			title : "회원 성비",
			//curveType: "function", //곡선 처리		
			width : 600,
			height : 440
		});
	}
</script>

 <style type="text/css">
    
    input[type=text]{
  width:100%;
  border:2px solid #aaa;
  border-radius:4px;
  margin:8px 0;
  outline:none;
  padding:8px;
  box-sizing:border-box;
  transition:.5s;
}

input[type=text]:focus{
  border-color:dodgerBlue;
  box-shadow:0 0 8px 0 dodgerBlue;
}
   input[type=password]{
  width:100%;
  border:2px solid #aaa;
  border-radius:4px;
  margin:8px 0;
  outline:none;
  padding:8px;
  box-sizing:border-box;
  transition:.5s;
}

input[type=password]:focus{
  border-color:dodgerBlue;
  box-shadow:0 0 8px 0 dodgerBlue;
}
    
    body{
text-align: center;
margin: auto;
margin-top: 70px;


}

.heart{
transform: rotate(0deg);
animation: animate 4s linear infinite;
}

@keyframes animate
{
0%
{
  transform: rotate(0deg) scale(1);
}

20%
{
  transform: rotate(0deg) scale(.8);
}

40%
{
  transform: rotate(0deg) scale(1.2);
}

60%
{
  transform: rotate(0deg) scale(1);
}

80%
{
  transform: rotate(0deg) scale(1.3);
}

100%
{
  transform: rotate(0deg) scale(1);
}

}
    
    </style>
    
</head>
<body>



<c:if test="${sessionScope.userid != 'admin' }">

<div class="heart">
<i class="fas fa-exclamation-triangle fa-8x" style="color: red;">&nbsp;Warning</i>
</div>
<br>
<img src="${path}/chart/에러.jpg" width="400px;" height="600px;">
<p>관리자 계정 전용 페이지입니다. 오류가 지속될 시에 고객센터로 문의해주세요.</p>
<a href="${path}/qna/list.do"><button type="button" class="btn btn-outline-secondary">고객센터</button></a>

</c:if>

<c:if test="${sessionScope.userid == 'admin' }">
	<%@ include file="../js/nav2.jsp"%>
	<table border="1" style="margin-left: 200px; margin-top: 150px;">
	
		<tr>
	     <td><h3 style="text-align: center; font-weight: bold;">상품 판매 비율 현황 </h3></td>
		</tr>
		
		<tr>
		 <td>
			<div id="chart_div"></div>
		 <td>
		</tr>
		
		<tr>
	     <td>
			<button id="btn" type="button" onclick="drawChart()" class="btn btn-outline-primary">새로고침</button>
		 <td>
		</tr>
		
	</table>
	
	
	<table border="1" style="margin-left:; margin-top: 150px;">
		<tr>
			<td><h3 style="text-align: center; font-weight: bold;">회원 성비</h3></td>
		</tr>
		<tr>
			<td>
				<div id="chart_gender"></div>
			<td>
		</tr>
		<tr>
			<td>
				<button id="btn" type="button" onclick="drawChartGender()" class="btn btn-outline-primary">새로고침</button>
			<td>
		</tr>
	</table>
  <!-- ##### Footer Area Start ##### -->
 </div>
    <!-- ##### Main Content Wrapper End ##### -->
    <!-- ##### Newsletter Area Start ##### -->
    <section class="newsletter-area section-padding-100-0">
        <div class="container">
            <div class="row align-items-center">
                <!-- Newsletter Text -->
                <div class="col-12 col-lg-6 col-xl-7">
                    <div class="newsletter-text mb-100">
                        <h2>Subscribe for a <span>25% Discount</span></h2>
                        <p>Nulla ac convallis lorem, eget euismod nisl. Donec in libero sit amet mi vulputate consectetur. Donec auctor interdum purus, ac finibus massa bibendum nec.</p>
                    </div>
                </div>
                <!-- Newsletter Form -->
                <div class="col-12 col-lg-6 col-xl-5">
                    <div class="newsletter-form mb-100">
                        <form action="#" method="post">
                            <input type="email" name="email" class="nl-email" placeholder="Your E-mail">
                            <input type="submit" value="Subscribe">
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- ##### Newsletter Area End ##### -->

    <!-- ##### Footer Area Start ##### -->
    <footer class="footer_area clearfix">
        <%@include file="../js/footer.jsp" %>
    </footer>
    <!-- ##### Footer Area End ##### -->
</c:if>
</body>
</html>