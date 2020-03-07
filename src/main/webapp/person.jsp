<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--Expression language jest włączony--%>
<%@ page isELIgnored="false" %>
<%--JSTL jest włączony--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<body>

<jsp:useBean id="person1" class="pl.jnowacki.Person"/>
<jsp:setProperty name="person1" property="*"/>

<h1>${person1.name}</h1>
<br/>
<h2>${person1.pwd}</h2>

</body>
</html>
