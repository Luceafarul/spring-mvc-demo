<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <title>Hello World of Spring!</title>
</head>
<body>
<h2>Customer, this is Spring!</h2>

<%-- How param.studenName works??? --%>
<p>Customer is confirmed: ${customer.firstName} ${customer.lastName}</p>

<p>Customer free pass: ${customer.freePasses}</p>

<p>Customer postal code: ${customer.postalCode}</p>

<a href="show-form">Return to Customer Form</a>

</body>
</html>