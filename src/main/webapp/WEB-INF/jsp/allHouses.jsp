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
        <li>${house}</li>
    </c:forEach>
</ul>
</body>
</html>
