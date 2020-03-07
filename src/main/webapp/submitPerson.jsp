<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--Expression language jest włączony--%>
<%@ page isELIgnored="false" %>
<%--JSTL jest włączony--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Person</title>
</head>
<body>

<form action="/JavaPoz20Servlet_war/person" method="post">
    <input type="text" name="name">
    <input type="text" name="pwd">
    <input type="submit" value="OK">
</form>

</body>
</html>