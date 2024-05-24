<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
    <title>Vacayz</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/styles.css">
</head>

<body>
<div class="container">
    <h1>All houses</h1>

    <ul>
        <c:forEach items="${houses}" var="house">
            <li>
                <a href="http://localhost:8080/website/houses/house/${house.objectId}">${house}</a>
            </li>
        </c:forEach>
    </ul>

    <div class="button-container">
        <a href="http://localhost:8080/home.html" class="button-link">Home</a>
        <a href="http://localhost:8080/website/houses/newHouse.html" class="button-link">Add house</a>
    </div>
</div>
</body>
</html>
