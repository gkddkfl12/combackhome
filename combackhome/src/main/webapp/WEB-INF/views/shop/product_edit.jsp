<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@ include file="../js/header.jsp" %>
</head>
<body>
	<%@ include file="../js/nav2.jsp"%>
	<script>
	    function product_delete(){
	    	if(confirm("삭제하시겠습니까?")){
	    		document.form1.action="${path}/shop/product/delete.do";
	    		document.form1.submit();
	    	}
	    }
	
		function product_update() {

			var product_name = $("#pname").val();
			var price = $("#pprice").val();
			var pdtail = $("#pdtail").val();
			var pcata = $("#pcata").val();
			var pamount = $("#pamount").val();
			if (pname == "") { //빈값이면
				alert("상품이름을 입력하세요");
				$("#pname").focus(); 
				return; 
			}
			if (pprice == "") {
				alert("가격을 입력하세요");
				$("#pprice").focus();
				return;
			}
			if (pdtail == "") {
				alert("상품 설명을 입력하세요");
				$("#pdtail").focus();
				return;
			}
			if (pcata == "") {
				alert("카테고리를 입력하세요");
				$("#pcata").focus();
				return;
			}
			if (pamount == "") {
				alert("카테고리를 입력하세요");
				$("#pamount").focus();
				return;
			}
			//폼 데이터를 받을 주소
			document.form1.action = "${path}/shop/product/update.do";
			//폼 데이터를 서버에 전송
			document.form1.submit();
		}
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
	
	<form name="form1" method="post" enctype="multipart/form-data">
	<h2 style="text-align: center; margin-left: 160px; font-weight: bold; margin-top: 100px;"> <img src="${path}/img/core-img/logo.png" alt="" style="">&emsp;상품 정보 수정</h2>
		<table class="content-table" style="margin-left: 300px;">
		   <tr>
				<td>&nbsp;</td>
				<td><img src="${path}/img/product-img/${dto.pimg}" width="300px"
						height="300px"></td>
			</tr>
			<tr>
				<td>상품명</td>
				<td><input name="pname" id="pname"
						value="${dto.pname}"></td>
			</tr>
			<tr>
				<td>가격</td>
				<td><input name="pprice" id="pprice" value="${dto.pprice}"></td>
			</tr>
			<tr>
				<td>카테고리</td>
				<td><input name="pcata" id="pcata" value="${dto.pcata}"></td>
			</tr>
			<tr>
				<td>재고</td>
				<td><input name="pamount" id="pamount" value="${dto.pamount}"></td>
			</tr>
			<tr>
				<td>메인화면</td>
				<td><input name="main" id="main" value="${dto.main}"></td>
			</tr>
			<tr>
				<td>상품설명</td>
				<td><textarea rows="5" cols="60" name="pdtail"
						id="pdtail">${dto.pdtail}</textarea></td>
			</tr>
			
			<tr>
				<td colspan="2" align="center">
					<!-- 수정,삭제에 필요한 상품코드값을 hidden 태그로 넘김 --> 
					<input type="hidden"
						name="pnum" value="${dto.pnum}"> 
						<input
						type="button" value="수정" onclick="product_update()" class="btn btn-outline-primary"> 
						<input
						type="button" value="삭제" onclick="product_delete()" class="btn btn-outline-danger"> 
						<input
						type="button" value="목록"
						onclick="location.href='${path}/shop/product/list_admin.do'" class="btn btn-outline-secondary">
				</td>
			</tr>
		</table>
	</form>

</div>
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
                        <form action="#" method="post">
                            <input type="email" name="email" class="nl-email" placeholder="Your E-mail">
                            <input type="submit" value="Subscribe">
                        </form>
                    </div>
                </div>
            </div>
        </div>
  
    </section>
    <!-- ##### Newsletter Area End ##### -->

    <!-- ##### Footer Area Start ##### -->
    <footer class="footer_area clearfix">
       <%@ include file="../js/footer.jsp" %>
    </footer>

</body>
</html>