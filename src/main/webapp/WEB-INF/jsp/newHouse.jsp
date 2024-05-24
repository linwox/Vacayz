<%--<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>--%>
<%--<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>--%>
<%--<html>--%>
<%--<body>--%>
<%--<h1>New House Registration</h1>--%>

<%--<form:form modelAttribute="form">--%>
<%--    <form:errors path="" element="div" />--%>
<%--    <div>--%>
<%--        <form:label path="objectId">Objekt-id</form:label>--%>
<%--        <form:input path="objectId" />--%>
<%--        <form:errors path="objectId" />--%>
<%--    </div>--%>
<%--    <div>--%>
<%--        <form:label path="available">Ledig</form:label>--%>
<%--        <form:input path="available" />--%>
<%--        <form:errors path="available" />--%>
<%--    </div>--%>
<%--    <div>--%>
<%--        <input type="submit" />--%>
<%--    </div>--%>
<%--</form:form>--%>

<%--</body>--%>
<%--<nav>--%>
<%--    <a href="http://localhost:8080/home.html">Home</a>--%>
<%--</nav>--%>
<%--</html>--%>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<body>
<h1>New House Registration</h1>

<form id="houseForm" action="http://localhost:8080/website/houses/json" method="post">
    <h2>With JSON</h2>
    <div>
        <textarea cols="40" rows="15" id="jsonData" name="jsonData" placeholder="Enter JSON object here"></textarea>
    </div>
    <input type="submit" value="Submit"/>
</form>

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
            // Handle response
            console.log(response);
        }).catch(function(error) {
            // Handle errors
            console.error(error);
        });
    });
</script>

<nav>
    <a href="http://localhost:8080/home.html">Home</a>
</nav>
</body>
</html>
