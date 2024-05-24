<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
    <title>Delete House</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/styles.css">
</head>

<body>
<div class="info">
    <h1 class="info">Delete House Form</h1>

    <!-- Form to delete a house by ID -->
    <form id="deleteHouseForm">
        <label for="houseId">Enter House ID to Delete:</label>
        <input type="text" id="houseId" name="houseId" required>
        <button type="submit">Delete House</button>
    </form>

    <!-- Navigation buttons -->
    <div>
        <a href="http://localhost:8080/home.html" class="button-link"><button type="button">Home</button></a>
        <a href="http://localhost:8080/website/houses/list.html" class="button-link"><button type="button">See all houses</button></a>
    </div>
</div>

<script>
    // Event listener for the delete form submission
    document.getElementById("deleteHouseForm").addEventListener("submit", function(event) {
        event.preventDefault();  // Prevent the default form submission

        // Get the house ID from the input field
        var houseId = document.getElementById("houseId").value;

        // Log the retrieved house ID
        console.log("House ID:", houseId);

        // Make a DELETE request to the server
        fetch(`http://localhost:8080/website/houses/${houseId}`, {
            method: 'DELETE'
        })
            .then(response => {
                // Handle the response from the server
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
