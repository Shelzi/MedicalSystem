<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<html>
<head>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/bootstrap/css/bootstrap.min.css"/>

    <title>Welcome</title>
</head>
<body>
<%@ include file="header.jsp" %>
<h3>Welcome</h3>
<hr/>
${user.getFirstName()}, hello!
You role is: ${sessionScope.currentRole}
You locale is: ${sessionScope.currentLocale}

<hr/>
    <script src="${pageContext.request.contextPath}/assets/bootstrap/js/bootstrap.bundle.min.js"></script>


</body>
</html>