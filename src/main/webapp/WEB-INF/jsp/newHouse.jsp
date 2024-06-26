<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>New House</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/styles.css">
</head>
<body>

<form id="houseForm" action="http://localhost:8080/website/houses/json" method="post">
<h1 class="info">New House Registration</h1>
    <h2 class="info">With JSON</h2>
    <div>
        <textarea cols="40" rows="15" id="jsonData" name="jsonData" placeholder="Enter JSON object here"></textarea>
    </div>
    <input class="sub" type="submit" value="Submit"/>
</form>

<div id="confirmationMessage" class="confirmation-message" style="display: none;">
    The house has been added successfully!
</div>

<div id="errorMessage" class="error-message" style="display: none;">
    That objectId does already exist, house was not added.
</div>

<script>
    document.getElementById("houseForm").addEventListener("submit", function(event) {
        event.preventDefault(); // Prevent the form from submitting

        const form = event.target;
        const jsonData = document.getElementById("jsonData").value;

        // Set appropriate Content-Type header
        const headers = new Headers();
        headers.append("Content-Type", "application/json");

        // Send the form data as JSON
        fetch(form.action, {
            method: form.method,
            headers: headers,
            body: jsonData
        }).then(function(response) {
            // Clear textarea
            document.getElementById("jsonData").value = "";

            // Hide both messages initially
            document.getElementById("confirmationMessage").style.display = "none";
            document.getElementById("errorMessage").style.display = "none";

            if (response.ok) {
                // Success response
                document.getElementById("confirmationMessage").style.display = "block";
            } else if (response.status === 409) {
                // Conflict response
                document.getElementById("errorMessage").style.display = "block";
            } else {
                // Handle other errors
                console.error('An error occurred:', response.statusText);
            }

        }).catch(function(error) {
            // Handle errors
            console.error(error);
        });
    });
</script>

<div>
    <a href="http://localhost:8080/home.html" class="button-link"><button>Home</button></a>
    <a href="http://localhost:8080/website/houses/list.html" class="button-link"><button>See all houses</button></a>
</div>
</body>
</html>
