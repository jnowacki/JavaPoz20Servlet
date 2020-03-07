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
        String action = request.getParameter("action");
        int a = Integer.valueOf(request.getParameter("a"));
        int b = Integer.valueOf(request.getParameter("b"));

        switch (action) {
            case "add":
                out.print(a+b);
            break;
            case "sub":
                out.print(a-b);
            break;
        }
    %>
</h2>

<b><%= myVar %>
</b>

</body>
</html>
