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
// DOM Load Event
// 1. load: DOM, CSSOM, Image 모두 다 로딩
// 2. DOMContentLoaded: DOM만 로딩

window.addEventListener('DOMContentLoaded', function(){
	document
		.getElementsByTagName('button')[0]
		.addEventListener('click', function(){
			var xhr = new XMLHttpRequest();
			xhr.addEventListener('readystatechange', function(){
				if (this.readyState === XMLHttpRequest.UNSET) { // readyState : 0
					// request가 초기화 되기 전 
					console.log("XMLHttpRequest.UNSET");
				}
				else if (this.readyState === XMLHttpRequest.OPENED) { // readyState : 1
					// 서버와 연결이 성공 
					console.log("XMLHttpRequest.OPEND");
				}
				else if (this.readyState === XMLHttpRequest.HEADERS_RECEIVED) { // readyState : 2
					// 서버가 요청을 받음 
					console.log("XMLHttpRequest.HEADERS_RECEIVED");
				} 
				else if (this.readyState === XMLHttpRequest.LOADING) { // readyState : 3
					// response를 처리하는 중
					console.log("XMLHttpRequest.LOADING");
				} 
				else if (this.readyState === XMLHttpRequest.DONE) { // readyState : 4
					// response 처리가 끝남
					console.log("XMLHttpRequest.DONE");
				
					if (this.status !== 200) {
						console.error(this.status, this.state);
						return ;
					}
					
					// console.log(this.responseText);
					var response = JSON.parse(this.responseText); 
				} 
				
			});
			xhr.open('get', '/ch08/api/json', true /*async*/);
			xhr.send();
		});
})	

</script>
</head>
<body>
	<h1>Ajax Test: HTML Format Data</h1>
	<button>데이터 가져오기</button>
	<div id="data"></div>
</body>
</html>