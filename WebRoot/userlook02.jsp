<%@ page contentType="text/html;charset=UTF-8"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="com.bbs.bean.ShowRecordByPage" %>
<jsp:useBean id="look" class="com.bbs.bean.ShowRecordByPage" scope="session"/>
<jsp:setProperty name="look" property="databaseName" value="BBC"/>
<jsp:setProperty name="look" property="tableName" value="user"/>
<jsp:setProperty name="look" property="user" value="root"/>
<jsp:setProperty name="look" property="password" value=""/>
 <jsp:setProperty name="look" property="pageSize" value="8"/>
<HTML>
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
<div class="right">
<center>
    <br/> 数据库
     <jsp:getProperty  name= "look" property="databaseName"/>中
     <jsp:getProperty  name= "look" property="tableName"/>表的记录将被分页显示。
<br>共有 <jsp:getProperty name="look" property="pageAllCount"/> 页，
    每页最多显示<jsp:getProperty  name="look"  property="pageSize" />条记录。
   <jsp:setProperty  name= "look"  property="showPage"  />
  <jsp:getProperty  name= "look"  property="presentPageResult" />
  <BR>单击“前一页”或“后一页”按纽查看记录（当前显示第
  <jsp:getProperty  name= "look"  property="showPage" /> 页）。
 <Table>
  <tr><td><FORM action="">
        <Input type=hidden name="showPage" value="<%=look.getShowPage()-1 %>" >
        <Input type=submit name="g" value="前一页">
        </FORM>
      </td>
      <td><FORM action="">
        <Input type=hidden name="showPage" value="<%=look.getShowPage()+1 %>" >
        <Input type=submit name="g" value="后一页">
        </Form>
      </td>
      <td> <FORM action="">
           输入页码：<Input type=text name="showPage" size=5 >
           <Input type=submit name="g" value="提交">
           </FORM>
      </td>
  </tr>
  </Table></center>
  </div>
</BODY>
</HTML>
