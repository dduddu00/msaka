<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import = "java.sql.DriverManager" %>
<%@ page import = "java.sql.Connection" %>
<%@ page import = "java.sql.Statement" %>
<%@ page import = "java.sql.ResultSet" %>
<%@ page import = "java.sql.SQLException" %>

<%@ page import="java.sql.*"%>

<% request.setCharacterEncoding("utf-8");%>
<html>
    <head>
        <meta charset="utf-8" />
        <meta name="viewport"
            content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>배송 정보</title>

        <script src="https://kit.fontawesome.com/e8f495f95b.js"
            crossorigin="anonymous"></script>

        <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="css/favicon.ico" />
        <!-- Bootstrap icons-->
        <link rel="stylesheet" href="./resources/css/bootstrap.min.css" />
        <!-- Core theme CSS (includes Bootstrap)-->
                <link rel="stylesheet" href="./resources/css/styles.css"  />

      <style>
         h3{
            font-size: 28px;
            font-weight: bold;

         }
      </style>

        </head>
<body>
   <nav class="navbar navbar-expand-lg navbar-light bg-light">
      <div class="container px-4 px-lg-5">
         <div class="navbar_logo">
          <i class="fa-solid fa-cubes-stacked"></i>
          <a class="navbar-brand" href="main.jsp">Happydraw</a>
          </div>
          <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
          <div class="collapse navbar-collapse" id="navbarSupportedContent">
              <ul class="navbar-nav me-auto mb-2 mb-lg-0 ms-lg-4">
                  <li class="nav-item"><a class="nav-link active" aria-current="page" href="main.jsp">Home</a></li>
                  <li class="nav-item"><a class="nav-link" href="intro.jsp">기업 소개</a></li>
                  <li class="nav-item"><a class="nav-link" href="main.jsp">상품 목록</a></li>

                  <li class="nav-item dropdown">

                      <a class="nav-link dropdown-toggle" id="navbarDropdown" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">커뮤니티</a>
                      <ul class="dropdown-menu" aria-labelledby="navbarDropdown">

                          <li><a class="dropdown-item" href="board.jsp">공지사항</a></li>
                          <li><a class="dropdown-item" href="./qus.jsp">문의하기</a></li>


                      </ul>
                  </li>

              </ul>
              <%--장바구니 기능 --%>
              <form class="d-flex">
                  <a href="./search.jsp" class="btn btn-outline-dark mt-auto">응모 내역</a>
              </form>
          </div>
      </div>
  </nav>

   <header class="bg-dark py-5">
      <div class="container px-4 px-lg-5 my-5">
         <div class="text-center text-white">
            <h1 class="display-4 fw-bolder" >응모 내역</h1>
            <p class="lead fw-normal text-white-50 mb-0">이름, 핸드폰 번호를 입력하여 응모 내역을 확인하세요</p>
         </div>
      </div>
   </header>


   <section class="py-5">
      <div class="container px-4 px-lg-5 mt-5">
         <div class="container">

        <%
           String product = request.getParameter("product");
           String phone = request.getParameter("phone");

           Connection conn=null;
           PreparedStatement pstmt=null;
           String str="";
           ResultSet rs = null;
           try{
            String jdbcUrl="jdbc:mysql://database-1.cipuxsjd2tmb.ap-northeast-2.rds.amazonaws.com/happydraw";
            String dbId="team";
            String dbPass="Happydraw!";


                 Class.forName("com.mysql.jdbc.Driver");
                 conn=DriverManager.getConnection(jdbcUrl, dbId, dbPass);

                 String sql= "select * from "+ product + " WHERE phone='" + phone +"'";
                 pstmt=conn.prepareStatement(sql);
                 rs = pstmt.executeQuery();
                 if(rs.next()){


         %>


         <tr>
         <h3>상품</h3>
         <td><%=rs.getString("product") %></td>
         <br>
         <br>
         <br>
         <h3>이름</h3>
         <td><%=rs.getString("name") %></td>
         <br>
         <br>
         <br>
         <h3>이메일</h3>
         <td><%=rs.getString("email") %></td>
         <br>
         <br>
         <br>
         <h3>주소</h3>
         <td><%=rs.getString("address") %></td>
         <br>
         <br>
         <br>
         <h3>전화번호</h3>
         <td><%=rs.getString("phone") %></td>
         </tr>
         <br>

<%
      }else{
%>
              <h1 class="alert alert-danger">응모 내역이 존재하지 않습니다.</h1>
<%
      }
      }catch(Exception e){
              e.printStackTrace();
%>
              <h1 class="alert alert-danger">응모 내역이 존재하지 않습니다.</h1>
<%
      }finally{
              if(pstmt != null)
                      try{pstmt.close();}catch(SQLException sqle){}
              if(conn != null)
                      try{conn.close();}catch(SQLException sqle){}
      }
%>


      <br>
      <br>
      <br>
      <br>
   </div>
   </div>



   <hr>
   <%@ page import="java.util.Date"%>
   <footer class="container">
      <p>&copy; Happydraw</p>
      <br>
      <p>대표 : 박성호, 이강인, 양진영, 이경서, 최수연</p>
   </footer>
   <hr>
   <div class="text-center">
      <%

      Date day = new java.util.Date();
      String am_pm;
      int hour = day.getHours();
      int minute = day.getMinutes();
      int second = day.getSeconds();
      if (hour / 12 == 0) {
         am_pm = "AM";
      } else {
         am_pm = "PM";
         hour = hour - 12;
      }
      String CT = hour + ":" + minute + ":" + second + " " + am_pm;
      out.println("현재 접속  시각: " + CT + "\n");
      %>
   </div>
   <!-- Bootstrap core JS-->
   <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js"></script>
   <!-- Core theme JS-->
   <script src="js/scripts.js"></script>
</body>
</html>