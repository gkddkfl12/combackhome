<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <!-- Search Wrapper Area Start -->
    <div class="search-wrapper section-padding-100">
        <div class="search-close">
            <i class="fa fa-close" aria-hidden="true"></i>
        </div>
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="search-content">
                        <form action="#" method="get">
                            <input type="search" name="search" id="search" placeholder="Type your keyword...">
                            <button type="submit"><img src="${path}/img/core-img/search.png" alt=""></button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Search Wrapper Area End -->

    <!-- ##### Main Content Wrapper Start ##### -->
    <div class="main-content-wrapper d-flex clearfix">

        <!-- Mobile Nav (max width 767px)-->
        <div class="mobile-nav">
            <!-- Navbar Brand -->
            <div class="amado-navbar-brand">
                <a href="${path}/team_join/login.do"><img src="${path}/img/core-img/logo.png" alt=""></a>
            </div>
            <!-- Navbar Toggler -->
            <div class="amado-navbar-toggler">
                <span></span><span></span><span></span>
            </div>
        </div>

        <!-- Header Area Start -->
        <header class="header-area clearfix">
            <!-- Close Icon -->
            <div class="nav-close">
                <i class="fa fa-close" aria-hidden="true"></i>
            </div>
            <!-- Logo -->
            <div class="logo">
                <a href="${path}/team_join/login.do"><img src="${path}/img/core-img/logo.png" alt=""></a>
            </div>
            <c:choose>
             <c:when test="${sessionScope.userid == null }">
            <form class="form-horizontal" role="form" method="post" action="${path}/team_join/login_check.do" >
            	
            	<div class="panel-title">Sign In</div>
            	<div class="input-group">
                  <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
              	<input type="text" name="userid" placeholder="ID" style="width: 100%;">
              	</div>
              	
              	<div class="input-group">
                  <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
              	<input type="password"  name="passw
              	
              	
              	d" placeholder="Password" style="width: 100%;">
                </div>
              
                <div style="margin-top:10px" class="form-group">
                  <div class="col-sm-12 controls">
              	<input type="submit" id="btnLogin" class="btn btn-default btn-block" value="로그인">
              	</div>
              	</div>
              <c:if test="${param.message == 'nologin' }">
				  <div style="color:red;">
					  로그인 하신 후 사용하세요.
				  </div>				
			  </c:if>
			  <c:if test="${message == 'error' }">
				  <div style="color:red;">
					  아이디 또는 비밀번호가 일치하지 않습니다.
				  </div>
			  </c:if>
			  <c:if test="${message == 'logout' }">
			  	  <div style="color:blue;">
					  로그아웃 되었습니다.
				  </div>
			  </c:if>
			  <div style="margin-top:10px" class="form-group">
                <div class="col-sm-12 controls">
                  <a href="#">아이디/비밀번호 찾기</a>
                </div>
              </div>
            </form>
            </c:when>
            <c:otherwise>
            <form class="form-horizontal" role="form" method="post" action="${path}/team_join/logout.do">
             		${sessionScope.name}님
              <div style="margin-top:10px" class="form-group">
                <div class="col-sm-12 controls">
             	  <input type="submit" class="btn btn-default btn-block" value="로그아웃">
            	</div>
              </div>
            </form>
            </c:otherwise>
            </c:choose> 
            
            
           
            
            <!-- Amado Nav -->
            <nav class="amado-nav">
                <ul>
                    <li class="active"><a href="${path}/team_join/login.do">Home</a></li>
                    <li><a href="${path}/shop/product/list.do">Shop</a></li>
                    <li><a href="${path}/shop/product/detail/${dto.pnum}">Product</a></li>
                    <li><a href="${path}/carts/list.do">카트</a></li>
                    <li><a href="checkout.html">Checkout</a></li>
                </ul>
            </nav>
            <!-- Button Group -->
            <div class="amado-btn-group mt-30 mb-100">
                <a href="#" class="btn amado-btn mb-15">%Discount%</a>
                <a href="#" class="btn amado-btn active">New this week</a>
            </div>
            <!-- Cart Menu -->
            <div class="cart-fav-search mb-100">
                <a href="cart.html" class="cart-nav"><img src="${path}/img/core-img/cart.png" alt=""> Cart <span>(0)</span></a>
                <a href="#" class="fav-nav"><img src="${path}/img/core-img/favorites.png" alt=""> Favourite</a>
                <a href="#" class="search-nav"><img src="${path}/img/core-img/search.png" alt=""> Search</a>
            </div>
            <!-- Social Button -->
            <div class="social-info d-flex justify-content-between">
                <a href="#"><i class="fa fa-pinterest" aria-hidden="true"></i></a>
                <a href="#"><i class="fa fa-instagram" aria-hidden="true"></i></a>
                <a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a>
                <a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a>
            </div>
        </header>
        <!-- Header Area End -->