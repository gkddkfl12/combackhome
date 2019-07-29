<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css">
<%@ include file="../js/header.jsp" %>
<style type="text/css">
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
<img src="img/core-img/에러.jpg" width="300px;" height="400px;">
<p>관리자 계정 전용 페이지입니다. 오류가 지속될 시에 고객센터로 문의해주세요.</p>
<a href="${path}/qna/list.do"><button type="button" class="btn btn-outline-secondary">고객센터</button></a>

</c:if>
 


</body>
</html>