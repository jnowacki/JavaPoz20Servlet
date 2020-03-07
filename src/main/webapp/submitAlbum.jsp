<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--Expression language jest włączony--%>
<%@ page isELIgnored="false" %>
<%--JSTL jest włączony--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<form action="/JavaPoz20Servlet_war/album" method="get">
    Name: <input type="text" name="name"><br/>
    Author: <input type="text" name="author">
    <input type="submit" value="OK">
</form>

</body>
</html>
