<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--Expression language jest włączony--%>
<%@ page isELIgnored="false" %>
<%--JSTL jest włączony--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<body>

<%!
    private String myVar = "wartosc";
%>

<h1><% out.println("hi!");%></h1><br>

<h2>
    <%
        if (request.getParameter("name").equals("asd")) {
    %>
            <h4>jest OK</h4>
    <%
        }
    %>
</h2>

<b><%= myVar %>
</b>

</body>
</html>
