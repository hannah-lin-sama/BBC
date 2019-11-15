<%@ page contentType="text/html;charset=UTF-8"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<html>
<head>
	<meta http-equiv="Content-Type" content="text/html charset=UTF-8">
	<title>后台管理页面</title>
	<link rel="StyleSheet" href="dtree.css" type="text/css" />
	<script type="text/javascript" src="dtree.js"></script>
	<%@ include file="style.txt" %>
</head>

<body>
<div class="parent">
    <div class="top">
    <%@ include file="head.txt" %>
    <br></br>
    </div>
    
    <div class="left">
    <br></br><%@ include file="dTree.txt" %>
    </div>
    
    <div class="right">
    <br></br><div class="inner">
    <iFrame name="iFrame" style="width: 95%;height:100%;"></></div>
    </div>
    
    <div class="bottom">
    <br></br>
    </div>
</div>
</body>
</html>