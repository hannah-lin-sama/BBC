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
	<title>查看用户</title>
	<link rel="StyleSheet" href="dtree.css" type="text/css" />
	<script type="text/javascript" src="dtree.js"></script>
	<style>table{text-align:center;}</style>
	<%@ include file="style.txt" %>
</head>
 
  <body>
  <div class="parent">
    <div class="top">
    <%@ include file="head.txt" %>
    <br></br>
    </div>
    
    <div class="left">
   <%@include file="dTree.txt"%>  </div>
   
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
          rs=sql.executeQuery("SELECT * FROM posts");
          out.print("<br>");
          out.println("\n<h2>帖子信息<h2>");
          out.print("<table border=1>");
         out.print("<br>");
          out.print("<tr>");
            out.print("<th width=50>"+"帖子");
            out.print("<th width=180>"+"标题");     
            out.print("<th width=400>"+"内容");     
            out.print("<th width=120>"+"发表时间");
            out.print("<th width=100>"+"作者");
			out.print("<th width=230>"+"操作");
          out.print("</TR>");
            String button="<form action='postsdel02.jsp' method=post>"+
            "<input type='text' name='number'>"+
            "<input type='submit' value='删除'></form>";
          while(rs.next()){
            out.print("<tr>");
              out.print("<td >"+rs.getString(1)+"</td>"); 
              out.print("<td >"+rs.getString(2)+"</td>");
              out.print("<td >"+rs.getString(3)+"</td>");
               out.print("<td >"+rs.getDate("create_time")+"</td>");
               out.print("<td >"+rs.getString(6)+"</td>");
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
