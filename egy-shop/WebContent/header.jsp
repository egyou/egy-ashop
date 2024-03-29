<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>     
     <header class="main_menu home_menu">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-lg-12">
                    <nav class="navbar navbar-expand-lg navbar-light">
                        <a class="navbar-brand" href="index.jsp"> <img src="img/logo.png" alt="logo"> </a>
                        <button class="navbar-toggler" type="button" data-toggle="collapse"
                            data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                            aria-expanded="false" aria-label="Toggle navigation">
                            <span class="menu_icon"><i class="fas fa-bars"></i></span>
                        </button>

                        <div class="collapse navbar-collapse main-menu-item" id="navbarSupportedContent">
                            <ul class="navbar-nav">
                                <li class="nav-item">
                                    <a class="nav-link" href="index.jsp">Home</a>
                                </li>
                                <li class="nav-item dropdown">
                                    <a class="nav-link dropdown-toggle" href="blog.jsp" id="navbarDropdown_1"
                                        role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                        Shop
                                    </a>
                                    <div class="dropdown-menu" aria-labelledby="navbarDropdown_1">
                                        <a class="dropdown-item" href="category.jsp"> shop category</a>
                                        <a class="dropdown-item" href="single-product.jsp">product details</a>
                                        
                                    </div>
                                </li>
                                <li class="nav-item dropdown">
                                    <a class="nav-link dropdown-toggle" href="blog.jsp" id="navbarDropdown_3"
                                        role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                        pages
                                    </a>
                                    <div class="dropdown-menu" aria-labelledby="navbarDropdown_2">
                                    <c:if test="${login == null }">
										 <a class="dropdown-item" href="login.jsp"> login</a>
									</c:if>                                       
                                        <a class="dropdown-item" href="member-list.do">member list</a>
                                        <a class="dropdown-item" href="checkout.jsp">product checkout</a>
                                        <a class="dropdown-item" href="cart.jsp">shopping cart</a>
                                        <a class="dropdown-item" href="confirmation.jsp">confirmation</a>
                                        <a class="dropdown-item" href="elements.jsp">elements</a>
                                    </div>
                                </li>
                                <li class="nav-item dropdown">
                                    <a class="nav-link dropdown-toggle" href="blog.jsp" id="navbarDropdown_2"
                                        role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                        blog
                                    </a>
                                    <div class="dropdown-menu" aria-labelledby="navbarDropdown_2">
                                        <a class="dropdown-item" href="blog.jsp"> blog</a>
                                        <a class="dropdown-item" href="single-blog.jsp">Single blog</a>
                                    </div>
                                </li>
                                
                                <li class="nav-item">
                                    <a class="nav-link" href="contact.jsp">Contact</a>
                                </li>
                            </ul>
                        </div>
                        <div class="hearer_icon d-flex">
                            <a id="search_1" href="javascript:void(0)"><i class="ti-search"></i></a>
                            <c:choose>
                            <c:when test="${login == null }">
                            	<a href="login.jsp"><i class="ti-heart-broken"></i></a>
                            </c:when>
                            <c:otherwise>
                            	<a href="info.jsp"><i class="ti-user"></i></a>
                            	<a href="logout.jsp"><i class="ti-arrow-right"></i></a>
                            </c:otherwise>
                            </c:choose>
                            <%--
                            <c:choose>
                            <c:when test="${login == null }">
                            	<c:set var="loginInfo" scope="session" value = "fail"/>
                            </c:when>
                            <c:otherwise>
                            	<c:set var="loginInfo" scope="session" value="${login }"/>
                            </c:otherwise>
                            </c:choose>
                            <c:choose>
                            <c:when test="${'success' eq loginInfo  }">
                            	<a href="info.jsp"><i class="ti-user"></i></a>
                            	<a href="logout.jsp"><i class="ti-arrow-right"></i></a>
                            </c:when>
                            <c:otherwise>
                            	<a href="login.jsp"><i class="ti-heart-broken"></i></a>
                            </c:otherwise>
                            </c:choose>
                             --%>
                            <%--
                            <%
                            	String loginInfo = (String) session.getAttribute("login");
                            	if(loginInfo != null && loginInfo.equals("success") ) { 
                            %>
                            		<a href="info.jsp"><i class="ti-user"></i></a>
                            		<a href="logout.jsp"><i class="ti-arrow-right"></i></a>
                            <%                            		
                            	}
                            	else {
                            %>
                            		<a href="login.jsp"><i class="ti-heart-broken"></i></a>
                            <%		
                            	}                            		
                            %>                            
                             --%>
                            <div class="dropdown cart">
                                <a class="dropdown-toggle" href="#" id="navbarDropdown3" role="button"
                                    data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                    <i class="fas fa-cart-plus"></i>
                                </a>
                                <!-- <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                    <div class="single_product">
    
                                    </div>
                                </div> -->
                                
                            </div>
                        </div>
                    </nav>
                </div>
            </div>
        </div>
        <div class="search_input" id="search_input_box">
            <div class="container ">
                <form class="d-flex justify-content-between search-inner">
                    <input type="text" class="form-control" id="search_input" placeholder="Search Here">
                    <button type="submit" class="btn"></button>
                    <span class="ti-close" id="close_search" title="Close Search"></span>
                </form>
            </div>
        </div>
    </header>
