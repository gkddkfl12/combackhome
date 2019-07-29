<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="description" content="">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- The above 4 meta tags *must* come first in the head; any other head content must come *after* these tags -->

    <!-- Title  -->
    <title>Amado - Furniture Ecommerce Template | Home</title>
	<%@ include file="../js/header.jsp" %>
<script>
$(function(){
	/* $("#btnWrite").click(function(){
		location.href="${path}/board/write.do";
	}); */
});
function list(page){
	location.href="${path}/board/list.do?curPage="+page;
} 
</script>

<!-- Favicon  -->
    <link rel="icon" href="${path}/img/core-img/favicon.ico">

    <!-- Core Style CSS -->
    <link rel="stylesheet" href="${path}/css/core-style.css">
    <link rel="stylesheet" href="${path}/style.css">


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
    
    </style>


</head>
<body>
<%@ include file="../js/nav.jsp" %>

<!-- 검색폼 -->
<%-- <form name="form1" method="post"
	action="${path}/board/list.do">
	<select name="search_option">
		<option value="name"
<c:if test="${map.search_option == 'name'}">selected</c:if>
		>이름</option>
		<option value="title" 
<c:if test="${map.search_option == 'title'}">selected</c:if>
		>제목</option>
		<option value="content" 
<c:if test="${map.search_option == 'content'}">selected</c:if>
		>내용</option>
		<option value="all" 
<c:if test="${map.search_option == 'all'}">selected</c:if>
		>이름+내용+제목</option>
	</select>
	<input name="keyword" value="${map.keyword}">
	<input type="submit" value="조회">
</form> --%>



 <div class="container">
    <div class="main" style="width: 900px; margin-left: -370px; margin-top: -320px;">
    <h1 style="font-weight: bold; text-align: center;">
    <a href="${path}/team_join/login.do"><img src="${path}/img/core-img/logo.png" alt="" style=""></a>&emsp;공지사항</h1>
    

<table border="5" class="table table-bordered" style="color: gray; width: 900px;">
	<thead class="table-dark">
	<tr>
		<th style="text-align: center;">공지번호</th>
		<th style="text-align: center;">공지제목</th>
		<th style="text-align: center;">작성자</th>
		<th style="text-align: center;">공지게시일</th>
		<th style="text-align: center;">조회수</th>
		</tr>
	</thead>
	<!-- forEach var="개별데이터" items="집합데이터" -->
	
	<tbody>
<c:forEach var="row" items="${map.list}">
	<tr style="text-align: center;">
		<td style="text-align: center;">${row.bno}</td>
		<td style="text-align: center;">
<a href="${path}/board/view.do?bno=${row.bno}" style="font-weight: bold; font-size: 1em;">
${row.title}
</a>
 <%--  <c:if test="${row.cnt > 0}">
	<span style="color:red;">( ${row.cnt} )</span>
  </c:if> --%>
</td>
		<td style="text-align: center;">${row.name}</td>
		<td style="text-align: center;"><fmt:formatDate value="${row.regdate}"
			pattern="yyyy-MM-dd HH:mm:ss"/> </td>
		<td style="text-align: center;">${row.viewcnt}</td>
	</tr>
</c:forEach>	
</tbody>

<!-- 페이지 네비게이션 출력 -->
	<tr>
		<td colspan="5" align="center">
		
			<c:if test="${map.pager.curBlock > 1}">
				<a href="#" onclick="list('1')">[처음]</a>
			</c:if>
			
			
			
			<c:if test="${map.pager.curBlock > 1}">
				<a href="#" onclick="list('${map.pager.prevPage}')">[이전]</a>
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

<c:if test="${sessionScope.userid == 'admin' }">

	<h2>
	<a href="${path}/board/write.do" id="btnWrite"><button type="button" class="btn btn-outline-primary">공지작성</button></a>
	</h2>
	
</c:if>



</div>
</div>
</div>
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
                      <!--   <form action="#" method="post">
                            <input type="email" name="email" class="nl-email" placeholder="Your E-mail">
                            <input type="submit" value="Subscribe">
                        </form> -->
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

    <!-- ##### jQuery (Necessary for All JavaScript Plugins) ##### -->
    <script src="${path}/js/jquery/jquery-2.2.4.min.js"></script>
    <!-- Popper js -->
    <script src="${path}/js/popper.min.js"></script>
    <!-- Bootstrap js -->
    <script src="${path}/js/bootstrap.min.js"></script>
    <!-- Plugins js -->
    <script src="${path}/js/plugins.js"></script>
    <!-- Active js -->
    <script src="${path}/js/active.js"></script>

</body>

</html>
		