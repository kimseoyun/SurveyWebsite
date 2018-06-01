<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.net.URLEncoder"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
#button {
  background-color: white; 
    color: black; 
    border: 2px solid #f44336;
    padding: 5px 5px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 15px;
    margin: 4px 2px;
    transition-duration: 0.4s;
    cursor: pointer;
}
#button:hover {
    background-color: #f44336;
    color: white;
}
</style>
</head>
<body>
<br>
<p align="center">
<img src="img/1.jpg"> <br>

<img src="img/2.jpg">
</p>
<br><br>
<form action="result.jsp">
<center>
<input type="text" name="name" placeholder="이름을 입력해주세요." required="required"> <br><br>
<input type="radio" name="animal" value="사자" required> 사자
  <input type="radio" name="animal" value="말"> 말
  <input type="radio" name="animal" value="소"> 소
  <input type="radio" name="animal" value="양"> 양
  <input type="radio" name="animal" value="원숭이"> 원숭이 <br><br>
  <input type="submit" value="결과보기" id="button">
  </center>
</form>
</body>
</html>