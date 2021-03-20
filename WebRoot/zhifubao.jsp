<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

  
<style>
*{
  margin:0;
  padding:0;
   background:#ffd780;
  }
 
  #container{
  margin:0 auto;
  width:100%;
  }
  .aside{
  float:left;
  width:30%;
  height:100%;
 
  }
 
  #content{
  float:left;
  width:40%;
  height:100%;
  margin:0 auto;
  background:#ffb000;
 }
 
 #pic{
  height:400px;
  margin-top:150px;
  background:#ffb000;
 }
 #pic1{
  height:400px;
  margin-top:300px;
 
 }
</style>
<body>
<div id="container">
 <div id="aside1" class="aside" align="center">
 <img src="picture/zhifu.png" width="200" height="200" border="0"/>
 </div>
 <div id="content" align="center">
<div id="pic">
<img src="picture/zhifubao.png" width="400" height="400" border="0"/>
</div>
 </div>
 <div id="aside2" class="aside" align="center">
 <div id=pic1>
 <img src="picture/labixiaoxin.png" width="400" height="500" top="200" border="0"/>
 </div>
 
</div>
 </div>

</body>