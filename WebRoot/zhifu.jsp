<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'deal.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body bgcolor=cyan><FONT size=5>
 <% request.setCharacterEncoding("gb2312");
  String zhifu=request.getParameter("zhifu");
   if(zhifu.equals("weixin")){
  response.sendRedirect("weixin.jsp");	}
  if(zhifu.equals("zhifubao")){
  response.sendRedirect("zhifubao.jsp");	
  }
  if(zhifu.equals(" ")){ response.sendError(500,"请选择支付方式");
  }
  
  
 


  
  
%>


  </body>
</html>
