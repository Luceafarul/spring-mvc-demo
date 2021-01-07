<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <title>Hello World of Spring!</title>
</head>
<body>
<h2>Hello World of Spring!</h2>

<%-- How param.studenName works??? --%>
<p>Student name is: ${param.studentName}</p>

<c:if test="${customMessage != nunl}">
    <p>Custom message: ${customMessage}</p>
</c:if>

<a href="show-form">Return to Hello Form</a>

</body>
</html>