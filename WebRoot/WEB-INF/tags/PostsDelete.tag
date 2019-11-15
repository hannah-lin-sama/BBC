<%@ tag pageEncoding="GB2312" %>
<%@ tag import="java.sql.*" %>
<%@ attribute name="number" required="true" %>
<%  String condition =
          "DELETE FROM posts WHERE fid='"+number+"'";
          String condition1 =
          "DELETE FROM reply WHERE fid='"+number+"'";
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
         sql.executeUpdate(condition1);
         con.close();
         out.println("该帖子以及所涉及的评论都已删除！");
    }
    catch(Exception e){
        out.print(""+e);
    }
%>
