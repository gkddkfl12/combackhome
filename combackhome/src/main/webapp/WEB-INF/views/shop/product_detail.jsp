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
    <title>Amado - Furniture Ecommerce Template | Product Details</title>
<%@ include file="../js/header.jsp" %>
    <!-- Favicon  -->
    <link rel="icon" href="${path}/img/core-img/favicon.ico">

    <!-- Core Style CSS -->
    <link rel="stylesheet" href="${path}/css/core-style.css">
    <link rel="stylesheet" href="${path}/style.css">

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
      <%@include file="../js/nav.jsp" %>

        <!-- Product Details Area Start -->
        <div class="single-product-area section-padding-100 clearfix">
            <div class="container-fluid">

                <div class="row">
                    <div class="col-12">
                        <nav aria-label="breadcrumb">
                        </nav>
                    </div>
                </div>

                <div class="row">
                    <div class="col-12 col-lg-7">
                        <div class="single_product_thumb">
                           <div id="product_details_slider" class="carousel slide" data-ride="carousel"> 
                               <%--  <ol class="carousel-indicators">
                                    <li class="active" data-target="#product_details_slider" data-slide-to="0" style="background-image: url(${path}/img/product-img/${dto.pimg});">
                                    </li>
                                    <li data-target="#product_details_slider" data-slide-to="1" style="background-image: url(${path}/img/product-img/${dto.pimg});">
                                    </li>
                                    <li data-target="#product_details_slider" data-slide-to="2" style="background-image: url(${path}/img/product-img/${dto.pimg});">
                                    </li>
                                    <li data-target="#product_details_slider" data-slide-to="3" style="background-image: url(${path}/img/product-img/${dto.pimg});">
                                    </li>
                                </ol> --%>
                                <div class="carousel-inner">
                                    <div class="carousel-item active">
                                        <a class="gallery_img" href="${path}/img/product-img/${dto.pimg}">
                                            <img class="d-block w-100" src="${path}/img/product-img/${dto.pimg}" alt="First slide">
                                        </a>
                                    </div>
                                    <div class="carousel-item">
                                        <a class="gallery_img" href="${path}/img/product-img/${dto.pimg}">
                                            <img class="d-block w-100" src="${path}/img/product-img/${dto.pimg}" alt="Second slide">
                                        </a>
                                    </div>
                                    <div class="carousel-item">
                                        <a class="gallery_img" href="${path}/img/product-img/${dto.pimg}">
                                            <img class="d-block w-100" src="${path}/img/product-img/${dto.pimg}" alt="Third slide">
                                        </a>
                                    </div>
                                    <div class="carousel-item">
                                        <a class="gallery_img" href="${path}/img/product-img/${dto.pimg}">
                                            <img class="d-block w-100" src="${path}/img/product-img/${dto.pimg}" alt="Fourth slide">
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-12 col-lg-5">
                        <div class="single_product_desc">
                        <form method="post" id="oc" name="oc">
                            <!-- Product Meta Data -->
                            <div class="product-meta-data">
                                <div class="line"></div>
                                <p class="product-price">${dto.pprice}</p>
                                <a href="${path}/product-details.html">
                                    <h6>${dto.pname}</h6>
                                </a>
                                <!-- Ratings & Review -->
                                <div class="ratings-review mb-15 d-flex align-items-center justify-content-between">
                                    <div class="ratings">
                                        <i class="fa fa-star" aria-hidden="true"></i>
                                        <i class="fa fa-star" aria-hidden="true"></i>
                                        <i class="fa fa-star" aria-hidden="true"></i>
                                        <i class="fa fa-star" aria-hidden="true"></i>
                                        <i class="fa fa-star" aria-hidden="true"></i>
                                    </div>
                                </div>
                                <!-- Avaiable -->
                                <p class="avaibility"><i class="fa fa-circle"></i> In Stock</p>
                            </div>

                            <div class="short_overview my-5">
                                <p>${dto.pdtail}</p>
                            </div>

                            <!-- Add to Cart Form -->
                           <!--  <form class="cart clearfix" method="post"> -->
                                <div class="cart-btn d-flex mb-50">
                                    <p>수량</p>
                                    <div class="quantity">
                                        <span class="qty-minus" onclick="var effect = document.getElementById('qty'); var qty = effect.value; if( !isNaN( qty ) &amp;&amp; qty &gt; 1 ) effect.value--;return false;"><i class="fa fa-caret-down" aria-hidden="true"></i></span>
                                        <input type="number" class="qty-text" id="qty" step="1" min="1" max="300" name="camount" value="1">
                                        <span class="qty-plus" onclick="var effect = document.getElementById('qty'); var qty = effect.value; if( !isNaN( qty )) effect.value++;return false;"><i class="fa fa-caret-up" aria-hidden="true"></i></span>
                                    </div>
                                </div>
                                <c:if test="${sessionScope.userid !=null }">
                                <button type="button" id="addCarts" value="5" class="btn btn-outline-secondary" style="padding: 18px; width: 210px; margin-left: 20px;">카트에 담기</button>
                                <button type="button" id="addOrder" value="5" class="btn btn-outline-success" style="padding: 18px; width: 210px; margin-left: 20px;">주문하기</button>
 								</c:if>  
 								<c:if test="${sessionScope.userid ==null }">
 									<div class="text-center" style="color:red;">로그인 후 구매하세요</div>
 								</c:if> 
 								<input type="hidden" name="pnum" value="${dto.pnum }">                         
                            </form>
							<script type="text/javascript">
								$("#addCarts").click(function(){
									document.oc.action="${path}/carts/insert.do";
									document.oc.submit();
								});
								$("#addOrder").click(function(){
									document.oc.action="${path}/order/onlyOrder.do";
									document.oc.submit();
								});
							</script>
                           <!--  </form> -->
                            <div class="cart-btn d-flex mb-50">
                            <form method="post" action="${path}/shop/product/memoinsert.do">
                            
                            <br>
                            <br>
                            
                        
                                    
                                    <br>
                                    <br>
                            
                   <c:set var="dto2" value="${map.memo }"/>
                           <c:if test="${empty sessionScope.userid}">
                            <h5 style="color: red;">로그인 후 리뷰 작성및 확인이 가능합니다.</h5>
                           </c:if> 
                            	
	
	
	<c:if test="${not empty sessionScope.userid}">
	
	   <%--  <div class="review">
<a href="${path}/#" style="font-size: 1.3em; font-weight: bold; text-align: center;">${sessionScope.name}&nbsp;님의 상품 리뷰 작성하기</a>
         </div> --%>

	&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
	작성자 : <input  size="10" placeholder=" ${sessionScope.userid}" readonly=" ${sessionScope.userid}" style="font-style: italic;"><br>
	<br>
	<%-- <form method="post" action="${path}/shop/product/memoinsert.do"> --%>
	<textarea rows="3" cols="50" name="memo" id="memo" placeholder="후기를 작성해주세요."></textarea>
	<input type="hidden" name="pnum" value="${dto.pnum}">
	<input type="submit" value="확인" >
	<br>
	<br>
	
	<!-- </form> -->
	
	<table class="table table-striped">
	<tr style="text-align: center;" class="table dark">
		<!-- <th>작성번호</th> -->
		<th>작성자</th>
		<th>구매후기</th>
		<th>제품번호</th>
		<th>작성날짜</th>
		<!-- <th></th> -->
	</tr>
	
<c:forEach var="row" items="${dto2}">
	<tr style="text-align: center;">
	
		<%-- <td>${row.idx}
		</td> --%>
		<td>${row.userid}</td>
		<td><%-- <a href="#" onclick="memo_view('${row.idx}')"> --%>${row.memo}</td>
			<td>${row.pnum}</td>
		<td><fmt:formatDate value="${row.post_date}"
			pattern="yyyy-MM-dd" /> </td>
			
		<%-- 	<td>
			 <c:if test="${not empty sessionScope.userid}">
			 <input type="button" value="삭제" id="btnDelete"  class="btn btn-outline-danger">
                           </c:if>
                           </td> --%>
			
	</tr>
</c:forEach>
</table>
                            </c:if>
                            </form>
                             </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Product Details Area End -->
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
                        <!-- <form action="#" method="post">
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
        <%@include file="../js/footer.jsp" %>
    </footer>
    <!-- ##### Footer Area End ##### -->

    

</body>

</html>