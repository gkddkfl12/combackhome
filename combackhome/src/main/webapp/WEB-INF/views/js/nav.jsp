<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css">
    
 <!-- Search Wrapper Area Start -->
    <div class="search-wrapper section-padding-100" style="background: lightgray; z-index: 1; opacity: 0.7;">
        <div class="search-close" style=" margin-top: 110px; margin-right: 310px; background: black; border-radius: 6px;">
            <i class="fa fa-close fa-3x" aria-hidden="true" style=""></i>
        </div>
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="search-content">
                        <form action="${path}/shop/product/list.do" method="get">
                            <input type="search" name="keyword" id="keyword" placeholder="Type your keyword..." style=" border-radius: 9px;">
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
                <a href="index.html"><img src="${path}/img/core-img/logo.png" alt=""></a>
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
                 <a href="${path}/team_join/login.do"><img src="${path}/img/core-img/logo.png" style="" alt=""></a>
            </div>
            <c:choose>
             <c:when test="${sessionScope.userid == null }">
            <form class="form-horizontal" role="form" method="post" action="${path}/team_join/login_check.do" >
            	
            	<div class="panel-title" style="text-align: center;">Sign In</div>
            	<div class="input-group">
                  <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
              	<input type="text"  name="userid"  placeholder="ID" style="width: 100%;" autocomplete="off" autofocus="autofocus">
              	</div>
              	
              	<div class="input-group">
                  <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
              	<input type="password" name="passwd" placeholder="Password" style="width: 100%;">
                </div>
              
                <div style="margin-top:10px" class="form-group">
                  <div class="col-sm-12 controls">
              	<input type="submit" id="btnLogin" class="btn btn-default btn-block" value="로그인" style="box-shadow: 0 0 4px 0 dodgerBlue;">
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
                  <a href="${path}/join/findidPage.do">아이디 </a>/<a href="${path}/join/forgetPw.do">비밀번호 찾기</a>
                </div>
              </div>
            </form>
            </c:when>
            <c:otherwise>
            <form class="form-horizontal" role="form" method="post" action="${path}/team_join/logout.do">
             	<div style="text-align: center;">${sessionScope.name}</div>
              <div style="margin-top:10px" class="form-group">
                <div class="col-sm-12 controls">
             	  <input type="submit" class="btn btn-default btn-block" value="로그아웃" style="box-shadow: 0 0 4px 0 dodgerBlue;">
            	</div>
              </div>
            </form>
            </c:otherwise>
            </c:choose> 
            
            
           
            
            <!-- Amado Nav -->
            <nav class="amado-nav">
                <ul>
                    <li><a href="${path}/team_join/login.do"><i class="fas fa-home"></i>&emsp;메인</a></li>
                    <li><a href="${path}/shop/product/list.do"><i class="fas fa-shopping-bag"></i>&emsp;상점</a></li>
                    <c:if test="${sessionScope.userid != null }">
                    <li><a href="${path}/carts/list.do"><i class="fas fa-shopping-cart"></i>&emsp;장바구니</a></li>
                    </c:if>
                    <c:if test="${sessionScope.userid != null }">
                    <li><a href="${path}/order/orderfinal.do"><i class="fas fa-comment-alt"></i>&emsp;주문페이지</a></li>
                    </c:if>
                    <c:if test="${sessionScope.userid == null }">
                    <li><a href="${path}/join/btn.do"><i class="fas fa-check-circle"></i>&emsp;회원가입</a></li>
                    </c:if>
                    <c:if test="${sessionScope.userid != null }">
                    <li><a href="${path}/join/personalEidt.do"><i class="fas fa-user-cog"></i>&emsp;개인 페이지</a></li>
                    </c:if>
                    <li><a href="${path}/board/list.do"><i class="fas fa-clipboard-list"></i>&emsp;공지사항</a></li>
                     <li><a href="${path}/qna/list.do"><i class="fas fa-headset"></i>&emsp;고객센터</a></li>
                     <li><a href="#" class="search-nav"><i class="fas fa-search"></i>&emsp;검색</a>
                     </li>
                </ul>
            </nav>
            <!-- Button Group -->
            
            
            <!-- Cart Menu -->
             <div class="cart-fav-search mb-100">
                
            </div>
            
            
            
            <!-- Social Button -->
            <div class="social-info d-flex justify-content-between">
            
            
            
            
            </div>
        </header>
        <!-- Header Area End -->