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
    <title>Amado - Furniture Ecommerce Template | Shop</title>
    <%@ include file="../js/header.jsp" %>
    <script type="text/javascript">
    function list(page){
    	location.href="${path}/shop/product/list.do?curPage="+page;
    } 
    
    function chair(page){
    	location.href="${path}/shop/product/chair.do?curPage="+page;
    } 
    
    function bed(page){
    	location.href="${path}/shop/product/bed.do?curPage="+page;
    } 
    
    function Funiture(page){
    	location.href="${path}/shop/product/Funiture.do?curPage="+page;
    } 
    
    function Table(page){
    	location.href="${path}/shop/product/Table.do?curPage="+page;
    } 
    
    function Homedeco(page){
    	location.href="${path}/shop/product/Homedeco.do?curPage="+page;
    }
    
    function Carpet(page){
    	location.href="${path}/shop/product/Carpet.do?curPage="+page;
    } 
    </script>
    
  
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

        <div class="shop_sidebar_area">

            <!-- ##### Single Widget ##### -->
            <div class="widget catagory mb-50">
                <!-- Widget Title -->
                <h6 class="widget-title mb-30">Catagories</h6>

                <!--  Catagories  -->
               <div class="catagories-menu">
                    <ul>
                 <li>
                 <form name="form1" method="post" action="${path}/shop/product/list.do">
                 <button type="submit" class="btn btn-default btn-block">All</button>
                  </form>
                 </li> 
                 <br>
                 <li>
                  <form name="form1" method="post" action="${path}/shop/product/bed.do">
                  <input type="hidden" name="keyword" value="침대">
                  <button type="submit" class="btn btn-default btn-block">Bed</button>
                   </form>
                 </li>
                 <br>
                 <li>
                  <form name="form1" method="post" action="${path}/shop/product/chair.do">
                  <input type="hidden" name="keyword" value="의자">
                  <button type="submit" class="btn btn-default btn-block">Chair</button>
                   </form>
                 </li> 
                 <br>
                 <li>
                  <form name="form1" method="post" action="${path}/shop/product/Furniture.do">
                  <input type="hidden" name="keyword" value="가구">
                  <button type="submit" class="btn btn-default btn-block">Furniture</button>
                   </form>
                 </li>    
                 <br>   
                                  <li>
                  <form name="form1" method="post" action="${path}/shop/product/Table.do">
                  <input type="hidden" name="keyword" value="테이블">
                  <button type="submit" class="btn btn-default btn-block">Table</button>
                   </form>
                 </li> 
                 <br>
                                  <li>
                  <form name="form1" method="post" action="${path}/shop/product/Homedeco.do">
                  <input type="hidden" name="keyword" value="홈데코">
                  <button type="submit" class="btn btn-default btn-block">Home Deco</button>
                   </form>
                 </li> 
                 <br>
                                  <li>
                  <form name="form1" method="post" action="${path}/shop/product/Carpet.do">
                  <input type="hidden" name="keyword" value="카펫">
                  <button type="submit" class="btn btn-default btn-block">Carpet</button>
                   </form>
                 </li>                  
                      
                    </ul>
                     
                </div>          
            </div>


        </div>

        <div class="amado_product_area section-padding-100">
            <div class="container-fluid">

                <div class="row">
                    <div class="col-12">
                        <div class="product-topbar d-xl-flex align-items-end justify-content-between">
                            <!-- Total Products -->
                            <div class="total-products">
                            </div>
                            <!-- Sorting -->
                            <div class="product-sorting d-flex">
                                <div class="sort-by-date d-flex align-items-center mr-15">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                

                <div class="row">
      <c:forEach var="row" items="${map.list}">
                    <!-- Single Product Area -->
                    
                    <div class="col-12 col-sm-6 col-md-12 col-xl-6">
                  
                        <div class="single-product-wrapper">
                       
                      
                            <!-- Product Image -->
                            <div class="product-img">
                                <img src="${path}/img/product-img/${row.pimg}" alt="" style="width: 460px; height: 571px">
                                <!-- Hover Thumb -->
                                <img class="hover-img" src="${path}/img/product-img/${row.pimg}" alt="">
                            </div>

                            <!-- Product Description -->
                            <div class="product-description d-flex align-items-center justify-content-between">
                                <!-- Product Meta Data -->
                                <div class="product-meta-data">
                                    <div class="line"></div>
                                    <p class="product-price">${row.pprice}원</p>
                                    <a href="${path}/shop/product/detail/${row.pnum}">
                                        <h6>${row.pname}</h6>
                                    </a>
                                </div>
                                <!-- Ratings & Cart -->
                                <div class="ratings-cart text-right">
                                    <div class="ratings">
                                        <i class="fa fa-star" aria-hidden="true"></i>
                                        <i class="fa fa-star" aria-hidden="true"></i>
                                        <i class="fa fa-star" aria-hidden="true"></i>
                                        <i class="fa fa-star" aria-hidden="true"></i>
                                        <i class="fa fa-star" aria-hidden="true"></i>
                                    </div>
                                    <div class="cart">
                                        <a href="${path}/cart.html" data-toggle="tooltip" data-placement="left" title="Add to Cart"><img src="${path}/img/core-img/cart.png" alt=""></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
  </c:forEach>
</div>
                <div class="row">
                    <div class="col-12">
                        <!-- Pagination -->
                        <c:choose>
             <c:when test="${map.keyword == '침대'}">
                        <nav aria-label="navigation">
            <ul class="pagination justify-content-end mt-50">
			<c:if test="${map.pager.curBlock > 1}">
				 <li class="page-item"><a class="page-link" href="#" onclick="bed('1')">◀</a></li>
			</c:if>
			<c:if test="${map.pager.curBlock > 1}">
				<li class="page-item"><a class="page-link" href="#" onclick="bed('${map.pager.prevPage}')">
				◁</a></li>
			</c:if>
			<c:forEach var="num" 
				begin="${map.pager.blockBegin}"
				end="${map.pager.blockEnd}">
				<c:choose>
					<c:when test="${num == map.pager.curPage}">
					<!-- 현재 페이지인 경우 하이퍼링크 제거 -->
						<li class="page-item"><a class="page-link" href="#" style="color: orange;">${num}</a></li>
					</c:when>
					<c:otherwise>
						<li class="page-item"><a class="page-link" href="#" onclick="bed('${num}')">${num}</a></li>
					</c:otherwise>
				</c:choose>
			</c:forEach>
			<c:if test="${map.pager.curBlock < map.pager.totBlock}">
				<li class="page-item"><a class="page-link" href="#" 
				onclick="bed('${map.pager.nextPage}')">▷</a></li>
			</c:if>
			<c:if test="${map.pager.curPage < map.pager.totPage}">
				<li class="page-item"><a class="page-link" href="#" 
				onclick="bed('${map.pager.totPage}')">▶</a></li>
			</c:if>
			</ul>
                        </nav>
                 </c:when>
                 
                 <c:when test="${map.keyword == '의자'}">
                        <nav aria-label="navigation">
            <ul class="pagination justify-content-end mt-50">
			<c:if test="${map.pager.curBlock > 1}">
				 <li class="page-item"><a class="page-link" href="#" onclick="chair('1')">◀</a></li>
			</c:if>
			<c:if test="${map.pager.curBlock > 1}">
				<li class="page-item"><a class="page-link" href="#" onclick="chair('${map.pager.prevPage}')">
				◁</a></li>
			</c:if>
			<c:forEach var="num" 
				begin="${map.pager.blockBegin}"
				end="${map.pager.blockEnd}">
				<c:choose>
					<c:when test="${num == map.pager.curPage}">
					<!-- 현재 페이지인 경우 하이퍼링크 제거 -->
						<li class="page-item"><a class="page-link" href="#" style="color: orange;">${num}</a></li>
					</c:when>
					<c:otherwise>
						<li class="page-item"><a class="page-link" href="#" onclick="chair('${num}')">${num}</a></li>
					</c:otherwise>
				</c:choose>
			</c:forEach>
			<c:if test="${map.pager.curBlock < map.pager.totBlock}">
				<li class="page-item"><a class="page-link" href="#" 
				onclick="chair('${map.pager.nextPage}')">▷</a></li>
			</c:if>
			<c:if test="${map.pager.curPage < map.pager.totPage}">
				<li class="page-item"><a class="page-link" href="#" 
				onclick="chair('${map.pager.totPage}')">▶</a></li>
			</c:if>
			</ul>
                        </nav>
                 </c:when>
                 
                                  <c:when test="${map.keyword == '가구'}">
                        <nav aria-label="navigation">
            <ul class="pagination justify-content-end mt-50">
			<c:if test="${map.pager.curBlock > 1}">
				 <li class="page-item"><a class="page-link" href="#" onclick="Furniture('1')">◀</a></li>
			</c:if>
			<c:if test="${map.pager.curBlock > 1}">
				<li class="page-item"><a class="page-link" href="#" onclick="Furniture('${map.pager.prevPage}')">
				◁</a></li>
			</c:if>
			<c:forEach var="num" 
				begin="${map.pager.blockBegin}"
				end="${map.pager.blockEnd}">
				<c:choose>
					<c:when test="${num == map.pager.curPage}">
					<!-- 현재 페이지인 경우 하이퍼링크 제거 -->
						<li class="page-item"><a class="page-link" href="#" style="color: orange;">${num}</a></li>
					</c:when>
					<c:otherwise>
						<li class="page-item"><a class="page-link" href="#" onclick="Furniture('${num}')">${num}</a></li>
					</c:otherwise>
				</c:choose>
			</c:forEach>
			<c:if test="${map.pager.curBlock < map.pager.totBlock}">
				<li class="page-item"><a class="page-link" href="#" 
				onclick="Furniture('${map.pager.nextPage}')">▷</a></li>
			</c:if>
			<c:if test="${map.pager.curPage < map.pager.totPage}">
				<li class="page-item"><a class="page-link" href="#" 
				onclick="Furniture('${map.pager.totPage}')">▶</a></li>
			</c:if>
			</ul>
                        </nav>
                 </c:when>
                 
                                                   <c:when test="${map.keyword == '테이블'}">
                        <nav aria-label="navigation">
            <ul class="pagination justify-content-end mt-50">
			<c:if test="${map.pager.curBlock > 1}">
				 <li class="page-item"><a class="page-link" href="#" onclick="Table('1')">◀</a></li>
			</c:if>
			<c:if test="${map.pager.curBlock > 1}">
				<li class="page-item"><a class="page-link" href="#" onclick="Table('${map.pager.prevPage}')">
				◁</a></li>
			</c:if>
			<c:forEach var="num" 
				begin="${map.pager.blockBegin}"
				end="${map.pager.blockEnd}">
				<c:choose>
					<c:when test="${num == map.pager.curPage}">
					<!-- 현재 페이지인 경우 하이퍼링크 제거 -->
						<li class="page-item"><a class="page-link" href="#" style="color: orange;">${num}</a></li>
					</c:when>
					<c:otherwise>
						<li class="page-item"><a class="page-link" href="#" onclick="Table('${num}')">${num}</a></li>
					</c:otherwise>
				</c:choose>
			</c:forEach>
			<c:if test="${map.pager.curBlock < map.pager.totBlock}">
				<li class="page-item"><a class="page-link" href="#" 
				onclick="Table('${map.pager.nextPage}')">▷</a></li>
			</c:if>
			<c:if test="${map.pager.curPage < map.pager.totPage}">
				<li class="page-item"><a class="page-link" href="#" 
				onclick="Table('${map.pager.totPage}')">▶</a></li>
			</c:if>
			</ul>
                        </nav>
                 </c:when>
                 <c:when test="${map.keyword == '홈데코'}">
                        <nav aria-label="navigation">
            <ul class="pagination justify-content-end mt-50">
			<c:if test="${map.pager.curBlock > 1}">
				 <li class="page-item"><a class="page-link" href="#" onclick="Homedeco('1')">◀</a></li>
			</c:if>
			<c:if test="${map.pager.curBlock > 1}">
				<li class="page-item"><a class="page-link" href="#" onclick="Homedeco('${map.pager.prevPage}')">
				◁</a></li>
			</c:if>
			<c:forEach var="num" 
				begin="${map.pager.blockBegin}"
				end="${map.pager.blockEnd}">
				<c:choose>
					<c:when test="${num == map.pager.curPage}">
					<!-- 현재 페이지인 경우 하이퍼링크 제거 -->
						<li class="page-item"><a class="page-link" href="#" style="color: orange;">${num}</a></li>
					</c:when>
					<c:otherwise>
						<li class="page-item"><a class="page-link" href="#" onclick="Homedeco('${num}')">${num}</a></li>
					</c:otherwise>
				</c:choose>
			</c:forEach>
			<c:if test="${map.pager.curBlock < map.pager.totBlock}">
				<li class="page-item"><a class="page-link" href="#" 
				onclick="Homedeco('${map.pager.nextPage}')">▷</a></li>
			</c:if>
			<c:if test="${map.pager.curPage < map.pager.totPage}">
				<li class="page-item"><a class="page-link" href="#" 
				onclick="Homedeco('${map.pager.totPage}')">▶</a></li>
			</c:if>
			</ul>
                        </nav>
                 </c:when>
                                                                  <c:when test="${map.keyword == '카펫'}">
                        <nav aria-label="navigation">
            <ul class="pagination justify-content-end mt-50">
			<c:if test="${map.pager.curBlock > 1}">
				 <li class="page-item"><a class="page-link" href="#" onclick="Carpet('1')">◀</a></li>
			</c:if>
			<c:if test="${map.pager.curBlock > 1}">
				<li class="page-item"><a class="page-link" href="#" onclick="Carpet('${map.pager.prevPage}')">
				◁</a></li>
			</c:if>
			<c:forEach var="num" 
				begin="${map.pager.blockBegin}"
				end="${map.pager.blockEnd}">
				<c:choose>
					<c:when test="${num == map.pager.curPage}">
					<!-- 현재 페이지인 경우 하이퍼링크 제거 -->
						<li class="page-item"><a class="page-link" href="#" style="color: orange;">${num}</a></li>
					</c:when>
					<c:otherwise>
						<li class="page-item"><a class="page-link" href="#" onclick="Carpet('${num}')">${num}</a></li>
					</c:otherwise>
				</c:choose>
			</c:forEach>
			<c:if test="${map.pager.curBlock < map.pager.totBlock}">
				<li class="page-item"><a class="page-link" href="#" 
				onclick="Carpet('${map.pager.nextPage}')">▷</a></li>
			</c:if>
			<c:if test="${map.pager.curPage < map.pager.totPage}">
				<li class="page-item"><a class="page-link" href="#" 
				onclick="Carpet('${map.pager.totPage}')">▶</a></li>
			</c:if>
			</ul>
                        </nav>
                 </c:when>
             
                 <c:otherwise>
                 <nav aria-label="navigation">
            <ul class="pagination justify-content-end mt-50">
			<c:if test="${map.pager.curBlock > 1}">
				 <li class="page-item"><a class="page-link" href="#" onclick="list('1')">◀</a></li>
			</c:if>
			<c:if test="${map.pager.curBlock > 1}">
				<li class="page-item"><a class="page-link" href="#" onclick="list('${map.pager.prevPage}')">
				◁</a></li>
			</c:if>
			<c:forEach var="num" 
				begin="${map.pager.blockBegin}"
				end="${map.pager.blockEnd}">
				<c:choose>
					<c:when test="${num == map.pager.curPage}">
					<!-- 현재 페이지인 경우 하이퍼링크 제거 -->
						<li class="page-item"><a class="page-link" href="#" style="color: orange;">${num}</a></li>
					</c:when>
					<c:otherwise>
						<li class="page-item"><a class="page-link" href="#" onclick="list('${num}')">${num}</a></li>
					</c:otherwise>
				</c:choose>
			</c:forEach>
			<c:if test="${map.pager.curBlock < map.pager.totBlock}">
				<li class="page-item"><a class="page-link" href="#" 
				onclick="list('${map.pager.nextPage}')">▷</a></li>
			</c:if>
			<c:if test="${map.pager.curPage < map.pager.totPage}">
				<li class="page-item"><a class="page-link" href="#" 
				onclick="list('${map.pager.totPage}')">▶</a></li>
			</c:if>
			</ul>
                        </nav>
                 
                 </c:otherwise>
                 
                </c:choose>
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
                       <!--  <form action="#" method="post">
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