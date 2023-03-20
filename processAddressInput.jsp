<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>

<% request.setCharacterEncoding("utf-8");%>

<%
   String iab = request.getParameter("iab");
   String name = request.getParameter("name");
   String email = request.getParameter("email");
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

         String sql= "insert into iab2 values (?,?,?,?)";
         pstmt=conn.prepareStatement(sql);
         pstmt.setString(1,iab);
         pstmt.setString(2,name);
         pstmt.setString(3,email);
         pstmt.setString(4,phone);
         pstmt.executeUpdate();

         out.println("응모가 완료되었습니다.");

        }catch(Exception e){
                e.printStackTrace();
                out.println("응모에 실패했습니다");

        }finally{
                if(pstmt != null)
                        try{pstmt.close();}catch(SQLException sqle){}
                if(conn != null)
                        try{conn.close();}catch(SQLException sqle){}
        }
 %>