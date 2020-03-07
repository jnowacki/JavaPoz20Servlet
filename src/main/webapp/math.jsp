<%@ page import="java.util.List" %>
<%@ page import="java.util.Arrays" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--Expression language jest włączony--%>
<%@ page isELIgnored="false" %>
<%--JSTL jest włączony--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Math</title>
</head>
<body>

<c:if test="${'add'.equals(param.action)}">
    ${param.a + param.b}
</c:if>

<c:if test="${'sub'.equals(param.action)}">
    ${param.a - param.b}
</c:if>

<c:choose>
    <c:when test="true"></c:when>
    <c:when test=""></c:when>
    <c:when test=""></c:when>
    <c:when test=""></c:when>
    <c:otherwise>

    </c:otherwise>
</c:choose>

<%
    List<String> names = Arrays.asList("Jedrzej", "Bonifacy", "Jan");
    request.setAttribute("names", names);
%>

<c:forEach items="${names}" var="n" varStatus="status">
    <h1>${n}</h1>
</c:forEach>

</body>
</html>
