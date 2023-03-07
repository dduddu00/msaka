<%@ page contentType="text/html; charset=utf-8"%>
<nav class="navbar navbar-expand-lg navbar-light bg-light">
            <div class="container px-4 px-lg-5">
            	<div class="navbar_logo">
            	<i class="fas fa-paw"></i>
                <a class="navbar-brand" href="main.jsp">MAESTRO</a>
                </div>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav me-auto mb-2 mb-lg-0 ms-lg-4">
                        <li class="nav-item"><a class="nav-link active" aria-current="page" href="main.jsp">Home</a></li>
                        <li class="nav-item"><a class="nav-link" href="intro.jsp">기업 소개</a></li>
                        <ul class="navbar-nav mr-auto"><li class="nav-item"><a class="nav-link" href="./product.jsp">상품 목록</a></li></ul>
                       	
                       <li class="nav-item dropdown">
                        
                            <a class="nav-link dropdown-toggle" id="navbarDropdown" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">상품 관리</a>
                            <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                            	<li class="dropdown-item"><a class="nav-link" href="./addProduct.jsp">상품 등록</a></li>
                            	<li class="dropdown-item"><a class="nav-link" href="./editProduct.jsp?edit=update">상품 수정</a></li>
                            	<li class="dropdown-item"><a class="nav-link" href="./editProduct.jsp?edit=delete">상품 삭제</a></li>
                            	
                            </ul>
                        </li>
                       
                       
                       
                        <li class="nav-item dropdown">
                        
                            <a class="nav-link dropdown-toggle" id="navbarDropdown" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">회원 관리</a>
                            <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                            	
                                <li><a class="dropdown-item" href="join.jsp">회원가입</a></li>
                                <li><a class="dropdown-item" href="logout.jsp">로그아웃</a></li>
                                
                                
                            </ul>
                        </li>
                        
                    </ul>
                    <%--장바구니 기능 --%>
                    <form class="d-flex">
                        <a href="./login.jsp" class="btn btn-outline-dark mt-auto">로그인</a>
                        <a href="./cart.jsp" class="btn btn-outline-dark mt-auto">Cart</a>
                    </form>
                </div>
                
            </div>
        </nav>