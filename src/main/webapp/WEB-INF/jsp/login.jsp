<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<fmt:setLocale value="${sessionScope.currentLocale}"/>
<fmt:setBundle basename="locale.messages"/>
<html>
<head>
    <title>Login</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/bootstrap/css/bootstrap.min.css"/>

</head>
<body>
<%@ include file="header.jsp" %>
<form name="loginForm" method="POST" action="login.do">
    Login:<br/>
    <input type="text" name="login" value=""/>
    <br/>Password:<br/>
    <input type="password" name="password" value=""/>
    <br/>
    <c:if test="${successMessage}">
        <success-message>
            <fmt:message key="message.successRegistration"/>
        </success-message>
    </c:if>
    <input type="submit" value="Login"/>
    ${errorInputData}
</form>
<a class="btn btn-primary" href="${pageContext.request.contextPath}/register" role="button">Sing in</a>
<hr/>
    <script src="${pageContext.request.contextPath}/assets/bootstrap/js/bootstrap.bundle.min.js"></script>

</body>
</html>