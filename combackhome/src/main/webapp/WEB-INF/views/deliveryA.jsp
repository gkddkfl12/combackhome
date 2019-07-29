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

    <!-- Title  -->
    <title>Amado - Furniture Ecommerce Template | Cart</title>
	<%@ include file="js/header.jsp" %>
	<%@ include file="js/session_check2.jsp" %>
    <!-- Favicon  -->
    <link rel="icon" href="${path}/img/core-img/favicon.ico">

    <!-- Core Style CSS -->
    <link rel="stylesheet" href="${path}/css/core-style.css">
    <link rel="stylesheet" href="${path}/style.css">
      <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css">
    
<style type="text/css">
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
.main{
  position:absolute; 
    top:50%; left:50%;
    margin-top:-100px; margin-left:-100px; 
    width:200px; height:200px;
}
a:hover{
color: #a6a6a6
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

<script type="text/javascript">
function list(page){
	location.href="${path}/order/listO.do?curPage="+page;
} 
</script>
</head>

<body>


<c:if test="${sessionScope.userid != 'admin' }">

<div class="heart">
<i class="fas fa-exclamation-triangle fa-8x" style="color: red;">&nbsp;Warning</i>
</div>
<br>
<img src="${path}/admin_team_join/에러.jpg" width="400px;" height="600px;">
<p>관리자 계정 전용 페이지입니다. 오류가 지속될 시에 고객센터로 문의해주세요.</p>
<a href="${path}/qna/list.do"><button type="button" class="btn btn-outline-secondary">고객센터</button></a>

</c:if>
<c:if test="${sessionScope.userid == 'admin' }">
<%@ include file="js/nav2.jsp" %>
  

    <div class="container">
    <div class="main" style="width: 900px; margin-left: -370px; margin-top: -280px;">
    <h1 style="font-weight: bold; text-align: center;">
    <a href="${path}/team_join/login.do"><img src="${path}/img/core-img/logo.png" alt="" style=""></a>&emsp;배송관리</h1>
                           <table border="5" class="table table-bordered" style="color: gray; width: 900px; text-align: center;" >
								<thead class="table-dark">
                                    <tr>
                                    	<th>주문번호</th>
                                    	<th>상품번호</th>
                                        <th>상품명</th>
                                        <th>아이디</th>
                                        <th>수량</th>
                                        <th>주문상태</th>
                                    </tr>
                                </thead>
                                <tbody>
                                <c:forEach var="row" items="${map.listO}">
                                   <tr>
                                    <td>${row.cnum }</td>
                                    <td>${row.pnum }</td>
                                   	<td>${row.pname }</td>
                                   	<td>${row.userid }</td>
                                   	<td>${row.camount }</td>
                                   	<c:choose>
                                   	 <c:when test="${row.ostatus == 0 }">
                                   	 	<td style="text-align: center;"><a
					href="${path}/order/updateOstatus1.do?cnum=${row.cnum}"><button type="button" class="btn btn-outline-primary">입금대기</button></a></td>
                                   	 </c:when>
                                   	 <c:when test="${row.ostatus == 1 }">
                                   	 	<td style="text-align: center;"><a
					href="${path}/order/updateOstatus2.do?cnum=${row.cnum}"><button type="button" class="btn btn-outline-primary">입금확인</button></a></td>
                                   	 </c:when>
                                   	 <c:when test="${row.ostatus == 2 }">
                                   	 	<td style="text-align: center;"><a 
					href="${path}/order/updateOstatus3.do?cnum=${row.cnum}"><button type="button" class="btn btn-outline-primary">배송중</button></a></td>
                                   	 </c:when>
                                   	 <c:when test="${row.ostatus == 3 }">
                                   	 	<td style="text-align: center;"><a
					href="${path}/order/updateOstatus4.do?cnum=${row.cnum}"><button type="button" class="btn btn-outline-primary">배송완료</button></a></td>
                                   	 </c:when>
                                   	 <c:when test="${row.ostatus == 4 }">
                                   	 	<td style="text-align: center;"><a
					href="${path}/order/delete.do?cnum=${row.cnum}"><button type="button" class="btn btn-outline-danger">삭제</button></a></td>
                                   	 </c:when>
                                   	</c:choose>
                                    </tr>
                                    </c:forEach>
                                </tbody>
                                	<tr>
		<td colspan="8" align="center">
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
     <%@ include file="js/footer.jsp" %>
    </footer>

</c:if>
</body>

</html>