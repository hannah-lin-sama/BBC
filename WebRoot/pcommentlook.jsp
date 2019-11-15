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
	<title>查看评论</title>
	<link rel="StyleSheet" href="dtree.css" type="text/css" />
	<script type="text/javascript" src="dtree.js"></script>
	<style>table{text-align:center;}</style>
	<%@ include file="style.txt" %>
</head>

<body> 
    <div class="left">
    </br><%@ include file="dTree.txt" %>
    </div>
   <div id="right"><center>
   <% 
   String num=request.getParameter("number");
 	if(num==null)
 	 num="";
  byte []bb=num.getBytes("iso-8859-1");
  num=new String(bb);
   Connection con;
    Statement sql; 
    ResultSet rs;
    try{  Class.forName("com.mysql.jdbc.Driver");
    }
    catch(Exception e){}
    try { String uri= "jdbc:mysql://127.0.0.1/BBC";
          String user="root";
          String password="";
          con=DriverManager.getConnection(uri,user,password);
          //也可以写成con=DriverManager.getConnection(uri+"?user=root&password=");
          sql=con.createStatement();
          rs=sql.executeQuery("SELECT * FROM reply where fid="+"'"+num+"'");
          out.print("评论详情");
          out.print("<table border=1>");
          out.print("<tr>");
            out.print("<th width=50>"+"帖子号");
            out.print("<th width=100>"+"评论者");
            out.print("<th width=100>"+"评论号");
            out.print("<th width=350>"+"评论内容");
            out.print("<th width=180>"+"评论日期");
            out.print("<th width=250>"+"操作");           
          out.print("</TR>");
          String button="<form action='pcommentdel.jsp' method=post>"+
          "<input type='text' name='number'>"+
          "<input type='submit' name='g' value='删除'>";
          while(rs.next()){
            out.print("<tr>");
              out.print("<td >"+rs.getString(6)+"</td>"); 
              out.print("<td >"+rs.getString(5)+"</td>");
              out.print("<td >"+rs.getString(1)+"</td>");
              out.print("<td >"+rs.getString(2)+"</td>");
              out.print("<td >"+rs.getDate("reply_time")+"</td>");
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
