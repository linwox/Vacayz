<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
    <title>Vacayz</title>
</head>

<body>
<h1>All houses</h1>

<ul>
    <c:forEach items="${houses}" var="house">
        <li>
            <a href="http://localhost:8080/website/houses/house/${house.objectId}">${house}</a>
        </li>

    </c:forEach>
</ul>
</body>
</html>

<nav>
    <a href="http://localhost:8080/home.html">Home</a>
    <a href="http://localhost:8080/website/houses/newHouse.html">Add house</a>
</nav>

