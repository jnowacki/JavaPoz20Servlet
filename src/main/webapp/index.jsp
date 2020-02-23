<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<body>

<%!
    private String myVar = "wartosc";
%>

<h1><% out.println("hi!");%></h1><br>

<h2><%= new java.util.Date() %></h2>

<b><%= myVar %></b>

</body>
</html>
