<%@ page contentType="text/html;charset=UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="com.yxq.valuebean.GoodsSingle"%>

<%
            String username="sa";
            String password="123456";
            String url="jdbc:sqlserver://localhost:1433;DatabaseName=book";
            Connection conn=null;											
            ResultSet rs=null; 
            ArrayList goodslist=new ArrayList();
            int i=0;

            Class.forName( "com.microsoft.sqlserver.jdbc.SQLServerDriver");
            conn=DriverManager.getConnection(url,username,password);
            Statement stm= conn.createStatement();
            rs = stm.executeQuery("select * from Table_1");
                while(rs.next()){
                     GoodsSingle single=new GoodsSingle();
                     single.setPicture(rs.getString(1)); 
                     single.setName(rs.getString(2)); 					//封装商品名称信息
                     single.setPrice( Float.parseFloat(rs.getString(3))); 				//封装商品价格信息
                     single.setNum(1); 							//封装购买数量信息
                     goodslist.add(i,single);
                     i++;
                }
            
            stm.close();
            session.setAttribute("goodslist",goodslist); 		//保存商品列表到session中
	        response.sendRedirect("first.jsp");
        
%>
