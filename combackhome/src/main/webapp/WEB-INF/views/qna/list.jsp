<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <meta name="description" content="">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Insert title here</title>
<%@ include file="../js/header.jsp" %>


<script>
$(function(){
	$("#btnWrite").click(function(){
		location.href="${path}/qna/write.do";
	});
});
function list(page){
	location.href="${path}/qna/list.do?curPage="+page;
} 
</script>
     
     <!-- Favicon  이미지 불러오기-->
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

<div class="container">
    <div class="main" style="width: 900px; margin-left: -370px; margin-top: -370px;">
    <h1 style="font-weight: bold; text-align: center;">
    <a href="${path}/team_join/login.do"><img src="${path}/img/core-img/logo.png" alt="" style=""></a>&emsp;게 시 판</h1>
<br><br>

<div >
<!-- 검색폼 -->
<form name="form1" method="post" action="${path}/qna/list.do" ">
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
	&emsp;
	<input name="keyword" value="${map.keyword}" style="border-radius: 5px; height: 35px;"   >
	<input type="submit" value="조회" class="btn btn-outline-primary" style="height: 35px;">
</form>
</div>

<br><br>



<table border="5" class="table table-bordered" style="color: gray; width: 900px; text-align: center;" >
    <thead class="table-dark">
	<tr>
		<th style="text-align: center;">번호</th>
		<th style="text-align: center;">제목</th>
		<th style="text-align: center;">이름</th>
		<th style="text-align: center;">날짜</th>
		<th style="text-align: center;">조회수</th>
	</tr>
	</thead>
	<!-- forEach var="개별데이터" items="집합데이터" -->
	
	<tbody>
<c:forEach var="row" items="${map.list}">
	<tr>
		<td>${row.bno}</td>
		<td>
        <a href="${path}/qna/view.do?bno=${row.bno}">${row.title}</a>
        <c:if test="${row.cnt > 0}"><span style="color:red;">( ${row.cnt} )</span></c:if>
        </td>
		<td>${row.name}</td>
		<td><fmt:formatDate value="${row.regdate}" pattern="yyyy-MM-dd HH:mm:ss"/> </td>
		<td>${row.viewcnt}</td>
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
<c:if test="${sessionScope.userid != null }">
<h2><a href="${path}/qna/write.do" id="btnWrite"><button type="button" class="btn btn-outline-primary">글쓰기</button></a></h2>
</c:if>

</div>
</div>
</div>



<br>
<br>
<br>
<br>
<br>
<br>

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
                       <!--  <form action="#" method="post">
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

  


</body>
</html>

		