<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@ include file="../js/header.jsp" %>
<!-- ckeditor 사용을 위해 js 파일 연결 -->
<script src="${path}/ckeditor/ckeditor.js"></script>

</head>
<body>
<%@ include file="../js/nav2.jsp" %>
<script>
function product_write(){
	// 태그를 name으로 조회할 경우(계층구조로 접근)
	//var product_name=document.form1.product_name.value;
	// 태그를 id로 조회할 경우
	var pname=$("#pname").val();
	var pprice=$("#pprice").val();
	var pamount=$("#pamount").val();
	var main=$("#main").val();
	var pdtail=$("#pdtail").val();
	var pcata=$("#pcata").val();
	if(pname==""){ //빈값이면
		//문자열 비교 : java는 a.equal(b), javascript는 a==b
		alert("상품이름을 입력하세요"); 
		$("#pname").focus(); //입력포커스 이동
		return; //리턴값없이 함수 종료, 폼 데이터를 제출하지 않음
	}
	if(pprice==""){
		alert("가격을 입력하세요");
		$("#pprice").focus();
		return;
	}
	if(pamount==""){
		alert("수량을 입력하세요");
		$("#pamount").focus();
		return;
	}
	if(main==""){
		alert("메인화면에 출력여부를 입력하세요(y or n)");
		$("#main").focus();
		return;
	}
 	if(pdtail==""){
		alert("상품 설명을 입력하세요");
		$("#pdatal").focus();
		return;
	}
 	if(pcata==""){
		alert("카테고리를 입력하세요");
		$("#pcata").focus();
		return;
	} 
 	
	//폼 데이터를 받을 주소
	document.form1.action="${path}/shop/product/insert.do";
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

<br>
<div>
<form name="form1" method="post"
	enctype="multipart/form-data">
	<div style="margin-top: 130px;">
<h1 style="text-align: center; margin-left: 150px; font-weight: bold;"> <img src="${path}/img/core-img/logo.png" alt="" style="">&emsp;상품등록</h1>
</div>

<table class="content-table" style="margin-left: 250px;">
	<tr>
		<td>상품명</td>
		<td><input name="pname" id="pname"></td>
	</tr>
	<tr>
		<td>가격</td>
		<td><input name="pprice" id="pprice"></td>
	</tr>
	<tr>
		<td>재고</td>
		<td><input name="pamount" id="pamount"></td>
	</tr>
	<tr>
		<td>메인</td>
		<td><input name="main" id="main"></td>
	</tr>
	<tr>
	    <td>카테고리</td>
	    <td><input name="pcata" id="pcata"></td>
	</tr>
	<tr>
		<td>상품설명</td>
		<td><textarea rows="5" cols="60" 
			name="pdtail" id="pdtail"></textarea>
		<script type="text/javascript">
		CKEDITOR.replace("pdtail", {
			filebrowserUploadUrl : "${path}/imageUpload.do"
		});
		</script>	
		</td>
	</tr>
	<tr>
		<td>상품이미지</td>
		<td>
			<input type="file" name="file1" id="file1"> 
		</td>
	</tr>
	<tr>
		<td colspan="2" align="center">
			<input type="button" value="등록" 
				onclick="product_write()" class="btn btn-outline-info">
			<input type="button" value="목록"
onclick="location.href='${path}/shop/product/list_admin.do'" class="btn btn-outline-secondary">
		</td>
	</tr>
</table>	
</form>
</div>
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