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

</script>

<style>
  .content-table{
   border-collapse: collapse;
   margin:25px 0;
   font-size:0.9em;
   min-width:-300px;
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
                            <h2 style="font-weight: bold;">${sessionScope.name}님&nbsp; 주문 상태</h2>
                        </div>
						<%-- <div>
							상품갯수<span style="color:red;">${map.count}</span>개
						</div> --%>	
                        <div class="cart-table clearfix">
                            <table class="content-table" style="width: 900px;">
                                <thead>
                                    <tr>
                                        <th style="font-size: 1.2em; font-weight: bold; width:">제품이미지</th>
                                        <th style="font-size: 1.2em; font-weight: bold; width:">상품명</th>
                                        <th style="font-size: 1.2em; font-weight: bold; width: ">제품 가격</th>
                                        <th style="font-size: 1.2em; font-weight: bold; width: ">수량</th>
                                        <th style="font-size: 1.2em; font-weight: bold; width: ">처리 상태</th>
                                        <th style="font-size: 1.2em; font-weight: bold; width: ">구매여부</th>
                                    </tr>
                                </thead>
                                <tbody>
                               <c:if test="${map.count >0 }">
                                <c:forEach var="row" items="${map.CartsfinalList}">
                                   <tr>
                                   	<td><a href="#"><img src="${path}/img/product-img/${row.pimg}" alt="Product" style="width: 25%; height: 25%;"></a></td>
                                   	<td style="font-size: 1.2em; font-weight: bold;">${row.pname }</td>
                                   	<td style="font-size: 1.2em; font-weight: bold;">${row.pprice }</td>
                                   	<td style="font-size: 1.2em; font-weight: bold;">${row.camount }</td>
                                   	<c:choose>
                                   	 <c:when test="${row.ostatus == 0 }">
                                   	 	<td style="font-size: 1.2em; font-weight: bold;">입금대기</td>
                                   	 </c:when>
                                   	 <c:when test="${row.ostatus == 1 }">
                                   	 	<td style="font-size: 1.2em; font-weight: bold;">입금 확인</td>
                                   	 </c:when>
                                   	 <c:when test="${row.ostatus == 2 }">
                                   	 	<td style="font-size: 1.2em; font-weight: bold;">배송중</td>
                                   	 </c:when>
                                   	 <c:when test="${row.ostatus == 3 }">
                                   	 	<td style="font-size: 1.2em; font-weight: bold;">배송완료</td>
                                   	 </c:when>
                                   	</c:choose>
                                   	
                                   	<td>
                                   	<!-- <a href="#"><button type="button" class="btn btn-outline-primary">구매 확정</button></a><br> -->
                                   	<a href="${path}/carts/OFdelete.do?cnum=${row.cnum}"><button type="button" class="btn btn-outline-danger">구매 취소</button></a>
                                   	</td>
                                   	
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
                            
                        </div>
                    </div>
                    <div class="col-12 col-lg-2">
                        <div class="cart-summary" style="border-style: double; position: fixed; width: 200px; border-radius: 8px; margin-left: 120px;">
                            <h5 style="text-align: center;">나의 주문 총액</h5>
                            <ul class="summary-table">
                                <li><span>제품총액:</span> <span>${map.sumMoney }</span></li>
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


</body>

</html>