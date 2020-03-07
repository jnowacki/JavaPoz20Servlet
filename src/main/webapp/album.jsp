<%@ page import="pl.jnowacki.Album" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--Expression language jest włączony--%>
<%@ page isELIgnored="false" %>
<%--JSTL jest włączony--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<style>
    .label {
        display: inline-block;
        width: 50px;
        margin-bottom: 10px;
    }

    table, th, td {
        border: 1px solid black;
    }
</style>
<head>
    <title>Album</title>
</head>
<body>

<%
    if (session.getAttribute("albums") == null) {
        session.setAttribute("albums", new ArrayList<Album>());
    }
%>

<form action="${pageContext.request.contextPath}/album" method="get">

    <label for="name" class="label">Name:</label>
    <input type="text" id="name" name="name"><br/>

    <label for="author" class="label">Author:</label>
    <input type="text" id="author" name="author"><br/>

    <input type="hidden" name="sent" value="true">
    <input type="submit" value="OK">
</form>

<jsp:useBean id="album" class="pl.jnowacki.Album"/>
<jsp:setProperty name="album" property="*"/>

<c:if test="${param.sent}">
    <c:choose>
        <c:when test="${album.valid}">
            <% ((List<Album>) session.getAttribute("albums")).add(album); %>
        </c:when>

        <c:otherwise>
            <h4>Dane niepoprawne</h4>
        </c:otherwise>
    </c:choose>
</c:if>

<table>
    <tr>
        <th>Lp.</th>
        <th>Name</th>
        <th>Author</th>
    </tr>

    <c:forEach items="${albums}" var="al" varStatus="status">
        <tr>
            <td>${status.count}</td>
            <td>${al.name}</td>
            <td>${al.author}</td>
        </tr>
    </c:forEach>
</table>

</body>
</html>
