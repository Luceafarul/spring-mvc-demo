<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <title>Hello World of Spring!</title>
</head>
<body>
<h2>Student, this is Spring!</h2>

<%-- How param.studenName works??? --%>
<p>Student is confirmed: ${student.firstName} ${student.lastName} from ${student.country}</p>

<p>Favorite programming language: ${student.favoriteProgrammingLanguage}</p>

<p>Operating systems:</p>
<ul>
    <c:forEach var="os" items="${student.operatingSystems}">
        <li>${os}</li>
    </c:forEach>
</ul>

<a href="show-form">Return to Student Form</a>

</body>
</html>