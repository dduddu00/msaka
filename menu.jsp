<%@ page contentType="text/html; charset=utf-8"%>

<nav class="navbar navbar-expand-lg navbar-light bg-light">
            <div class="container px-4 px-lg-5">
            	<div class="navbar_logo">
            	<i class="fas fa-paw"></i>
                <a class="navbar-brand" href="main.jsp">Woof Woof</a>
                </div>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav me-auto mb-2 mb-lg-0 ms-lg-4">
                        <li class="nav-item"><a class="nav-link active" aria-current="page" href="main.jsp">Home</a></li>
                        <li class="nav-item"><a class="nav-link" href="intro.jsp">Í∏∞ÏóÖ ?ÜåÍ∞?</a></li>
                        <ul class="navbar-nav mr-auto"><li class="nav-item"><a class="nav-link" href="./product.jsp">?ÉÅ?íà Î™©Î°ù</a></li></ul>
                       	
                       <li class="nav-item dropdown">
                        
                            <a class="nav-link dropdown-toggle" id="navbarDropdown" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">?ÉÅ?íà Í¥?Î¶?</a>
                            <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                            	<li class="dropdown-item"><a class="nav-link" href="./addProduct.jsp">?ÉÅ?íà ?ì±Î°?</a></li>
                            	<li class="dropdown-item"><a class="nav-link" href="./editProduct.jsp?edit=update">?ÉÅ?íà ?àò?†ï</a></li>
                            	<li class="dropdown-item"><a class="nav-link" href="./editProduct.jsp?edit=delete">?ÉÅ?íà ?Ç≠?†ú</a></li>
                            	
                            </ul>
                        </li>
                       
                       
                       
                        <li class="nav-item dropdown">
                        
                            <a class="nav-link dropdown-toggle" id="navbarDropdown" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">?öå?õê Í¥?Î¶?</a>
                            <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                            	
                                <li><a class="dropdown-item" href="join.jsp">?öå?õêÍ∞??ûÖ</a></li>
                                <li><a class="dropdown-item" href="logout.jsp">Î°úÍ∑∏?ïÑ?õÉ</a></li>
                                
                                
                            </ul>
                        </li>
                        
                    </ul>
                    <%--?û•Î∞îÍµ¨?ãà Í∏∞Îä• --%>
                    <form class="d-flex">
                        <a href="./login.jsp" class="btn btn-outline-dark mt-auto">Î°úÍ∑∏?ù∏</a>
                        <a href="./cart.jsp" class="btn btn-outline-dark mt-auto">Cart</a>
                    </form>
                </div>
                
            </div>
        </nav>