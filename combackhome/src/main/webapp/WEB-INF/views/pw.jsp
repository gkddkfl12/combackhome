<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@ include file="js/header.jsp" %>


<c:if test="${mesaage=='2' }">
	<script type="text/javascript">
		alert("정보가 일치하지 않습니다.");
	</script>
</c:if>

<script type="text/javascript">




function findpw(){
	if($(".user").val()==""){
		alert("아이디를 입력하세요.");
		$(".user").focus();
		return;
	}
	if($("#name").val()==""){
		alert("이름을 입력하세요.");
		$("#name").focus();
		return;
	}
	if($("#hp").val()==""){
		alert("전화번호를 입력하세요.");
		$("#hp").focus();
		return;
	}
 document.findPw.action="${path}/join/findPw.do";
 document.findPw.submit();
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

</style>

</head>
<body>
<%@ include file="js/nav.jsp" %>



<form method="post" id="findPw" name="findPw" <%-- action="${path}/join/findPw.do" --%> style="margin-left: 500px; margin-top: 250px;">
<h2 style="font-weight: bold;">비밀번호 찾기</h2>
아이디 <input type="text" class="user" name="userid" placeholder="아이디를 입력해주세요." autocomplete="off"><br>
이름  <input  type="text" id="name" name="name" placeholder="이름을 입력해주세요." autocomplete="off"><br>
전화번호 <input type="text" id="hp" name="hp" placeholder="전화번호를 입력해주세요." autocomplete="off"><br>
<input type="button" class="btn btn-outline-primary" name="pwfind" onclick="findpw()" value="확인">
<!-- <input type="submit" name="pwfind" value="확인 " class="btn btn-outline-primary"> -->
</form>

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