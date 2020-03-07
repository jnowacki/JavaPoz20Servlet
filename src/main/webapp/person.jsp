<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--Expression language jest włączony--%>
<%@ page isELIgnored="false" %>
<%--JSTL jest włączony--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<body>

<jsp:useBean id="person1" class="pl.jnowacki.Person"/>
<jsp:setProperty name="person1" property="*"/>

<%=person1.getName()%>
<br/>
<%=person1.getPwd()%>

</body>
</html>
