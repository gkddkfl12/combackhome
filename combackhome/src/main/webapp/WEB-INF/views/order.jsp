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
                        <div class="checkout_details_area mt-50 clearfix">

                            <div class="cart-title">
                                <h2 style="text-align: center;"><img src="${path}/img/core-img/logo.png" alt="" style="">&emsp;주문</h2>
                                
                            </div>
							 <table class="content-table" style="margin-left: 130px;">
                                	<tr>
                                		<th style="font-size: 1.2em; font-weight: bold; width: 250px;">상품명</th>&emsp;&emsp;&emsp;
                                		<th style="font-size: 1.2em; font-weight: bold; width: 250px;">제품가격</th>&emsp;&emsp;&emsp;
                                		<th style="font-size: 1.2em; font-weight: bold; width: 250px;">수량</th>&emsp;&emsp;&emsp;
                                		<th style="font-size: 1.2em; font-weight: bold; width: 250px;">취소</th>
                                	</tr>
                                	<c:if test="${map.count >0 }">
                                	<c:forEach var="carlist" items="${map.list}">
                                	<tr>
                                		<th style="font-size: 1.2em; font-weight: bold; width: 250px;">${carlist.pname }</th>
                                		<th style="font-size: 1.2em; font-weight: bold; width: 250px;">${carlist.pprice }</th>
                                		<th style="font-size: 1.2em; font-weight: bold; width: 250px;">${carlist.camount }</th>
                                		<th style="width: 250px;" >
                                			<a href="${path}/carts/Odelete.do?cnum=${carlist.cnum}"><button type="button" class="btn btn-outline-info">취소</button></a>
                                		</th>
                                	</tr>
                                	</c:forEach>
                                	</c:if>
                                	<c:if test="${map.count == 0 }">
                                	<tr >
                                		<th style="font-size: 1.2em; font-weight: bold;">상품이 존재</th>
                                		<th style="font-size: 1.2em; font-weight: bold;">하지 않습니다</th>
                                		<th style="font-size: 1.2em; font-weight: bold;"></th>
                                		<th style="font-size: 1.2em; font-weight: bold;">&nbsp;</th>
                                	</tr>
                                	</c:if>
                            </table>   
                            
                            
                            
                            <form action="#" method="post" id="user" name="user">
                            <h1 style="text-align: center;"></h1>
                                <div class="row">
                                
                                    <div class="col-md-2 mb-3">
                                       <input type="hidden" class="form-control" id="name" name="name" value="${dto.name}" placeholder="${dto.name}" readonly="${dto.name}" style="border: 1px solid black;">
                                    </div>
                                    <br>
                                    
                                    <div class="col-md-2 mb-3">
                                        <input type="hidden" class="form-control" id="userid" name="userid" value="${dto.userid}" placeholder="${dto.userid}" readonly="${dto.userid}" style="border: 1px solid black;">
                                    </div>
                                    
                                    <div class="col-2 mb-3">
                                        <input type="hidden" class="form-control" id="address" name="address" value="${dto.address}" placeholder="${dto.address}" readonly="${dto.address}" style="border: 1px solid black;">
                                    </div>
                                    
                                    <div class="col-2 mb-3">
                                        <input type="hidden" class="form-control" id="zipcode" name="zipcode" value="${dto.zipcode}" placeholder="${dto.zipcode}" readonly="${dto.zipcode}" style="border: 1px solid black;">
                                    </div>
                                    
                                    <div class="col-2 mb-3">
                                        <input type="hidden" class="form-control mb-3" id="email" name="email" value="${dto.email}" placeholder="${dto.email}" readonly="${dto.email}" style="border: 1px solid black;">
                                    </div>
                                </div>
                                </form> 
                                
                                
                                
                        </div>
                    </div>
                    <div class="col-12 col-lg-2">
                        <div class="cart-summary" style="border-style: double; position: fixed; border-radius: 8px;">
                            <h5 style="text-align: center;">주문 내역</h5>
                            <ul class="summary-table">
                                <li><span>제품가격</span> <span ><input type="hidden" id="sm" value="${map.sumMoney }" disabled="disabled" style="text-align: right;">${map.sumMoney }원</span></li>
                                <c:if test="${map.count > 0 }">
                                <li><span>배송료:</span> <span>${map.fee }원</span></li>
                                </c:if>
                                <c:if test="${map.count == 0 }">
                                <li><span>배송료:</span> <span>0원</span></li>
                                </c:if>
                                <c:if test="${map.count > 0 }">
                                <li><span>총액:</span> <span>${map.sum}원</span></li>
                                </c:if>
                                <c:if test="${map.count == 0 }">
                                <li><span>배송료:</span> <span>0원</span></li>
                                </c:if>
                                
                            </ul>
                            <div class="cart-btn mt-100">
                                <a href="#" class="btn btn-outline-success" style="padding: 18px; width: 210px;" onclick="order()"
                                data-toggle="tooltip" data-placement="bottom" title="3만원 이상 주문시 무료배송!">주문</a>
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
    <!-- ##### Footer Area End ##### -->

    

</body>

</html>