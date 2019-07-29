<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!-- views/board/view.jsp -->
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<%@ include file="../js/header.jsp" %>
<script src="${path}/include/js/common.js"></script>

<!-- ckeditor의 라이브러리 -->
<script src="${path}../ckeditor/ckeditor.js"></script>
<script>
$(function(){ //자동으로 실행되는 코드
	//댓글 목록 출력
	listReply();
	//listReply2();
	
	//댓글 쓰기
	$("#btnReply").click(function(){
		var replytext=$("#replytext").val(); //댓글 내용
		var bno="${dto.bno}"; //게시물 번호
		var param={ "replytext": replytext, "bno": bno};
		//var param="replytext="+replytext+"&bno="+bno;
		$.ajax({
			type: "post",
			url: "${path}/reply/insert.do",
			data: param,
			success: function(){
				alert("댓글이 등록되었습니다.");
				listReply();
				//listReply2(); //댓글 목록 출력
			}
		});
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
	
	
	//목록 버튼
	$("#btnList").click(function(){
		location.href="${path}/board/list.do";
	});
	//수정 버튼
	$("#btnUpdate").click(function(){
		//첨부파일 이름들을 폼에 추가
		var str="";

		$("#form1").append(str);
		document.form1.action="${path}/board/writeedit.do";
		document.form1.submit();
	});
	
	$("#btnSave").click(function(){
		var str="";

		//폼에 hidden 태그들을 붙임
		$("#form1").append(str);
		document.form1.submit();
	});
	
});
//댓글 목록 출력 함수
function listReply(){
	$.ajax({
		type: "get",
		url: "${path}/reply/list.do?bno=${dto.bno}",
		success: function(result){
			//result : responseText 응답텍스트(html)
			$("#listReply").html(result);
		}
	});
}
//타임스탬프값(숫자형)을 문자열 형식으로 변환
function changeDate(date){
	date = new Date(parseInt(date));
	year=date.getFullYear();
	month=date.getMonth();
	day=date.getDate();
	hour=date.getHours();
	minute=date.getMinutes();
	second=date.getSeconds();
	strDate = 
		year+"-"+month+"-"+day+" "+hour+":"+minute+":"+second;
	return strDate;
}
function listReply2(){
	$.ajax({
		type: "get",
		contentType: "application/json",
		url: "${path}/reply/list_json.do?bno=${dto.bno}",
		success: function(result){
//view를 만들지 않는 대신에 자바스크립트로 table등을 만들어야 한다.
			console.log(result);
			var output="<table>";
			for(var i in result){
				var repl=result[i].replytext;
				// /정규식/(규칙) => 정규표현식
				// 규칙 g: global 전역검색, i: 대소문자 무시
				// ex) /java/gi => JAVA 또는 java를 모두 찾음
				repl = repl.replace(/  /gi,"&nbsp;&nbsp;");//공백처리
				repl = repl.replace(/</gi,"&lt;"); //태그문자 처리
				repl = repl.replace(/>/gi,"&gt;");
				repl = repl.replace(/\n/gi,"<br>"); //줄바꿈 처리
				
				output += "<tr><td>"+result[i].name;
				date = changeDate(result[i].regdate);
				output += "("+date+")";
				output += "<br>"+repl+"</td></tr>";
			}
			output+="</table>";
			$("#listReply").html(output);
		}
	});
}
</script>


 <link rel="icon" href="${path}/img/core-img/favicon.ico">

    <!-- Core Style CSS -->
    <link rel="stylesheet" href="${path}/css/core-style.css">
    <link rel="stylesheet" href="${path}/style.css">
    
    
<style>
.fileDrop {
	width: 600px;
	height: 100px;
	border: 1px dotted gray;
	background-color: gray;
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
<div class="amado_product_area section-padding-100">
<div class="container">
    <div class="container-fluid"  style="width: 900px;  ">
    <h1 style="font-weight: bold; text-align: center; ">
    <a href="${path}/team_join/login.do"><img src="${path}/img/core-img/logo.png" alt="" style=""></a>&emsp;공지사항</h1>
<br><br>


<form id="form1" name="form1" method="post" action="${path}/board/insert.do">

<table border="5" class="table table-bordered" style="color: gray; width: 900px;" >
 
<tr style="text-align: center;">

<td><input type="hidden"  name="bno" value="${dto.bno}"></td>
<th style="background: black; color: white; ">글쓴이</th>
<td>${dto.name}</td>
<th style="background: black; color: white; ">작성일자</th>
<td><fmt:formatDate value="${dto.regdate}" pattern="yyyy-MM-dd HH:mm:ss"/></td>
<th style="background: black; color: white; ">조회수</th>
<td>${dto.viewcnt}</td>
</tr>

<tr>
<th style="background: black; color: white; ">제목</th>
<td colspan="7"><input name="title" id="title" size="30"value="${dto.title}" placeholder="제목을 입력하세요" readonly="${dto.title}" style="border: none;"></td>
</tr>

<tr>
<th style="background: black; color: white;">내용</th>
<td colspan="7"> <span id="content" name="content">${dto.content}</span></td>
</tr>
<tr>
<td colspan="8"><c:if test="${sessionScope.userid == dto.writer}">
             <input type="button" value="수정" id="btnUpdate"  class="btn btn-outline-success">
			 <input type="button" value="삭제" id="btnDelete"  class="btn btn-outline-danger">			
		</c:if>
		<input type="button" id="btnList" value="목록" class="btn btn-outline-info">
</tr>	
</table>
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
