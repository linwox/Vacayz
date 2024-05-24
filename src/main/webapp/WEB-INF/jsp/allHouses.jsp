<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
    <title>Vacayz</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/styles.css">
</head>

<body>
<div class="info">
    <h1 class="info">All houses</h1>

    <ul>
        <c:forEach items="${houses}" var="house">
            <li>
                <a href="http://localhost:8080/website/houses/house/${house.objectId}">${house}</a>
            </li>
        </c:forEach>
    </ul>

    <div>
        <a href="http://localhost:8080/website/houses/json" class="button-link"><button>JSON list</button></a>
    </div>
    <div>
        <a href="http://localhost:8080/home.html" class="button-link"><button>Home</button></a>
        <a href="http://localhost:8080/website/houses/newHouse.html" class="button-link"><button>Add house</button></a>
        <a href="http://localhost:8080/website/houses/newHouse.html" class="button-link"><button>Delete house</button></a>
    </div>
</div>
</body>
</html>
