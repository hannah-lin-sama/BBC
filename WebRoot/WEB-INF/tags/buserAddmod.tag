<%@ tag pageEncoding="GB2312" %>
<%@ tag import="java.sql.*" %>
<%@ attribute name="number" required="true" %>
<%  
    String condition="UPDATE user set isBlack='1'"+"WHERE user_id="+"'"+number+"'";
    try{   Class.forName("com.mysql.jdbc.Driver");
    }
    catch(Exception e){} 
    Connection con;
    Statement sql; 
    ResultSet rs;
   try{  String uri=
        "jdbc:mysql://127.0.0.1/BBC?"+
         "user=root&password=&characterEncoding=gbk";
         con=DriverManager.getConnection(uri);
         sql=con.createStatement();
         sql.executeUpdate(condition);
         con.close();
         out.print("已加入黑名单！");
   }
   catch(Exception e){
         out.print(""+e);
   }
%>
