<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<fmt:setLocale value="${sessionScope.currentLocale}"/>
<fmt:setBundle basename="locale.messages"/>

<html>
<head>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/bootstrap/css/bootstrap.min.css"/>

</head>
<body>
<jsp:include page="header.jsp"/>
<p><fmt:message key="text.patient"/>: ${patient.lastName} ${patient.firstName} ${patient.middleName}</p>
<table class="table">
    <thead>
    <tr>
        <th scope="col">№</th>
        <th scope="col"><fmt:message key="text.visitDate"/></th>
        <th scope="col"><fmt:message key="text.doctorName"/></th>
        <th scope="col"><fmt:message key="text.nextVisitDate"/></th>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="visit" items="${visits}" varStatus="loop">
        <tr>
            <th scope="row">${loop.index + 1}</th>
            <th>${visit.visitDate}</th>
            <th>${visit.doctor.lastName} ${fn:substring(visit.doctor.firstName, 0, 1)}. ${fn:substring(visit.doctor.middleName, 0, 1)}.</th>
            <th>${visit.nextVisitDate.getDayOfMonth()}.${visit.nextVisitDate.getMonthValue()}.${visit.nextVisitDate.getYear()}</th>
            <th>
                <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal">
                    <fmt:message key="text.viewVisitInfo"/>
                </button>
            </th>
        </tr>
        <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        TEST BODY
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                        <button type="button" class="btn btn-primary">Save changes</button>
                    </div>
                </div>
            </div>
        </div>
    </c:forEach>
    </tbody>
</table>


    <script src="${pageContext.request.contextPath}/assets/bootstrap/js/bootstrap.bundle.min.js"></script>

</body>
</html>
