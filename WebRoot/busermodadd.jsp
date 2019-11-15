<%@ page contentType="text/html;charset=UTF-8"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
 <head>
	<meta http-equiv="Content-Type" content="text/html charset=UTF-8">
	<title>加入黑名单</title>
	<link rel="StyleSheet" href="dtree.css" type="text/css" />
	<script type="text/javascript" src="dtree.js"></script>
	<style>table{text-align:center;}</style>
	<%@ include file="style.txt" %>
</head>

<body>
<div class="parent">
    <div class="top">
    <%@ include file="head.txt" %>
    <br>
    </div>
    
    <div class="left">
    </br><%@ include file="dTree.txt" %>
    </div>  
    <div id="right"><center>
     <% Connection con;
    Statement sql; 
    ResultSet rs;
    try{  Class.forName("com.mysql.jdbc.Driver");
    }
    catch(Exception e){}
    try { String uri= "jdbc:mysql://127.0.0.1/bbc";
          String user="root";
          String password="";
          con=DriverManager.getConnection(uri,user,password);
          //也可以写成con=DriverManager.getConnection(uri+"?user=root&password=");
          sql=con.createStatement();
          rs=sql.executeQuery("SELECT * FROM user where isAdmin=0 and isBlack=0 ");
          out.print("<br>");
          out.println("\n<h2>普通用户信息<h2>");
          out.print("<table border=1>");
         out.print("<br>");
          out.print("<tr>");
            out.print("<th width=100>"+"用户ID");
            out.print("<th width=100>"+"用户名");
            out.print("<th width=100>"+"性别");
            out.print("<th width=100>"+"用户头像");
			out.print("<th width=300>"+"操作");
          out.print("</TR>");
            String button="<form action='busermodadd02.jsp' method=post>"+
            "<input type='text' name='number'>"+
            "<input type='submit' value='加入黑名单'></form>";
          while(rs.next()){
            out.print("<tr>");
              out.print("<td >"+rs.getString(1)+"</td>"); 
              out.print("<td >"+rs.getString(2)+"</td>");
               out.print("<td >"+rs.getString(4)+"</td>");
               out.print("<td >"+rs.getString(5)+"</td>"); 
               out.print("<td>"+button+"</td>");  
            out.print("</tr>") ; 
          }
          out.print("</table>");
          con.close();
    }
    catch(SQLException e){ 
          out.print(e);
    }
 %></center>
    </div>
  </body>
</html>
