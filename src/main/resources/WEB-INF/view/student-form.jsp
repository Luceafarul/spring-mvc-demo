<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
    <title>Student Form</title>
</head>
<body>

<br>
<h3>Student Form</h3>
<br>
<form:form action="process" method="get" modelAttribute="student">
    <form:input path="firstName" type="text" name="firstName" placeholder="First name"/>
    <br>
    <br>
    <form:input path="lastName" type="text" name="lastName" placeholder="Last name"/>
    <br>
    <br>
    <form:select path="country">
        <form:options items="${countries}"/>
    </form:select>
    <br>
    <br>
    Select your favorite programming language:
    <br>
    Java <form:radiobutton path="favoriteProgrammingLanguage" value="Java"/>
    Scala <form:radiobutton path="favoriteProgrammingLanguage" value="Scala"/>
    Kotlin <form:radiobutton path="favoriteProgrammingLanguage" value="Kotlin"/>
    JavaScript <form:radiobutton path="favoriteProgrammingLanguage" value="JavaScript"/>
    TypeScript <form:radiobutton path="favoriteProgrammingLanguage" value="TypeScript"/>
    <br>
    <br>
    Operating systems:
    <br>
    Linux <form:checkbox path="operatingSystems" value="Linux"/>
    Mac OS <form:checkbox path="operatingSystems" value="Mac OS"/>
    Windows <form:checkbox path="operatingSystems" value="Windows"/>
    <br>
    <br>
    <input type="submit" value="Submit">
</form:form>

</body>
</html>