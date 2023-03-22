<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>

<% request.setCharacterEncoding("utf-8");%>

<%
   String table = request.getParameter("table");
   String product = request.getParameter("table");
   String name = request.getParameter("name");
   String email = request.getParameter("email");
   String address1 = request.getParameter("address1");
   String address2 = request.getParameter("address2");
   String address = address1+address2;
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

         String sql= "insert into "+ table +" values (?,?,?,?,?)";
         pstmt=conn.prepareStatement(sql);
         pstmt.setString(1,product);
         pstmt.setString(2,name);
         pstmt.setString(3,email);
         pstmt.setString(4,address);
         pstmt.setString(5,phone);
         pstmt.executeUpdate();


         pageContext.forward("main.jsp");

         
        }catch(Exception e){
                e.printStackTrace();
                pageContext.forward("main.jsp");
        %>
                <h1 class="alert alert-danger">응모에 실패했습니다.</h1>
<%
        }finally{
                if(pstmt != null)
                        try{pstmt.close();}catch(SQLException sqle){}
                if(conn != null)
                        try{conn.close();}catch(SQLException sqle){}
        }
 %>