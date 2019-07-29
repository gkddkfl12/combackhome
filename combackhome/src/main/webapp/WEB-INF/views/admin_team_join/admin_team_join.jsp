<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
 <meta name="description" content="">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- The above 4 meta tags *must* come first in the head; any other head content must come *after* these tags -->

<title>Insert title here</title>
	<%@ include file="../js/header.jsp" %>


<!-- Favicon  -->
    <link rel="icon" href="${path}/img/core-img/favicon.ico">

    <!-- Core Style CSS -->
    <link rel="stylesheet" href="${path}/css/core-style.css">
    <link rel="stylesheet" href="${path}/style.css">
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css">





<style>
table.table-bordered{
    border:1px solid #cce6ff;
    margin-top:20px;
  }
table.table-bordered > thead > tr > th{
    border:1px solid #cce6ff;
}
table.table-bordered > tbody > tr > td{
    border:1px solid #cce6ff;
}    
a:hover{
color: #a6a6a6}

.main{
  position:absolute; 
   top:50%; left:50%;
    margin-top:300px; margin-left:250px;  
    width:200px; height:200px;
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

<div class="heart" style="">
<i class="fas fa-exclamation-triangle fa-8x" style="color: red;">&nbsp;Warning</i>
</div>
<br>
<img src="${path}/admin_team_join/에러.jpg" width="400px;" height="600px;">
<p>관리자 계정 전용 페이지입니다. 오류가 지속될 시에 고객센터로 문의해주세요.</p>
<a href="${path}/qna/list.do"><button type="button" class="btn btn-outline-secondary">고객센터</button></a>

</c:if>

<c:if test="${sessionScope.userid == 'admin' }">
<%@ include file="../js/nav2.jsp" %>



<div class="container" style="">
<h1 style="font-weight: bold; text-align: center;">
    <a href="#"><img src="${path}/img/core-img/logo.png" alt="" style=""></a>&emsp;회 원 관 리</h1>
    <div class="main" style="width: 900px; margin-left: -580px; margin-top: -300px;">
    
<br><br>

 <div >
<!-- 검색폼 -->
<form name="form1" method="post" action="${path}/admin_team_join/list.do" ">
	<select name="search_option">
		<option value="name"
<c:if test="${map.search_option == 'name'}">selected</c:if>
		>이름</option>
		<option value="userid" 
<c:if test="${map.search_option == 'userid'}">selected</c:if>
		>아이디</option>
		
		<option value="all" 
<c:if test="${map.search_option == 'all'}">selected</c:if>
		>이름+아이디</option>
	</select>
	&emsp;
	<input name="keyword" value="${map.keyword}" style="border-radius: 5px; height: 35px;"   >
	<input type="submit" value="조회" class="btn btn-outline-primary" style="height: 35px;">
</form>
</div>
<br><br>



<form name="form1" method="post" action="${path}/admin_team_join/list.do" ">
<table border="1" class="table table-bordered" style="color: gray; width: 1500px; text-align: center;" >
    <thead class="table-dark">
	<tr>
	    
		<th style="text-align: center;">아이디</th>
		<th style="text-align: center;">비밀번호</th>
		<th style="text-align: center;">이름</th>
		<th style="text-align: center;">나이</th>
		<th style="text-align: center;">이메일</th>
		<th style="text-align: center;">주소</th>
		<th style="text-align: center;">우편번호</th>
		<th style="text-align: center;">전화번호</th>
		<th style="text-align: center;">성별</th>
		<th style="text-align: center;">포인트</th>
		<th style="text-align: center;">가입일자</th>
		
		<th style="text-align: center;"><font style="color: red;">회원탈퇴</font></th>
	</tr>
	</thead>

<tbody>
<c:forEach var="row" items="${map.list}" >
	<tr>	
	
		<td>${row.userid}</td>
		<td>${row.passwd}</td>
		<td>${row.name}</td>
		<td>${row.age}</td>
		<td>${row.email}</td>
		<td>${row.address}</td>
		<td>${row.zipcode}</td>
		<td>${row.hp}</td>
		<td>${row.gender}</td>
		<td>${row.point}</td>
		<td><fmt:formatDate value="${row.join_date}" pattern="yyyy-MM-dd "/> </td>
		<td style="text-align: center;"><a class="btn btn-outline-primary"
		href="${path}/admin_team_join/admin_team_join_delete.do?userid=${row.userid}">삭제</a></td>
	</tr>
</c:forEach>
</tbody>	


 
<!-- 페이지 네비게이션 출력 -->

	<tr>
		<td colspan="12" align="center">
			<c:if test="${map.pager.curBlock > 1}">
				<a href="#" onclick="list('1')">[처음]</a>
			</c:if>
			<c:if test="${map.pager.curBlock > 1}">
				<a href="#" onclick="list('${map.pager.prevPage}')">
				[이전]</a>
			</c:if>
			<c:forEach var="num" 
				begin="${map.pager.blockBegin}"
				end="${map.pager.blockEnd}">
				<c:choose>
					<c:when test="${num == map.pager.curPage}">
					<!-- 현재 페이지인 경우 하이퍼링크 제거 -->
						<span style="color:red;">${num}</span>
					</c:when>
					<c:otherwise>
						<a href="#" onclick="list('${num}')">${num}</a>
					</c:otherwise>
				</c:choose>
			</c:forEach>
			<c:if test="${map.pager.curBlock < map.pager.totBlock}">
				<a href="#" 
				onclick="list('${map.pager.nextPage}')">[다음]</a>
			</c:if>
			<c:if test="${map.pager.curPage < map.pager.totPage}">
				<a href="#" 
				onclick="list('${map.pager.totPage}')">[끝]</a>
			</c:if>
		</td>
	</tr> 
</table>
</form>

</div>
</div>
</div>
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
                    </div>
                </div>
            </div>
        </div>

    </section>
    <!-- ##### Newsletter Area End ##### -->

    <!-- ##### Footer Area Start ##### -->
    <footer class="footer_area clearfix">
       <%@ include file="../js/footer.jsp" %>
    </footer>
    <!-- ##### Footer Area End ##### -->

    <!-- ##### jQuery (Necessary for All JavaScript Plugins) ##### -->
  
    <!-- Popper js -->
    <script src="${path}/js/popper.min.js"></script>
    <!-- Bootstrap js -->
    <script src="${path}/bootstrap.min.js"></script>
    <!-- Plugins js -->
    <script src="${path}/js/plugins.js"></script>
    <!-- Active js -->
    <script src="${path}/js/active.js"></script>


</c:if>


</body>
</html>