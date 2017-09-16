<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <title>Studentski servis</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <tiles:insertAttribute name="head-scripts-styles"/>
    <tiles:insertAttribute name="custom-head-scripts-styles"/>
</head>

<body class="nav-md">

<div class="container body">
    <div class="main_container">
        <tiles:insertAttribute name="menu"/>
        <tiles:insertAttribute name="header"/>

        <tiles:insertAttribute name="body"/>

        <tiles:insertAttribute name="footer"/>
        <tiles:insertAttribute name="custom-scripts"/>
    </div>
</div>
</body>
</html>