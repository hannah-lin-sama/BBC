<%@ page contentType="text/html;charset=UTF-8"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib tagdir="/WEB-INF/tags" prefix="com" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
 <head>
	<meta http-equiv="Content-Type" content="text/html charset=UTF-8">
	<title>后台管理页面</title>
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
  <div id="right">
  <% String num=request.getParameter("number");
 	if(num==null)
 	 num="";
  byte []bb=num.getBytes("iso-8859-1");
  num=new String(bb); %>
  <com:pcommentDel number="<%=num %>"/>
  </div>
  </body>
</html>
