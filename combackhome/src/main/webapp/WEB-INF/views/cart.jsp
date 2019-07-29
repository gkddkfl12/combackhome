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
    <title>Amado - Furniture Ecommerce Template | Cart</title>
	<%@ include file="js/header.jsp" %>
	<%@ include file="js/session_check.jsp" %>
    <!-- Favicon  -->
    <link rel="icon" href="${path}/img/core-img/favicon.ico">

    <!-- Core Style CSS -->
    <link rel="stylesheet" href="${path}/css/core-style.css">
    <link rel="stylesheet" href="${path}/style.css">

<script type="text/javascript">
$(function(){
	/* $("#btndelete").click(function(){
		if(confirm("삭제 하시겠습니까?")){
		location.href="${path}/carts/delete.do?cnum";
		}
	});  */
	$("#btnClean").click(function(){
		if(confirm("장바구니를 비우시겠습니까?")){
			location.href="${path}/carts/deleteAll.do";
		}
	});
});	

$(function () {
	$('[data-toggle="tooltip"]').tooltip()
})
</script>
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

  </style>
</head>

<body>
<%@ include file="js/nav.jsp" %>
  

        <div class="cart-table-area section-padding-100">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-12 col-lg-10">
                        <div class="cart-title mt-50">
                            <h2 style="text-align: center; font-weight: bold;"> <img src="${path}/img/core-img/logo.png" alt="" >&emsp;Shopping Cart</h2>
                        </div>
						<div>
							상품갯수<span style="color:red;">${map.count}</span>개
						</div>	
                        <div class="cart-table clearfix">
                          <form method="post" id="maincart" name="maincart" action="${path}/carts/update.do">	
                            <table class="content-table">
                                <thead>
                                    <tr>
                                        <th style="font-size: 1.2em; font-weight: bold;">제품이미지</th>
                                        <th style="font-size: 1.2em; font-weight: bold;">상품명</th>
                                        <th style="font-size: 1.2em; font-weight: bold;">제품 가격</th>
                                        <th style="font-size: 1.2em; font-weight: bold;">수량</th>
                                        <th style="font-size: 1.2em; font-weight: bold;">삭제<th>
                                    </tr>
                                </thead>
                                <tbody>
                               <c:if test="${map.count >0 }">
                                <c:forEach var="plist" items="${map.list}">
                                    <tr>
                                        <td class="cart_product_img">
                                            <a href="#"><img src="${path}/img/product-img/${plist.pimg}" alt="Product" style="width: 30%; height: 30%;"></a>
                                        </td>
                                        <td class="cart_product_desc">
                                        	
                                            <h5 style="font-weight: bold;">${plist.pname }</h5>
                                        </td>
                                        <td class="price">
                                            <span style="font-weight: bold;">${plist.pprice}원</span>
                                        </td>
                                        <td class="qty" style="font-weight: bold;">
                                            <div class="qty-btn d-flex">
                                                <div class="quantity" >
                                                	<input type="hidden" name="cnum" value="${plist.cnum}">
                                                    <input name="camount" type="number" value="${plist.camount}">
                                                </div>
                                            </div>
                                        </td>
                                        <td><a href="${path}/carts/delete.do?cnum=${plist.cnum}" id="btndelete"><button type="button" class="btn btn-outline-info">삭제</button></a></td>
                                    </tr>
                                    </c:forEach>
                                   </c:if>
                                  <c:if test="${map.count == 0 }">
                                   <tr style="text-align: center;" >
                                   		<th colspan="5"><em>상품이 존재하지 않습니다.</em></th>
                                   </tr>
                                   </c:if>
                                </tbody>
                             
                            </table>
                            &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
                            
                            <c:choose>
                            <c:when test="${map.count == 0 }">
                              </c:when>
                              
                              <c:otherwise> 
                                  	 <button  name="cartUpdate" class="btn btn-outline-secondary" style="padding: 24px;">장바구니 수정</button>&emsp;&emsp;
                                  	 </c:otherwise>
                                  	 </c:choose>
                                     <button type="button" id="btnClean" class="btn btn-outline-secondary" style="padding: 24px;">장바구니 비우기</button>&emsp;&emsp;
                                     <a href="${path}/shop/product/list.do" class="btn btn-outline-secondary" style="padding: 24px;">상품목록</a>
                                   
                            </form>
                        </div>
                    </div>
                    <div class="col-12 col-lg-2" id="floatdiv">
                        <div class="cart-summary" style="border-style: double; position: fixed; border-radius: 8px;">
                            <h5 style="text-align: center;">장바구니 내역</h5>
                            <ul class="summary-table">
                                <li><span>제품가격:</span> <span>${map.sumMoney }</span></li>
                              <c:if test="${map.count == 0 }">
                                <li><span>배송료:</span> <span>0</span></li>
                              </c:if>
                              <c:if test="${map.count > 0 }">
                                <li><span>배송료:</span> <span>${map.fee }</span></li>
                              </c:if>
                              <c:if test="${map.count == 0 }">
                                <li><span>총액:</span> <span>0</span></li>
                              </c:if>
                              <c:if test="${map.count > 0 }">
                                <li><span>총액:</span> <span>${map.sum}</span></li>
                              </c:if>
                            </ul>
                            <div class="cart-btn mt-100">
                                <a href="${path}/order/list.do" class="btn btn-outline-success" style="padding: 18px; width: 210px;"
                                data-toggle="tooltip" data-placement="bottom" title="3만원 이상 주문시 무료배송!">주문완료</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- ##### Main Content Wrapper End ##### -->

   

    <!-- ##### Footer Area Start ##### -->
    <footer class="footer_area clearfix">
     <%@ include file="js/footer.jsp" %>
    </footer>


</body>

</html>