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
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css">
    <script type="text/javascript">
    function list(page){
    	location.href="${path}/shop/product/list_admin.do?curPage="+page;
    } 
    
    function chair(page){
    	location.href="${path}/shop/product/chair.do?curPage="+page;
    } 
    
    function bed(page){
    	location.href="${path}/shop/product/bed.do?curPage="+page;
    } 
   
    
    </script>
    
  
    <!-- Favicon  -->
    <link rel="icon" href="${path}/img/core-img/favicon.ico">

    <!-- Core Style CSS -->
    <link rel="stylesheet" href="${path}/css/core-style.css">
    <link rel="stylesheet" href="${path}/style.css">
<style>
.content-table{
   border-collapse: collapse;
   margin:25px 0;
   font-size:0.9em;
   min-width:1000px;
   border-radius: 10px 10px 0 0;
   overflow:visible;
   box-shadow: 0 0 2px rgba(0, 0, 0, 0.15);
}
.content-table thead tr{
    background-color:#009879;
    color:#ffffff;
    text-align:left;
    font-weight:bold;
  }
    .content-table th,
      .content-table td{
        padding:12px 15px;
      }
        .content-table tbody tr{
          border-bottom:1px solid #dddddd;

        }
          .content-table tbody tr:nth-of-type(even){
            background-color:#f3f3f3;
          }
            .content-table tbody tr:last-of-type{
              border-bottom:2px solid #009879;
            }

              .content-table tbody tr.active-row{
                font-weight:bold;
                color:#009879;
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

    body{
text-align: center;
margin: auto;
margin-top: 70px;


}

.heart{
transform: rotate(0deg);
animation: animate 4s linear infinite;
}

@keyframes animate
{
0%
{
  transform: rotate(0deg) scale(1);
}

20%
{
  transform: rotate(0deg) scale(.8);
}

40%
{
  transform: rotate(0deg) scale(1.2);
}

60%
{
  transform: rotate(0deg) scale(1);
}

80%
{
  transform: rotate(0deg) scale(1.3);
}

100%
{
  transform: rotate(0deg) scale(1);
}

}
    
  </style>

</head>

<body>

<c:if test="${sessionScope.userid != 'admin' }">

<div class="heart">
<i class="fas fa-exclamation-triangle fa-8x" style="color: red;">&nbsp;Warning</i>
</div>
<br>
<img src="${path}/shop/에러.jpg" width="400px;" height="600px;">
<p>관리자 계정 전용 페이지입니다. 오류가 지속될 시에 고객센터로 문의해주세요.</p>
<a href="${path}/qna/list.do"><button type="button" class="btn btn-outline-secondary">고객센터</button></a>

</c:if>

<c:if test="${sessionScope.userid == 'admin' }">
      <%@include file="../js/nav2.jsp" %>

        
        <div class="amado_product_area section-padding-100">
            <div class="container-fluid">

                <div class="row">
                    <div class="col-12">
                        <div class="product-topbar d-xl-flex align-items-end justify-content-between">
                            <!-- Total Products -->
                            <div class="total-products">
                                <div class="view d-flex">
                                </div>
                            </div>
                            <!-- Sorting -->
                            <div class="product-sorting d-flex">
                                <div class="sort-by-date d-flex align-items-center mr-15">
                                
                                    <form action="#" method="get">
                                    </form>
                                </div>
                                <div class="view-product d-flex align-items-center">
                                    
                                    <form action="#" method="get">
                                    </form>
                                    
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                

                <div class="row" style="margin-top: -120px;">
      
                  <div align="center">
                  <h2 style="text-align: center; margin-left: 160px; font-weight: bold;"> <img src="${path}/img/core-img/logo.png" alt="" style="">&emsp;상품관리</h2>
                  <c:forEach var="row" items="${map.list}">
                   <table style="width: 900px; text-align: center; margin-left: 300px;" class="content-table">
                    <tr>
                     <th style="font-size: 1.2em; font-weight: bold;">상품번호</th>
                     <th style="font-size: 1.2em; font-weight: bold;">상품이름</th>
                     <th style="font-size: 1.2em; font-weight: bold;">상품이미지</th>
                     <th style="font-size: 1.2em; font-weight: bold;">상품재고</th>
                     <th style="font-size: 1.2em; font-weight: bold;">상품가격</th>
                     <th style="font-size: 1.2em; font-weight: bold;">상품분류</th>
                     <th>&nbsp;</th>
                    </tr>
                    <tr>
                     <td style="font-size: 1.2em; font-weight: bold;">${row.pnum}</td>
                     <td style="font-size: 1.2em; font-weight: bold;">${row.pname}</td>
                     <td style="font-size: 1.2em; font-weight: bold;"><img src="${path}/img/product-img/${row.pimg}" width="50px;"></td>
                     <td style="font-size: 1.2em; font-weight: bold;">${row.pamount}</td>
                     <td style="font-size: 1.2em; font-weight: bold;">${row.pprice}</td>
                     <td style="font-size: 1.2em; font-weight: bold;">${row.pcata}</td>
                     <td style="font-size: 1.2em; font-weight: bold;"><a href="${path}/shop/product/edit/${row.pnum}"><button type="button" class="btn btn-outline-danger">수정</button></a></td>
                    </tr>
                   </table>
                   </c:forEach>  
                    <a href="${path}/shop/product/product_write.do"><button type="button"  class="btn btn-outline-primary" style="margin-left: 260px;">상품등록</button></a>                
                  </div>
  

</div>
                <div class="row">
                    <div class="col-8">
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
                      <!--   <form action="#" method="post">
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

    
</c:if>
</body>

</html>