<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ page isELIgnored="false" %> 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
    <head>
        <title>Hungry's Adda</title>
    </head>
    <body>
        <jsp:include page="header.jsp"/>
        <%-- <h2>${message}</h2> --%>
        <section class="hero">
            <div class="caption">
                <h3>Hungry's Adda</h3>
                <h4>
                    <span class="rsep"></span>
                    A Smart Cuisine for Hunger
                    <span class="lsep"></span>
                </h4>
            </div>
        </section>
        <section class="menu">
            <div class="wrapper">
                <div class="menu_title">
                    <h2>What we deliver!</h2>
                </div>
                <div class="mean_menu">
                    <article class="lmenu">
                        <c:forEach var ="category" items="${leftCategories}">
                            <c:if test="${not empty category.products}">
                                <h3 style="color: crimson;">${category.categoryName}</h3><br>
                                <ul>							
                                    <c:forEach var="product" items="${category.products}">
                                        <li>
                                            <div class="item_info">
                                                <h3 class="item_name">${product.productName}</h3>
                                                <p class="item_desc">${product.description}</p>
                                            </div>				
                                            <div>
                                                <h4 class="price">&#x20b9;${product.price}</h4>
                                                <a class="addtocart btn btn-danger" href="addToCart?productId=${product.productId}">Add To Cart</a>
                                            </div>
                                            <!-- <span class="separator"></span> -->
                                        </li>
                                    </c:forEach>
                                </ul>
                            </c:if>
                        </c:forEach>
                    </article>
                    <article class="rmenu">
                        <c:forEach var ="category" items="${rightCategories}">
                            <c:if test="${not empty category.products}">
                                <h3 style="color:crimson;">${category.categoryName}</h3><br>
                                <ul>							
                                    <c:forEach var="product" items="${category.products}">
                                        <li>
                                            <div class="item_info">
                                                <h3 class="item_name">${product.productName}</h3>
                                                <p class="item_desc">${product.description}</p>
                                            </div>				
                                            <h4 class="price">&#x20b9;${product.price}</h4>
                                            <c:if test="${category.categoryName ne 'Beers' }">
                                                <a class="addtocart btn btn-danger" href="addToCart?productId=${product.productId}">Add To Cart</a>
                                            </c:if>
                                            <!-- <span class="separator"></span> -->
                                        </li>
                                    </c:forEach>
                                </ul>
                            </c:if>
                        </c:forEach>
                    </article>
                </div>
            </div>
        </section>
        <jsp:include page="footer.jsp"/>
    </body>
</html>
