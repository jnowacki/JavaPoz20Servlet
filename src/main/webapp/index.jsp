<%@ page import="java.util.Date" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--Expression language jest włączony--%>
<%@ page isELIgnored="false" %>
<%--JSTL jest włączony--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<body>
<%-- jsp --%>
<!-- html -->
<%!
    private String myVar = "wartosc";
%>

<h1><% out.println("hi!");%></h1><br>

<h2>
    <%
        String action = request.getParameter("action");
        String aParam = request.getParameter("a");
        String bParam = request.getParameter("b");

        if (action == null || aParam == null || bParam == null) {
            out.print("Podaj paramsy!");
        } else {
            int a = Integer.parseInt(aParam);
            int b = Integer.parseInt(bParam);

            switch (action) {
                case "add":
                    out.print(a+b);
                    break;
                case "sub":
                    out.print(a-b);
                    break;
                case "div":
                    if(b != 0) {
                        out.print(a/b);
                    } else {
                        out.print("Nie dziel przez 0!");
                    }
                    break;
                case "mul":
                    out.print(a*b);
                    break;
            }
        }
    %>

    <%= new Date()%>
</h2>

<b><%= myVar %>
</b>

</body>
</html>
