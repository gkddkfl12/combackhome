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
	$("#btnSave").click(function(){
		var title=$("#title").val(); //태그의 value 속성값
		var content=$("#content").val();
		if(title==""){
			alert("제목을 입력하세요");
			$("#title").focus(); //입력 포커스 이동 
			return;
		}
		if(content==""){
			alert("내용을 입력하세요.");
		 	$("#content").focus(); 
			return;
		}
		var str="";
	// F12에서 올린 파일부분살펴보면 uploadedList 내부의 .file 태그 각각 반복
		$("#uploadedList .file").each(function(i){
			console.log(i);
			//hidden 태그 구성
			str += 
"<input type='hidden' name='files["+i+"]'	value='"
	+ $(this).val()+"'>";
		});
		//폼에 hidden 태그들을 붙임
		$("#form1").append(str);
		document.form1.submit();
	});
	$(".fileDrop").on("dragenter dragover",function(e){
		//기본 효과 막음
		e.preventDefault();
	});
	$(".fileDrop").on("drop",function(e){
		e.preventDefault();
		//첫번째 첨부파일
		var files=e.originalEvent.dataTransfer.files;
		var file=files[0];
		//폼 데이터에 첨부파일 추가
		var formData=new FormData();
		formData.append("file",file);
		$.ajax({
			url: "${path}/upload/uploadAjax",
			data: formData,
			dataType: "text",
			processData: false,
			contentType: false,
			type: "post",
			success: function(data){
				//console.log(data);
				//data : 업로드한 파일 정보와 Http 상태 코드
				var fileInfo=getFileInfo(data);
				//console.log(fileInfo);
				var html="<a href='"+fileInfo.getLink+"'>"+
					fileInfo.fileName+"</a><br>";
				html += "<input type='hidden' class='file' value='"
					+fileInfo.fullName+"'>";
				$("#uploadedList").append(html);
			}
		});
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
    <a href="${path}/team_join/login.do"><img src="${path}/img/core-img/logo.png" alt="" style=""></a>&emsp;글 쓰 기</h1>
<br><br>

<div>



<form id="form1" name="form1" method="post" action="${path}/board/insert.do">
	<table table border="5" class="table table-bordered" style="color: gray; width: 900px; ">
	<tr>
	<th style="background: black; color: white;">제목</th>
	<td><input name="title" id="title" size="80" placeholder="제목을 입력하세요" style="border: none;"></td>
	
	</tr>
	<tr>

	<th style="background: black; color: white;">내용</th>
	<td><textarea id="summernote" name="content" rows="7" cols="80" placeholder="내용을 입력하세요" style="border: none;"></textarea>	
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
	
	<!-- <div>제목 <input name="title" id="title" size="80"
					placeholder="제목을 입력하세요">
	</div>
	<div style="width:800px;">
		내용 <textarea id="content" name="content"
rows="3" cols="80" placeholder="내용을 입력하세요"></textarea>
<script>
// ckeditor 적용
CKEDITOR.replace("content",{
	filebrowserUploadUrl: "${path}/imageUpload.do"
});// ImageUploadController.java 에서 처리
</script>
	</div>
	<div> 첨부파일을 등록하세요
		<div class="fileDrop"></div>
		<div id="uploadedList"></div>
	</div>
	<div style="width:700px; text-align:center;">
		<button type="button" id="btnSave">확인</button>
	</div> -->
<button type="button" id="btnSave"  class="btn btn-outline-primary" style="float: right;">확인</button>
	
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
		