<%@page import="java.io.FileWriter"%>
<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.net.URLDecoder"%>
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
<center>
<br>
<%
	request.setCharacterEncoding("UTF-8");
	String name = request.getParameter("name");
	String animal = request.getParameter("animal");

	out.println(name+"님은 "+animal+"을(를) 먼저 버리는 것을 선택하였습니다.");
	String result;
	String filename = animal+".txt";
//	PrintWriter writer = null;
	try{
		String filePath = application.getRealPath("/WEB-INF/animal/"+filename);
		//	out.println(filePath);
		//writer = new PrintWriter(filePath);
		 FileWriter writer = new FileWriter(filePath, true); 
		writer.write(name);
		//writer.append(name);
		writer.write(System.getProperty( "line.separator"));
		writer.close();
		result = "ok";
	}catch(Exception e){
		out.println("오류발생");
		result = "fail";
	}
	//response.sendRedirect("boardResult.jsp?send="+result);
%>
<br>
<img src="img/result.jpg"><br>
<br>
<button type="button" onclick="location.href='allResult.jsp' " id="button">
다른 사람 결과 보기 </button>
</center> 
</body>
</html>
