<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <title>Studentski servis</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
</head>

<body>

<%--<tiles:insertAttribute name="header"/>--%>

<form action="<c:url value='/login' />" method="post">
    <c:if test="${param.error != null}">
        <p class="label label-danger login-error-custom">Neispravno
            korisničko ime ili šifra.</p>
    </c:if>
    <label><input name="username" required/></label>
    <label><input type="password" name="password"/></label>
    <label><input type="checkbox" id="rememberme" name="remember-me"> Remember Me</label>
    <p class="forgot-pass">Zobaravili ste šifru?</p>
    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
    <button class="submit">Prijavi me</button>
</form>
</body>
</html>
