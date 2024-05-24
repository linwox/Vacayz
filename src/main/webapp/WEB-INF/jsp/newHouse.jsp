<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<body>
<h1>New House Registration</h1>

<form:form modelAttribute="form">
    <form:errors path="" element="div" />
    <div>
        <form:label path="objectId">Objekt-id</form:label>
        <form:input path="objectId" />
        <form:errors path="objectId" />
    </div>
    <div>
        <form:label path="available">Ledig</form:label>
        <form:input path="available" />
        <form:errors path="available" />
    </div>
    <div>
        <input type="submit" />
    </div>
</form:form>
</body>
<nav>
    <a href="http://localhost:8080/home.html">Home</a>
</nav>
</html>
