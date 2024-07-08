<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src = "https://code.jquery.com/jquery-3.7.1.min.js"></script>
<title>Insert title here</title>
<script>
$(function(){
	$('button').click(function(){
		$('#data').load('/ch08/api/html');
	})
})
</script>
</head>
<body>
	<h1>Ajax Test: HTML Format Data</h1>
	<button>데이터 가져오기</button>
	<div id="data"></div>
</body>
</html>