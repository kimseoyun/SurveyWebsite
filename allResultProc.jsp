<%@page import="java.io.BufferedReader"%>
<%@page import="java.io.IOException"%>
<%@page import="java.io.FileReader"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<center>
	<%
	String path="C:/jsp_study/project/.metadata/.plugins/org.eclipse.wst.server.core/tmp0/wtpwebapps/SurveyForm/WEB-INF/animal";
	String[] filePath ={"말","사자","소","양","원숭이"};
	String img;
	for(int i=0;i<filePath.length;i++){
		img = "img/"+filePath[i]+".jpg";
		out.println("<img src='"+img+"'"+"<br>");
		
		out.println("<br><b>"+filePath[i]+"을(를) 먼저 버리는 사람<b> <br><br>");
		try{
		 FileReader fr = new FileReader(path+"/"+filePath[i]+".txt");
		 BufferedReader br = new BufferedReader(fr); //버퍼리더객체생성

		  String line = null; 
		  while((line=br.readLine())!=null){ //라인단위 읽기
		    out.println(line + "<br>"); 
		  }
		  out.println("<br><br>");
		}
		  catch (IOException e) { 
		    System.out.println(e.toString()); //에러 발생시 메시지 출력
		  }
	} 
	 
%>
</center>
</body>
</html>