<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<title>게시판 목록</title>
</head>
<body>
	<table class="table table-hover">
		<thead>
			<tr>
				<th>번호</th>
				<th>제목</th>
				<th>내용</th>
				<th>작성자</th>
				<th>조회수</th>
				<th>작성일</th>
			</tr>
		</thead>

		<tbody>
			<c:forEach items="${list}" var="list">
				<tr>
					<td>${list.bno}</td>
					<td><a href="/board/view?bno=${list.bno}">${list.title}</a></td>
					<td>${list.content}</td>
					<td>${list.writer}</td>
					<td>${list.viewCnt}</td>
					<td>${list.regDate}</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	<div class="pt-1 text-right">
		<button class="btn btn btn-success" type="submit" style="width: 10%; padding: 5px;" onclick="location.href='/board/write';">작성하기</button>
	</div>
</body>
</html>