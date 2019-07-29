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
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css">
    
<script>
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
function update() {
	if(confirm("정보를 수정하시겠습니까?")){
	document.form1.action="${path}/join/update.do";
	document.form1.submit();
	alert("수정되었습니다.");
	}
}
function deleteMember(){
	if(confirm("정말 탈퇴하시겠습니까?")){
		location.href="${path}/join/deleteMember.do";
		alert("탈퇴되었습니다.");
	}
}
</script>
</head>

<body>
  <%@ include file="js/nav.jsp" %>
  
  
    <div class="cart-table-area section-padding-100">
            <div class="container-fluid">
                <div class="row" style="margin-left: 550px;">
                    <div class="col-12 col-lg-10">
                        <div class="cart-title mt-50">

                            <div class="cart-title">
                                <h2 style="font-weight: bold;">개인정보 수정</h2>
                            </div>

                            <form action="#" method="post" name="form1">
                                <ul>
                                    <li>
                                      <span>아이디</span>&nbsp;<input type="text" class="form-control" id="userid"  name="userid" placeholder="ID" required value="${dto.userid }" style="width: 400px; text-align: center;" readonly="readonly">
                                    </li>
                                    <br>
                                    <li>
                                       <span>비밀번호</span>&nbsp; <input type="password" class="form-control" id="passwd" name="passwd" placeholder="Password" value="${dto.passwd }" style="width: 400px; text-align: center;" autofocus="autofocus">
                                    </li>
                                    <br>
                                    <li>
                                      <span>비밀번호 확인</span>&nbsp;  <input type="password" class="form-control" id="passwdchk" name="passwdchk" placeholder="PasswordCheck" value="${dto.passwd }" onkeyup="pass()" data-ajax="false" style="width: 400px; text-align: center;">
                                    </li>
                                    <br>
                                    <li>
                                  		<div id="pa" class="text-center text-danger"></div>    
                                  </li>
                                    <li>
                                       <span>나이</span>&nbsp; <input type="text" class="form-control mb-3" id="age" name="age" placeholder="Age" value="${dto.age }" style="width: 400px; text-align: center; readonly="readonly"">
                                    </li>
                                    <li>
                                      <span>이름</span>&nbsp;  <input type="text" class="form-control" id="name" name="name" placeholder="Name" value="${dto.name }" style="width: 400px; text-align: center;">
                                    </li>
                                    <br>
                                    <li>
                                      <span>이메일</span>&nbsp;  <input type="text" class="form-control" id="email" name="email" placeholder="Email" value="${dto.email }" style="width: 400px; text-align: center; ">
                                    </li>
                                    <br>
                                    <li>
                                      <span>주소</span>&nbsp;  <input type="text" class="form-control" id="address" name="address" min="0" placeholder="Adress" value="${dto.address }"style="width: 400px; text-align: center;" >
                                    </li>
                                    <br>
                                    
                                    <li>
                                       <span>우편번호</span>&nbsp; <input type="text" class="form-control" id="zipcode"  name="zipcode" min="0" placeholder="Zipcode" value="${dto.zipcode }" style="width: 400px; text-align: center;">
                                    </li>
                                    <br>
                                     <li>
                                     <span>전화번호</span>&nbsp;   <input type="text" class="form-control" id="hp" name="hp" min="0" placeholder="HP" value="${dto.hp }"style="width: 400px; text-align: center;">
                                    </li>
                                    <br>
                         <li>
                                        <input type="text" class="form-control" id="gender" name="gender" min="0" placeholder="gender" value="${dto.gender }"  style="width: 400px; text-align: center;" readonly="readonly">
                                    </li>
                             <br>
                                 
                                   
                                </div>
                                <input type="button"  class="btn btn-outline-secondary" id="btnupdate" name="btnupdate" onclick="update()" value="회원 정보 수정">
                                <input type="button" class="btn btn-outline-danger" onclick="deleteMember()" value="회원탈퇴">
                            </form>
                        </div>
                    </div>
                   
                 </div> 
                
            </div>
        </div>
    </div>

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