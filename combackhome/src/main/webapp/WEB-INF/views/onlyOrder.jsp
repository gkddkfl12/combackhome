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
		<%@ include file="js/session_check.jsp" %>
    <!-- Favicon  -->
    <link rel="icon" href="${path }img/core-img/favicon.ico">

    <!-- Core Style CSS -->
    <link rel="stylesheet" href="${path }/css/core-style.css">
    <link rel="stylesheet" href="${path }/style.css">
<script type="text/javascript">
function order(){
	if($("#sm").val()!=0){
	alert("주문이 완료되었습니다.");
	document.user.action="${path}/order/orderUpdateCarts.do";
	document.user.submit();
	}else{
		alert("상품이 존재하지 않습니다.");
		//history.back();		
	}
}
$(function () {
	$('[data-toggle="tooltip"]').tooltip()
})
</script>
<style>
  .content-table{
   border-collapse: collapse;
   margin:25px 0;
   font-size:1.2em;
   min-width:1000px;
   border-radius: 10px 10px 0 0;
   overflow:hidden;
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

              .content-table tbody td.active-row{
                font-weight:bold;
                color:#009879;
              }
              
              input[type=text]{
  width:70%;
  border:1px solid #aaa;
  border-radius:4px;
  outline:none;
  padding:6px;
  box-sizing:border-box;
}
  </style>

</head>

<body>
   <%@ include file="js/nav.jsp" %>

         <div class="cart-table-area section-padding-100"> 
             <div class="container-fluid"> 
                 <div class="row"> 
                    <div class="col-12 col-lg-10"> 
                         <div class="checkout_details_area mt-50 clearfix"> 

                             <div class="cart-title"> 
                             <h2 style="text-align: center; font-weight: bold;">  <img src="${path}/img/core-img/logo.png" alt="" style="">&emsp;장바구니</h2>
                                
                            </div>
                            <form action="#" method="post" id="user" name="user">
							 <table class="content-table"> 
							<thead>
                                	<tr>
                                		<th style="font-weight: bold;">상품명</th>
                                		<th style="font-weight: bold;">제품가격</th>
                                		<th style="font-weight: bold;">수량</th>
                                		<th style="font-weight: bold;">주문취소</th>
                                	</tr>
                                	</thead>
                                	
                                	<tbody>
                                	<c:forEach var="row" items="${map.list}">
                                	<tr>
                                		<td class="active-row" style="font-weight: bold;">${row.pname }</td>
                                		<td style="font-weight: bold;">${row.pprice }</td>
                                		<td style="font-weight: bold;">${row.camount }</td>
                                		<td style="font-weight: bold;">
                                		<a href="${path}/carts/OOdelete.do?cnum=${row.cnum}" class="btn btn-outline-info">주문취소</a>
                                		</td>
                                	</tr>
                                	</c:forEach>
                                	</tbody>
                                	
                            </table>   
                            </form>
                           <%--  <form action="#" method="post" id="user" name="user">
                                <div class="row">
                                    <div class="col-md-6 mb-3">
                                       <input type="text" class="form-control" id="name" name="name" value="${dto.name}" disabled="disabled">
                                    </div>
                                    <div class="col-md-6 mb-3">
                                        <input type="text" class="form-control" id="userid" name="userid" value="${dto.userid}" disabled="disabled">
                                    </div>
                                    <div class="col-6 mb-3">
                                        <input type="text" class="form-control" id="address" name="address" value="${dto.address}">
                                    </div>
                                    <div class="col-6 mb-3">
                                        <input type="text" class="form-control" id="zipcode" name="zipcode" value="${dto.zipcode}">
                                    </div>
                                    <div class="col-12 mb-3">
                                        <input type="text" class="form-control mb-3" id="email" name="email" value="${dto.email}">
                                    </div>
                                    <div class="col-12 mb-3">
                                    	<h5>요청사항</h5>
                                        <textarea name="comment" class="form-control w-100" id="ome" name="ome" cols="30" rows="10" placeholder="요구사항을 입력하여 주십시오"></textarea>
                                    </div>
                                </div>
                                </form>  --%>
                        </div>
                    </div>
                    
                    
                    
                    
                    
                    
                    
                    <div class="col-12 col-lg-2">
                        <div class="cart-summary" style="border-style: double; position: fixed; border-radius: 8px;">
                            <h5 style="text-align: center;">장바구니 내역</h5>
                            <ul class="summary-table">
                                <li><span>총 금액</span>&emsp;<span ><input type="text" id="sm" value="${map.sumMoney }" disabled="disabled">원</span></li>
                                <c:if test="${map.count > 0 }">
                                <li><span>delivery:</span> <span>${map.fee }원</span></li>
                                </c:if>
                                <c:if test="${map.count == 0 }">
                                <li><span>delivery:</span> <span>0원</span></li>
                                </c:if>
                                <c:if test="${map.count > 0 }">
                                <li><span>total:</span> <span>${map.sum}원</span></li>
                                </c:if>
                                <c:if test="${map.count == 0 }">
                                <li><span>delivery:</span> <span>0원</span></li>
                                </c:if>
                                
                            </ul>
                            <div class="cart-btn mt-100">
                            <a href="#" onclick="order()" class="btn btn-outline-success" style="padding: 18px; width: 210px; margin-left: 20px;"
                                data-toggle="tooltip" data-placement="bottom" title="3만원 이상 주문시 무료배송!">주문완료</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- ##### Footer Area Start ##### -->
    <footer class="footer_area clearfix">
       <%@ include file="js/footer.jsp" %>
    </footer>
    <!-- ##### Footer Area End ##### -->

    

</body>

</html>