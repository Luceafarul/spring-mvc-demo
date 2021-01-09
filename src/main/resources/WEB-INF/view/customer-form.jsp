<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<body>

<br>
<h3>Customer Form</h3>
<br>
<i>Fill out the form. Asterisk (*) means required.</i>
<br>
<br>
<form:form action="process" modelAttribute="customer">
    First name (*): <form:input path="firstName" type="text" name="firstName" placeholder="First name"/>
    <form:errors path="firstName" cssClass="error"/>
    <br>
    <br>
    Last name (*): <form:input path="lastName" type="text" name="lastName" placeholder="Last name"/>
    <form:errors path="lastName" cssClass="error"/>
    <br>
    <br>
    Free pass (*): <form:input path="freePasses" type="text" name="freePasses" placeholder="Free passes"/>
    <form:errors path="freePasses" cssClass="error"/>
    <br>
    <br>
    Postal code: <form:input path="postalCode" type="text" name="postalCode" placeholder="Postal code"/>
    <form:errors path="postalCode" cssClass="error"/>
    <br>
    <br>
    Course code: <form:input path="courseCode" type="text" name="courseCode" placeholder="Course code"/>
    <form:errors path="courseCode" cssClass="error"/>
    <br>
    <br>
    <input type="submit" value="Submit">
</form:form>

</body>
<head>
    <title>Customer Form</title>
    <style>
      .error {
        color: red
      }
    </style>
</head>
</html>