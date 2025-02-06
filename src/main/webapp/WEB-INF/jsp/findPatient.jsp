<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<fmt:setLocale value="${sessionScope.currentLocale}"/>
<fmt:setBundle basename="locale.messages"/>

<html>
<head>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/bootstrap/css/bootstrap.min.css"/>

    <title>
        Find patient
    </title>
</head>
<body>
<%@ include file="header.jsp" %>
<form name="findPatientForm" method="POST" action="find_patient.do">

    <div class="input-group input-group-sm mb-3">
        <span class="input-group-text" id="inputGroup-sizing-sm1"><fmt:message key="text.patientSecondName"/></span>
        <input type="text" name="lastName" value="" class="form-control" aria-label="Sizing example input"
               aria-describedby="inputGroup-sizing-sm" required>
    </div>

    <div class="input-group input-group-sm mb-3">
        <span class="input-group-text" id="inputGroup-sizing-sm3"><fmt:message key="text.birthday"/></span>
        <input type="date" name="birthday" value="" class="form-control" aria-label="Sizing example input"
               aria-describedby="inputGroup-sizing-sm" required>
    </div>

    <input type="submit" value="<fmt:message key="text.findPatient"/>"/>
    <br/>
    ${successPatientRegistration}
    ${errorInputData}
    ${errorCardIsExist}
    <br/>


</form>
    <script src="${pageContext.request.contextPath}/assets/bootstrap/js/bootstrap.bundle.min.js"></script>


</body>
</html>