<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--Expression language jest włączony--%>
<%@ page isELIgnored="false" %>
<%--JSTL jest włączony--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Album</title>
</head>
<body>

<jsp:useBean id="album" class="pl.jnowacki.Album"/>
<jsp:setProperty name="album" property="*"/>

${album.name}
<br/>
${album.author}

</body>
</html>
