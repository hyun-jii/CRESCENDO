<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<!-- jQuery 3.4.1 -->
<script src="http://code.jquery.com/jquery-3.4.1.min.js"></script>
<!-- 부트스트랩4.3 코어 삽입부입니다. -->
<link rel="stylesheet" href="https://getbootstrap.com/docs/4.3/dist/css/bootstrap.min.css">
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>


<!-- include summernote css/js-->
<link href="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.11/summernote-bs4.css" rel="stylesheet">
<script src="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.11/summernote-bs4.js"></script>
<script src="lang/summernote-ko-KR.js"></script>



<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
<link href="https://fonts.googleapis.com/css?family=Black+Han+Sans&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Jua&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Do+Hyeon&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Nanum+Gothic&display=swap" rel="stylesheet">
<link href="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.12/summernote.css" rel="stylesheet">

<title>글쓰기</title>

<script>
$(function(){
	
	// summernote 출력 및 부가 기능 메소드
	$('#summernote').summernote({
		width : 682,		// 에디터 넓이
		height: 300,        // 에디터 높이
		focus: true,        // set focus to editable area after initializing summernote
		lang: 'ko-KR',		// 언어 : 한국어 설정
		disableResizeEditor: true,
		callbacks:{
			onImageUpload: function(files, editor) {
				// 업로드된 이미지를 ajax를 이용하여 서버에 저장
				console.log(files);
				sendFile(files[0], this);

        	   
			}
		}
	});


	// 업로드된 이미지를 ajax를 이용하여 서버로 전송하여 저장하는 함수
	function sendFile(file, editor){
		
		form_data = new FormData();
		// FormData : form 태그 내부 값 전송을 위한  k:v 쌍을 쉽게 생성할 수 있는 객체
		
		form_data.append("uploadFile", file);
		// FormData 객체에 새로운 K, V 를 추가
		
		
		$.ajax({
			url : "insertImage.action",  //여기서 컨트롤러단 호출되는지 확인해보기 
			type : "post",
			data : form_data,
			dataType: "text",
			enctype: "multipart/form-data",  
			cache : false,
	        contentType : false,
	        // contentType : 서버로 전송되는 데이터의 형식 설정
	        // 기본값  : application/x-www-form-urlencoded; charset=UTF-8
	        // 파일 전송 시 multipart/form-data 형식으로 데이터를 전송해야 하므로
	        // 데이터의 형식이 변경되지 않도록 false로 지정.
	        processData : false,
	        // processData : 서버로 전달되는 값을 쿼리스트링으로 보낼경우 true(기본값), 아니면 false
	        //				파일 전송 시 false로 지정 해야 함.
	        
			success : function(result){
				console.log(result);
				
				// 저장된 이미지를 에디터에 삽입
				$(editor).summernote('editor.insertImage', result);
				
				// 에디터에 삽입된 이미지를 관리하기 위한 hidden 타입 input태그 
				var $imgList = $("input[name=imgList]");
				
				// 이미지 저장 성공시 반환되는 이미지 경로에서 파일명만 추출하여 
				// imgList에 추가
				var cutPoint = result.lastIndexOf("/");
				result = result.substring(cutPoint + 1);
				
				if($imgList.val() == ""){
					$imgList.val(result);
				}else{
					var str = $imgList.val();
					str = str + "," + result;
					$imgList.val(str);
				}
				
				console.log($imgList.val());
			},
			error : function(){
			}
			
		});
		
	}
	
	//서머노트 업로드된 이미지 삭제
	/* function summernoteDeleteImage(file){
		  var remove = file.substr(file.lastIndexOf("/")+1);
		  var fileRemove = "removeFile="+remove;
		  $.ajax({
	        data: fileRemove,
	        type: "GET",
	        url: '<c:url value="/Image/Image.Lingo"/>',
	        cache: false,
	        contentType: false,
	        processData: false,
	        success: function() {
	        	realImage = jQuery.grep(realImage, function(value) { 
	        		return value != remove; });
				console.log(realImage+"삭제 후 서버에 저장된 이미지");
	        }
	    });
		  
	} */
});
</script>

<script>
function goWrite(frm) {	
	var title = frm.title.value;
	var writer = frm.writer.value;
	var content = frm.content.value;
	
	if (title.trim() == ''){
		alert("제목을 입력해주세요");
		return false;
	}
	if (writer.trim() == ''){
		alert("작성자를 입력해주세요");
		return false;
	}
	if (content.trim() == ''){
		alert("내용을 입력해주세요");
		return false;
	}
	frm.submit();
}
</script>


</head>
<body>
<h2 style="text-align: center;">글 작성</h2><br><br><br>

<div style="width: 60%; margin: auto;">
	<form method="post" action="swrite.action" enctype="multipart/form-data" >
		<input type="text" name="writer" style="width: 20%;" placeholder="작성자"/><br>
		<input type="text" name="title" style="width: 40%;" placeholder="제목"/>
		<br><br> 
		<textarea id="summernote" name="content"></textarea>
		<input type="hidden" name="imgList" value="">
		<input id="subBtn" type="button" value="글 작성" style="float: right;" onclick="goWrite(this.form)"/>
	</form>
</div>

					

</body>
</html>