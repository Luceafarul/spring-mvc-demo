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
        <form:option value="Ukraine" label="Ukraine"/>
        <form:option value="Germany" label="Germany"/>
        <form:option value="India" label="India"/>
        <form:option value="USA" label="USA"/>
    </form:select>
    <br>
    <br>
    <input type="submit" value="Submit">
</form:form>

</body>
</html>