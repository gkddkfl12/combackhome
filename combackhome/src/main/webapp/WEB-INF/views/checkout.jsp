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
    <title>Amado - Furniture Ecommerce Template | Checkout</title>
    <%@ include file="js/header.jsp" %>

    <!-- Favicon  -->
    <link rel="icon" href="img/core-img/favicon.ico">

    <!-- Core Style CSS -->
    <link rel="stylesheet" href="${path}/css/core-style.css">
    <link rel="stylesheet" href="${path}/style.css">
    
<script>


function join(){
	if($("#userid").val()==""){
		alert("아이디를 입력하세요.");
		$("#userid").focus();
		return;
	}
	if($("#passwd").val()==""){
		alert("비밀번호를 입력하세요.");
		$("#passwd").focus();
		return;
	}
	if($("#passwdchk").val()==""){
		alert("비밀번호 확인을 입력하세요.");
		$("#passwdchk").focus();
		return;
	}
	if($("#age").val()==""){
		alert("나이를 입력하세요.");
		$("#age").focus();
		return;
	}
	if($("#name").val()==""){
		alert("이름을 입력하세요.");
		$("#name").focus();
		return;
	}
	if($("#email").val()==""){
		alert("이메일을 입력하세요.");
		$("#email").focus();
		return;
	}
	if($("#address").val()==""){
		alert("주소를 입력하세요.");
		$("#address").focus();
		return;
	}
	if($("#zipcode").val()==""){
		alert("우편번호를 입력하세요.");
		$("#zipcode").focus();
		return;
	}
	if($("#hp").val()==""){
		alert("전화번호를 입력하세요.");
		$("#hp").focus();
		return;
	}
	if($("#gender").val()==""){
		alert("성별을 입력하세요.");
		$("#gender").focus();
		return;
	}
	
	
	document.form1.action="${path}/join/insert.do";
	document.form1.submit(); 
	alert("가입되었습니다.");
}
function pass() {
	var passwd=$("#passwd").val();
	var passwdchk=$("#passwdchk").val();
	if(passwd != passwdchk){
		$("#pa").html("<bm>비밀번호가 일치 하지 않습니다.<bm>");
		return false;
	}else{
		$("#pa").html("");
		return false;
	}
}
$(function(){
	$("#btnch").click(function(){
		$.ajax({
			type :"post",
			url :"${path}/join/idchk",
			data : {"userid" : $("#userid").val()},
			success : function(result){
				if(result==1){
					alert("이미 존재하는 아이디입니다.");
					$("#userid").focus();
					return;
				}else if($("#userid").val()==""){
					alert("아이디를 입력해주세요.");
					$("#userid").focus();
					return;					
					
				}else{
					alert("사용 가능한 아이디 입니다.");
					$("#passwd").focus();
					return;
				}
			}
		});
	});
});

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
  
  
       <div class="cart-table-area section-padding-100">
            <div class="container-fluid">
                <div class="row" style="margin-left: 450px;">
                    <div class="col-12 col-lg-10">
                        <div class="cart-title mt-50">

                            <div class="cart-title">
                                <h2 style="margin-left: 125px;">회원가입</h2>
                            </div>

                            <form action="#" method="post" name="form1">
                              <ul>
                                    <li>
                                        <input type="text" class="form-control" id="userid"  name="userid" placeholder="ID" required style="width: 400px; text-align: center;" autocomplete="off">
                                    </li>
                                    <li>
                                        <input type="button" class="btn btn-outline-primary btn-lg" id="btnch"  name="btnch" value="중복체크" style="text-align: center;" autocomplete="off">
                                    </li>
                                    <li>
                                        <input type="password" class="form-control" id="passwd" name="passwd" placeholder="Password" style="width: 400px; text-align: center;" autocomplete="off">
                                    </li>
                                    <br>
                                    <li>
                                        <input type="password" class="form-control" id="passwdchk" name="passwdchk" placeholder="PasswordCheck" onkeyup="pass()" data-ajax="false" style="width: 400px; text-align: center;" autocomplete="off">
                                    </li>
                                    <br>
                                	<li>
                                  		<div id="pa" class="text-center text-danger"></div>    
                                   </li>
                                    <li>
                                        <input type="text" class="form-control mb-3" id="age" name="age" placeholder="Age" style="width: 400px; text-align: center;" autocomplete="off">
                                   </li>
                                    <br>
                                    <li>
                                        <input type="text" class="form-control" id="name" name="name" placeholder="Name" style="width: 400px; text-align: center;"autocomplete="off">
                                    </li>
                                    <br>
                                    <li>
                                        <input type="text" class="form-control" id="email" name="email" placeholder="Email" style="width: 400px; text-align: center;"autocomplete="off">
                                    </li>
                                    <br>
                                    <li>
                                        <input type="text" class="form-control" id="address" name="address" min="0" placeholder="Adress" style="width: 400px; text-align: center;"autocomplete="off">
                                    </li>
                                    <br>
                                    <li>
                                        <input type="text" class="form-control" id="zipcode"  name="zipcode" min="0" placeholder="Zipcode" style="width: 400px; text-align: center;" autocomplete="off">
                                    </li>
                                    <br>
                                     <li>
                                        <input type="text" class="form-control" id="hp" name="hp" min="0" placeholder="HP" style="width: 400px; text-align: center;"autocomplete="off">
                                    </li>
                                     <li>
                                     <br>
                                        <input type="text" class="form-control" id="gender" name="gender" min="0" placeholder="gender"style="width: 400px; text-align: center;" autocomplete="off">
                                    </li>
                                </ul>

                                    <div class="col-12">
                                        
                                    </div>
                                </div>
                                <input type="button"  class="btn btn-outline-secondary" id="btnjoin" name="btnjoin" onclick="join()" value="회원가입">
                            </form>
                        </div>
                    </div>
                   
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
        <div class="container">
            <div class="row align-items-center">
                <!-- Single Widget Area -->
                <div class="col-12 col-lg-4">
                    <div class="single_widget_area">
                        <!-- Logo -->
                        <div class="footer-logo mr-50">
                            <a href="index.html"><img src="${path}/img/core-img/logo2.png" alt=""></a>
                        </div>
                        <!-- Copywrite Text -->
                        <p class="copywrite"><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="fa fa-heart-o" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p>
                    </div>
                </div>
                <!-- Single Widget Area -->
                <div class="col-12 col-lg-8">
                    <div class="single_widget_area">
                        <!-- Footer Menu -->
                        <div class="footer_menu">
                            <nav class="navbar navbar-expand-lg justify-content-end">
                                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#footerNavContent" aria-controls="footerNavContent" aria-expanded="false" aria-label="Toggle navigation"><i class="fa fa-bars"></i></button>
                                <div class="collapse navbar-collapse" id="footerNavContent">
                                    <ul class="navbar-nav ml-auto">
                                        <li class="nav-item active">
                                            <a class="nav-link" href="index.html">Home</a>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link" href="shop.html">Shop</a>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link" href="product-details.html">Product</a>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link" href="cart.html">Cart</a>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link" href="checkout.html">Checkout</a>
                                        </li>
                                    </ul>
                                </div>
                            </nav>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </footer>
    <!-- ##### Footer Area End ##### -->

    
</body>

</html>