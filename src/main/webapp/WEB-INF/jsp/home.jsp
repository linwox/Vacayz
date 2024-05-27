<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Vacayz</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/styles.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Pacifico&display=swap" rel="stylesheet">
</head>

<h1 class="siteName">Vacayz!</h1>
<h2>Cozy stays with Vacays!</h2>
<p>You are customer number ${customerCount}</p>
<div class="image-container">
    <img src="/images/house.gif" alt="house">
</div>
<div class="button-container">
    <a href="http://localhost:8080/website/houses/list.html" class="button-link"><button>See all houses</button></a>
    <a href="http://localhost:8080/website/houses/newHouse.html" class="button-link"><button>Add house</button></a>
    <a href="http://localhost:8080/website/houses/deleteHouse" class="button-link"><button>Delete house</button></a>
</div>
