<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>

<% request.setCharacterEncoding("utf-8");%>

<%
   String title= request.getParameter("title");
   String content = request.getParameter("content");
   Timestamp wdate=new Timestamp(System.currentTimeMillis());


   Connection conn=null;
   PreparedStatement pstmt=null;
   String str="";
   try{   
     String jdbcUrl="jdbc:mysql://192.168.21.10/test";
     String dbId="testuser";
     String dbPass="1234";

         Class.forName("com.mysql.jdbc.Driver");
         conn=DriverManager.getConnection(jdbcUrl, dbId, dbPass);

         String sql= "insert into board values (?,?,?)";
         pstmt=conn.prepareStatement(sql);
         pstmt.setString(1,title);
         pstmt.setString(2,content);
         pstmt.setTimestamp(3,wdate);


         pstmt.executeUpdate();

        pageContext.forward("./board.jsp");

        }catch(Exception e){
                e.printStackTrace();
                out.println("응모에 실패했습니다");
                out.println(title);
                out.println(content);

        }finally{
                if(pstmt != null)
                        try{pstmt.close();}catch(SQLException sqle){}
                if(conn != null)
                        try{conn.close();}catch(SQLException sqle){}
        }
    
 %>