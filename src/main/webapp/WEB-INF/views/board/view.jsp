<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
	integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
	crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6"
	crossorigin="anonymous"></script>
<link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-lite.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-lite.min.js"></script>
<title>글조회</title>
</head>
<body role="main" class="container">
	<h2>글작성</h2>
	<form name="form" method="POST" action="">
		<div class="pt-1">
			<p>${view.bno}
				제 목 : <input type="text" id="title" name="title" placeholder="제목을 입력하세요" style="border-radius: 5px; width: 20%; padding: 2px;" value="${view.title}">
			</p>

			<p>
				작성자 : <input type="text" id="writer" name="writer" placeholder="작성자를 입력하세요" style="border-radius: 5px; width: 20%; padding: 2px;" value="${view.writer}">
			</p>
		</div>
		<div class="pt-1">
			<textarea id="summernote" class="content" name="content">${view.content}</textarea>
		</div>
		<div class="pt-1 text-right">
			<button class="btn btn btn-success" type="submit" style="width: 10%; padding: 5px;">수정</button>
		</div>
		<script>
			$('#summernote').summernote({
				placeholder : '내용을 입력해주세요',
				tabsize : 2,
				height : 300
			});
		</script>
	</form>
	<div class="pt-1 text-right">
		<button class="btn btn btn-success" style="width: 10%; padding: 5px;" onclick="location.href='/board/list'">목록</button>
	</div>
</body>
<script>
	$('#abcd').click(function() {
		let data = {
			title : $('#title').val(),
			writer : $('#writer').val(),
			content : $('.content').val()
		}
		$.ajax({
			type : "POST",
			url : "board/view",
			dataType:"json",
			contentType : "application/json",
			data : JSON.stringify(data),
			success : function(res,err) {
				alert("수정완료");
				
				window.location.href="/board/list";
			}
		})
	})
</script>
</html>