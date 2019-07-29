<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="description" content="">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- The above 4 meta tags *must* come first in the head; any other head content must come *after* these tags -->

    <!-- Title  -->
    <title>Amado - Furniture Ecommerce Template | Home</title>
	<%@ include file="js/header.jsp" %>
	
	
	<c:if test="${param.message == 'nologin' }">
		<script type="text/javascript">
			alter()
		</script>		
	</c:if>
    <!-- Favicon  -->
    <link rel="icon" href="${path}/img/core-img/favicon.ico">

    <!-- Core Style CSS -->
    <link rel="stylesheet" href="${path}/css/core-style.css">
    <link rel="stylesheet" href="${path}/style.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css">
    
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


   <%@ include file="js/nav.jsp" %>
   
     <div class="products-catagories-area clearfix">
            <div class="amado-pro-catagory clearfix">
<c:forEach var="row" items="${list}">
                <!-- Single Catagory -->
                <div class="single-products-catagory clearfix">
                    <a href="${path}/shop/product/detail/${row.pnum}">
                        <img src="${path}/img/product-img/${row.pimg}" alt="" style="width: 533px; height: 533px;">
                        <!-- Hover Content -->
                        <div class="hover-content">
                            <div class="line"></div>
                            <p>${row.pprice}원</p>
                            <h4>${row.pname}</h4>
                        </div>
                    </a>
                </div>

</c:forEach>
            </div>
        </div>
        <!-- Product Catagories Area End -->
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