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
		var vo = {
			name: "ddillbbang",
			password: "1234",
			contents: "payyy"
		};
		$.ajax({
			//post1
			url: '/ch08/api/json2',
			async: true,
			type: 'post',
			dataType: 'json',
			contentType: 'application/x-www-form-urlencoded',
			data: $.param(vo),
			success: function(response){
				console.log(response);
				if (response.result !== 'success') {
					console.error(response.message);
					return ; 
				}
				
				var vo = response.data;
				
				var htmls = "";
				htmls += ("<h3>" + vo.no + "</h3>")
				htmls += ("<h4>" + vo.name + "</h4>")
				htmls += ("<h5>" + vo.contents + "</h5>")
				
				$("#data").html(htmls)
				
			},
			error: function(xhr, status, err){
				console.errror(status, err);
			}
		})
	
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