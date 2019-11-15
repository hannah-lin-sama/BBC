<%@ tag pageEncoding="GB2312" %>
<%@ tag import="java.sql.*" %>
<%@ attribute name="number" required="true" %>
<%  String condition =
          "DELETE FROM reply WHERE reply_id ='"+number+"'";
    try{   Class.forName("com.mysql.jdbc.Driver");
    }
    catch(Exception e){} 
    Connection con;
    Statement sql; 
    ResultSet rs;
   try{  String uri=
        "jdbc:mysql://127.0.0.1/BBC?"+
         "user=root&password=&characterEncoding=gb2312";
         con=DriverManager.getConnection(uri);
         con=DriverManager.getConnection(uri,"root","");
         sql=con.createStatement();
         sql.executeUpdate(condition);
         con.close();
         out.println("¸ÃÆÀÂÛÒÑÉ¾³ý£¡");
    }
    catch(Exception e){
        out.print(""+e);
    }
%>
