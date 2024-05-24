<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
    <title>Delete House</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/styles.css">
</head>

<body>
<div class="info">
    <h1 class="info">Delete a House</h1>

    <form id="deleteHouseForm">
        <label for="houseId">Enter House ID to Delete:</label>
        <input type="text" id="houseId" name="houseId" required>
        <button type="submit">Delete House</button>
    </form>

    <div class="button-container">
        <a href="http://localhost:8080/home.html" class="button-link"><button>Home</button></a>
        <a href="http://localhost:8080/website/houses/list.html" class="button-link"><button>See all houses</button></a>
    </div>
</div>

<script>
    document.getElementById("deleteHouseForm").addEventListener("submit", function(event) {
        event.preventDefault();
        const houseId = document.getElementById("houseId").value;

        fetch(`http://localhost:8080/website/houses/${house.id}`, {
            method: 'DELETE'
        })
            .then(response => {
                if (response.status === 204) {
                    alert("House deleted successfully.");
                } else if (response.status === 404) {
                    alert("House not found.");
                } else {
                    alert("An error occurred.");
                }
            })
            .catch(error => {
                console.error('Error:', error);
                alert("An error occurred.");
            });
    });
</script>

</body>
</html>
