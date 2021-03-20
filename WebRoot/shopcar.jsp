<%@ page contentType="text/html;charset=UTF-8"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="com.yxq.valuebean.GoodsSingle" %>
<!-- 通过动作标识，获取ShopCar类实例 -->
<jsp:useBean id="myCar" class="com.yxq.toolbean.ShopCar" scope="session" />
<% 
	ArrayList buylist=myCar.getBuylist();		//获取实例中用来存储购买的商品的集合
	float total=0;								//用来存储应付金额
%>

<head>
  <title>购物车</title>
  <style>
    * {
      margin: 0;
      padding: 0;
    }

    body {
      font-size: 14px;
    }

    #container {
      margin: 0 auto;
      width: 100%;
    }

    #header {
      height: 100px;
      width: 100%;
      background: #ffd780;
      margin-bottom: 5px;
    }
    #main {
      width: 100%;
      height: 500px;
      margin-bottom: 5px;
      background: #ffec80;
    }

    .aside {
      float: left;
      width: 30%;
      height: 100%;
      background: #ffec80;
    }

    #content {
      float: left;
      width: 40%;
      height: 500px;
      background: #ffec80;

    }

    #footer {
      height: 50px;
      width: 100%;
      background: #ffec80;
    }

    a {
      font-size: 20px;
      text-align: center;
      margin: 3px;
    }

    a:link,
    a:visited {
      color: #A62020;
      padding: 15px 20px 15px 20px;
      background-color: #ecd8bd;
      text-decoration: none;

      border-top: 1px solid #EEEEEE;
      border-left: 1px solid #EEEEEE;
      border-bottom: 1px solid #717171;
      border-right: 1px solid #717171;
    }

    a:hover {
      color: 3821818;
      padding: 5px 8px 3px 12px;
      background-color: #e2c4c9;
      border-top: 1px solid #717171;
      border-left: 1px solid #717171;
      border-bottom: 1px solid #EEEEEE;
      border-right: 1px solid #EEEEEE;
    }

    td {
      border: 1px solid #fff7e6;
    }
  </style>
</head>

<body>
  <div id="container">
    <div id="header" align="center">
        <div class="shang">
          <img src="picture/gou.PNG" width="150" height="150" border="0" />
          <img src="picture/wu.PNG" width="150" height="150" border="0" />
          <img src="picture/che.PNG" width="150" height="150" border="0" />
      </div>
    </div>
    <div id="main">
      <div id="aside1" class="aside" align="center"></div>
      <div id="content">
        <table border="1" width="100%" rules="none" cellspacing="0" cellpadding="0">
          <tr align="center" height="50" bgcolor="#ffd900">
            <td width="16%">名称</td>
            <td>价格(元/本)</td>
            <td>数量</td>
            <td>总价(元)</td>
            <td>移除(-1/次)</td>
          </tr>
          <%	if(buylist==null||buylist.size()==0){ %>
          <tr height="350">
            <td colspan="5" align="center">您的购物车为空！</td>
          </tr>
          <% 
		}
		else{
			for(int i=0;i<buylist.size();i++){
				GoodsSingle single=(GoodsSingle)buylist.get(i);
				
				String name=single.getName();							//获取商品名称
				String picture=single.getPicture();
				float price=single.getPrice();							//获取商品价格
				int num=single.getNum();								//获取购买数量				
				float money=((int)((price*num+0.05f)*10))/10f;			//计算当前商品总价，并进行四舍五入
				total+=money;											//计算应付金额
	%>
          <tr align="center" height="50">
           
           <td><%=name%></td>
            <td><%=price%></td>
            <td><%=num%></td>
            <td><%=money%></td>
            <td>
              <a href="docar.jsp?action=remove&id=<%=i%>">移除</a>
            </td>
          </tr>
          <%							
			}
		}
	%>
          <tr height="50" align="center">
            <td colspan="5">应付金额：<%=total%></td>
            <td><a href="buy.jsp">结算</a></td>
          </tr>
        </table>
      </div>
      <div id="aside2" class="aside">
        <img src="picture/xiaoren.png" width="400" height="500" border="0" />
      </div>
    </div>
    <div id="footer" align="center">
      <a href="first.jsp">继续购物</a>
      <a href="docar.jsp?action=clear">清空购物车</a>
    </div>
  </div>
</body>