<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@ include file="js/header.jsp" %>

<c:if test="${mesaage=='1' }">
	<script type="text/javascript">
		alert("확인되었습니다.");
	</script>
</c:if>

<script type="text/javascript">
function passwd2(){
	if($("#passwd").val()!=$("#passwdcheck").val()){
		$("#result").html("비밀번호가 일치하지 않습니다.")
		$("passwd").foucs();
		return;
	}
	if($("#passwd").val()==$("#passwdcheck").val()){
		$("#result").html("")
		return;
	}

}
function passwdch(){
	if($("#passwd").val()==""){
		alert("패스워드를 입력해주세요.");
		$("#passwd").focus();
		return;
	}
	if($("#passwdcheck").val()==""){
		alert("패스워드확인을 입력해주세요.");
		$("#passwdcheck").focus();
		return;
	}
	
	if($("#passwd").val()==$("#passwdcheck").val()){
		document.changePw.action="${path}/join/updatePw.do";
		document.changePw.submit();
		alert("비밀번호가 변경되었습니다.");
		return;
			
	}else{
		alert("비밀번호가 일치하지않습니다.");
		return;
	}
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




<form method="post" id="changPw" name="changePw" style="margin-left: 300px; margin-top: 250px;">
<h2 style="text-align: center; font-weight: bold;">비밀번호 변경</h2>
	<input type="hidden" id="userid" name="userid" value="${userid}" style="">
	새로운 비밀번호  <input type="password" id="passwd" name="passwd" style="width: 30%;">
	비밀번호 확인 <input type="password" id="passwdcheck" name="passwdcheck" onkeyup="passwd2()" style="width: 30%;font-weight: bold;">
	<input type="button" value="비밀번호 변경" onclick="passwdch()" class="btn btn-outline-dager" style="font-weight: bold;">
</form>
<div id="result"></div>


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