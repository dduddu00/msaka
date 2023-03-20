<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>

<% request.setCharacterEncoding("utf-8");%>

<%
   String phone = request.getParameter("phone");

   Connection conn=null;
   PreparedStatement pstmt=null;
   String str="";
   try{   
     String jdbcUrl="jdbc:mysql://192.168.23.100/happydraw";
     String dbId="root";
     String dbPass="1234";

         Class.forName("com.mysql.jdbc.Driver");
         conn=DriverManager.getConnection(jdbcUrl, dbId, dbPass);

         String sql= "SELECT * FROM address WHERE phone=?";
         pstmt=conn.prepareStatement(sql);
         pstmt.setString(1,phone);
         pstmt.executeUpdate();

        pageContext.forward("search.jsp");

        }catch(Exception e){
                e.printStackTrace();
                out.println("응모에 실패했습니다");
                out.println(phone);
  
        }finally{
                if(pstmt != null)
                        try{pstmt.close();}catch(SQLException sqle){}
                if(conn != null)
                        try{conn.close();}catch(SQLException sqle){}
        }
 %>
