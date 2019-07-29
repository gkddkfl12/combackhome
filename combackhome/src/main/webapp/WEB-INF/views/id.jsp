<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@ include file="js/header.jsp" %>
<script type="text/javascript">

	function findid(){
		document.id.action="${path}/join/findid.do"
		document.id.submit();
	}
	
</script>
<style>
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
 <%@ include file="js/nav.jsp" %>
<form method="post" id="id" name="id" style="margin-left: 500px; margin-top: 250px; ">
전화번호 <input type="text" id="hp" name="hp" style="text-align: center; font-weight: bold;" placeholder="전화번호를 입력해주세요."><br>
이메일 <input type="text" id="email" name="email" style="text-align: center; font-weight: bold;" placeholder="이메일을 입력해주세요.">
<input type="button" value="아이디 찾기" onclick="findid()" class="btn btn-outline-success" style="">

<c:choose>
	<c:when test="${result==1 }">
		<div class="text-primary">당신의 아이디는 ${userid}입니다.</div>
		<a href="${path}/team_join/login.do"><button type="button" class="btn btn-outline-secondary">홈으로</button></a>
	</c:when>
	<c:when test="${result==0 }">
		<div class="text-danger">입력하신 정보가 존재하지 않습니다.</div>
	</c:when>
</c:choose>
</form>


<%-- <c:choose>
	<c:when test="${result==1 }">
		<div class="text-primary">당신의 아이디는 ${userid}입니다.</div>
	</c:when>
	<c:when test="${result==0 }">
		<div class="text-danger">입력하신 정보가 존재하지 않습니다.</div>
	</c:when>
</c:choose> --%>


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
                     <!--    <form action="#" method="post">
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
       <%@ include file="js/footer.jsp" %>
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


</body>
</html>