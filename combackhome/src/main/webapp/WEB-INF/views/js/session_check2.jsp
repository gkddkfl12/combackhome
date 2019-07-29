<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c"
uri="http://java.sun.com/jsp/jstl/core" %>


<c:if test="${sessionScope.userid != 'admin' }">

<div class="heart" style="">
<i class="fas fa-exclamation-triangle fa-8x" style="color: red;">&nbsp;Warning</i>
</div>
<br>
<img src="${path}/admin_team_join/에러.jpg" width="400px;" height="600px;">
<p>관리자 계정 전용 페이지입니다. 오류가 지속될 시에 고객센터로 문의해주세요.</p>
<a href="${path}/qna/list.do"><button type="button" class="btn btn-outline-secondary">고객센터</button></a>

</c:if>