<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">


<title>Insert title here</title>
<%@ include file="../js/header.jsp" %>
<script src="${path}/include/js/common.js"></script>
<%-- <!-- ckeditor의 라이브러리 -->
<script src="${path}/ckeditor/ckeditor.js"></script> --%>

 <link href="//cdnjs.cloudflare.com/ajax/libs/summernote/0.8.12/summernote-lite.css" rel="stylesheet">
 <script src="//cdnjs.cloudflare.com/ajax/libs/summernote/0.8.12/summernote-lite.js"></script>


	
<script>

$(function(){
	//목록 버튼
	$("#btnList").click(function(){
		location.href="${path}/board/list.do";
	});
	//수정 버튼
	$("#btnUpdate").click(function(){
		//첨부파일 이름들을 폼에 추가
		var str="";

		$("#form1").append(str);
		document.form1.action="${path}/board/update.do";
		document.form1.submit();
	});
	//삭제 버튼
	$("#btnDelete").click(function(){
		if(confirm("삭제하시겠습니까?")){
			document.form1.action="${path}/board/delete.do";
			document.form1.submit();
		}
	});
	$("#btnSave").click(function(){
		var str="";

		//폼에 hidden 태그들을 붙임
		$("#form1").append(str);
		document.form1.submit();
	});
	
});
</script>





 <!-- Favicon  이미지 불러오기-->
    <link rel="icon" href="${path}/img/core-img/favicon.ico">
    <!-- Core Style CSS -->
    <link rel="stylesheet" href="${path}/css/core-style.css">
    <link rel="stylesheet" href="${path}/style.css">


<style>

 
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
   
  margin-top:200px;

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
<%@ include file="../js/nav.jsp" %>

<div class="container">
    <div class="main" style="width: 900px; ">
    <h1 style="font-weight: bold; text-align: center; ">
    <a href="${path}/team_join/login.do"><img src="${path}/img/core-img/logo.png" alt="" style=""></a>&emsp;게 시 물 수 정</h1>
<br><br>

<div>



<form id="form1" name="form1" method="post" action="${path}/board/insert.do">
	<table table border="5" class="table table-bordered" style="color: gray; width: 900px; ">
	<tr>
	<th style="background: black; color: white;">제목
		<input type="hidden" name="bno" id="bno" value="${dto.bno}">
	</th>
	<td><input name="title" id="title" size="80" placeholder="제목을 입력하세요" style="border: none;"value="${dto.title}"></td>
	
	</tr>
	<tr>

	<th style="background: black; color: white;">내용</th>
	<td><textarea id="summernote" name="content" rows="7" cols="80" placeholder="내용을 입력하세요" style="border: none; height: 800px">${dto.content}</textarea>	
     <script type="text/javascript">
     $('#summernote').summernote({
    	    placeholder: 'Hello stand alone ui',
    	    tabsize: 2,
    	    height: 100,
    	    toolbar: [
    	      ['style', ['style']],
    	      ['font', ['bold', 'underline', 'clear']],
    	      ['color', ['color']],
    	      ['para', ['ul', 'ol', 'paragraph']],
    	      ['table', ['table']],
    	      ['insert', ['link', 'picture', 'video']],
    	      ['view', ['fullscreen', 'codeview', 'help']]
    	    ]
    	  });
     </script>
	</td>
	</tr>	
	</table>

	<br><br>
	

<c:if test="${sessionScope.userid == dto.writer}">
			<button type="button" id="btnUpdate" class="btn btn-outline-primary">수정</button>
			<button type="button" id="btnDelete"class="btn btn-outline-primary">삭제</button>
		</c:if>
		
		<button type="button" id="btnList" class="btn btn-outline-primary">목록</button>
	
</form>
</div>
</div>
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
        <%@include file="../js/footer.jsp" %>
    </footer>
    <!-- ##### Footer Area End ##### -->


</body>
</html>
		