<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>New user</title>
</head>
<body>
<div align="center">
    <h1>New user</h1>

    <form:form action="save" method="post" modelAttribute="user">

        <table border="1" cellpadding="5">
            <tr>
                <td>NAME:</td>
                <td><form:input path="fullname"/></td>
            </tr>
            <tr>
                <td>EMAIL:</td>
                <td><form:input path="email"/></td>
            </tr>
            <tr>
                <td>ADDRESS:</td>
                <td><form:input path="address"/></td>
            </tr>
            <tr>
                <td>BIRTHDAY:</td>
                <td><form:input path="dateOfBirth"/></td>
            </tr>
            <tr>
                <td colspan="2"><input type="submit" value="Save"></td>
            </tr>

        </table>

    </form:form>>

</div>
</body>
</html>
