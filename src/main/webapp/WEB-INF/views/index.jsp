<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Users</title>
</head>
<body>
<div align="center">
    <h1>Users</h1>
    <h3><a href="/new">New user</a></h3>
    <table border="1" cellpadding="5">
        <tr>
        <th>ID</th>
        <th>FULLNAME</th>
        <th>EMAIL</th>
        <th>ADDRESS</th>
        <th>BIRTH</th>
        </tr>

        <c:forEach items="${allUsers}" var="user">
            <tr>
            <td>${user.id}</td>
            <td>${user.fullname}</td>
            <td>${user.email}</td>
            <td>${user.address}</td>
            <td>${user.birthOfDate}</td>
                <td>
                    <a href="edit?id=${user.id}">Edit</a>
                    <a href="delete?id=${user.id}">Delete</a>
                </td>
            </tr>
        </c:forEach>
    </table>
</div>
</body>
</html>