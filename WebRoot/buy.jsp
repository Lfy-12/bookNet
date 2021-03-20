<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'index.jsp' starting page</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
  </head>
  
   <script type="text/javascript">
   function validate(form1){
     if (form1.userName.value.length<2 ){
         alert("请填写真实姓名");
         form1.userName.focus();
         return false;
         }
         if (form1.telephone.value.length!=11 ){
         alert("请填写正确的电话号码");
         form1.telephone.focus();
         return false;
         }
        if (!form1.address.value ){
         alert("地址不能为空");
         form1.address.focus();
         return false;
         } 
        
      }
 </script>
  
<style>
*{
  margin:0;
  padding:0;
  }
  body{
  font-size:14px;
  }
  #container{
  margin:0 auto;
  width:100%;
  }
  
  #header{
  height:100px;
  width:100%;
  background:#ffb000;
  margin-bottom:5px;
  font-size:80px;
  font-style:oblique;
  text-decoration:blink;
  font-weight:bold;
  letter-spacing:5pt;
  }
  
  #main{
  width:100%;
  height:400px;
  margin-bottom:5px;
  background:#ffd780;
  }
 .aside{
  float:left;
  width:35%;
  height:100%;
  background:#ffd780;
  }

   #content{
  float:left;
  width:30%;
  height:100%;
  background:#ffec80;
  
  }
 
  #footer{
  height:100px;
  width:100%;
  background:#ffb000;
  }
  
 a{
 font-size:20px;
 text-align:center;
 margin:3px;
 }
 a:link,a:visited{
 color:#A62020;
 padding:15px 20px 15px 20px;
 background-color:#ecd8bd;
 text-decoration:none;
 
 border-top:1px solid #EEEEEE;
 border-left:1px solid #EEEEEE;
 border-bottom:1px solid #717171;
 border-right:1px solid #717171;
 }
 a:hover{
 color:3821818;
 padding:5px 8px 3px 12px;
 background-color:#e2c4c9;
 border-top:1px solid #717171;
 border-left:1px solid #717171;
  border-bottom:1px solid #EEEEEE;
 border-right:1px solid #EEEEEE;
 }
  

</style>
<body>
<div id="container">
 <div id="header" align="center">确认订单</div>
 <div id="main">
 <div id="aside1" class="aside" align="center">
 <img src="picture/mogu.png" width="200" height="500" border="0"/>
 </div>
 <div id="content">
 <form name="form1" action="zhifu.jsp" method="post" onsubmit="return validate(form1)">
 <table width="100%" height="100%">
 <tr>
    <td>收货人：</td>
        <td><input type="text" name="userName" ></td>
</tr>
<tr>
        <td>联系方式：
        </td>
        <td>
          <input type="text" name="telephone"></td>
      </tr>
      <tr>
        <td>收货地址：
        </td>
        <td>
          <input type="text" name="address"></td>
      </tr>
      <tr>
        <td>支付方式：
        </td>
        <td>
          <input type="radio" name="zhifu" value="zhifubao">支付宝
          
          <input type="radio" name="zhifu" value="weixin">微信
         
        </td>
      </tr>
      <tr>
      <td></td>
      <td>
      <img src="picture/zhixiao.jpg" width="100" height="100" border="0"/>
       <img src="picture/weixiao.jpg" width="100" height="100" border="0"/>
      </td>
      </tr>
      <tr>
        <td>
          <input type="submit" value="提交订单">
        </td>
        <td>
          <input type="reset" value="重置">
        </td>

      </tr>
      
     </table> 
    </form> 
    
</div>

<div id="aside2" class="aside">
</div>
</div>
<div id="footer" align="center">
<a href="shopcar.jsp">返回购物车</a>

</div>
</div>
</body>