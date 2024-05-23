<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Vacayz</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/styles.css">
</head>

<h1>Vacayz!</h1>
<h2>Your ultimate vacation house dealer</h2>
<p>You are customer number ${customerCount}</p>
<div class="image-container">
    <img src="/images/house.gif" alt="house">
</div>
<nav>
    <a href="http://localhost:8080/allHouses.html">See all houses</a>
    <a href="http://localhost:8080/newHouse.html">Add house</a>
    <a href="http://localhost:8080/houseInfo.html">House info</a>
</nav>