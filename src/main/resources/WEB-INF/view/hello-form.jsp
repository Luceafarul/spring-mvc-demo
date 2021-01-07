<!DOCTYPE html>
<html>
<head>
    <title>Hello World - Input Form</title>
</head>
<body>

<br><br>
Simple form
<form action="process" method="get">
    <input type="text" name="studentName" placeholder="What's your name?"/>
    <input type="submit">
</form>

<br><br>
Custom message form
<form action="process-v2" method="get">
    <input type="text" name="studentName" placeholder="What's your name?"/>
    <input type="text" name="message" placeholder="Message"/>
    <input type="submit">
</form>

</body>
</html>