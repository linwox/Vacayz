<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<head>
    <title>House Info</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/styles.css">
</head>
<body>
<h1 class="info">Info for house ${house.objectId}</h1>

<div class="houseinfo">
    <table>
        <tr>
            <th>Field</th>
            <th>Value</th>
        </tr>
        <tr>
            <td>ID</td>
            <td>${house.id}</td>
        </tr>
        <tr>
            <td>House ID</td>
            <td>${house.objectId}</td>
        </tr>
        <tr>
            <td>Address</td>
            <td>${house.address}</td>
        </tr>
        <tr>
            <td>Area</td>
            <td>${house.area}</td>
        </tr>
        <tr>
            <td>Location</td>
            <td>${house.location}</td>
        </tr>
        <tr>
            <td>Max Guests</td>
            <td>${house.maxGuests}</td>
        </tr>
        <tr>
            <td>Available</td>
            <td>${house.available}</td>
        </tr>
    </table>

    <img class="houseimage" src="${house.imageUrl}" alt="house image">
</div>

<div>
    <a href="http://localhost:8080/website/houses/list.html" class="button-link">
        <button>See all houses</button>
    </a>
    <a href="http://localhost:8080/home.html" class="button-link">
        <button>Home</button>
    </a>
</div>
</body>

