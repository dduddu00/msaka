<%@ page contentType="text/html; charset=utf-8"%>
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
                        <li class="nav-item"><a class="nav-link" href="add.jsp">상품 등록</a></li>
                       
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
                        <a href="./address.jsp" class="btn btn-outline-dark mt-auto">배송지 입력</a>
                    </form>
                </div>
                
            </div>
        </nav>