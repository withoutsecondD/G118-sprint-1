<%@ page import="models.Task" %><%--
  Created by IntelliJ IDEA.
  User: Diyar Z
  Date: 30.09.2023
  Time: 17:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Task details</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
</head>
<body class="d-flex flex-column align-items-center">
    <%@include file="navbar.jsp"%>

    <%
        Task task = (Task) request.getAttribute("task");
        String taskName = task.getName();
        String taskDescription = task.getDescription();
        String taskDate = task.getDeadlineDate();
    %>

    <form class="container-fluid form-check w-50" action="/delete-task-servlet" method="post">
        <div class="h-25 mt-5">
            <label for="name">Task name:</label>
            <input class="form-control w-100" type="text" id="name" value="<%=taskName%>">
        </div>
        <div class="h-50 mt-3">
            <label for="description">Description:</label>
            <input class="form-control w-100 h-100 text-start" type="text" id="description" value="<%=taskDescription%>">
        </div>
        <div class="h-25 mt-5">
            <label for="deadline-date">Deadline date:</label>
            <input class="form-control w-100" type="date" id="deadline-date" value="<%=taskDate%>">
        </div>

        <div>
            <input type="hidden" name="task-id" value="<%=task.getId()%>">
            <button class="btn btn-danger">DELETE</button>
        </div>
    </form>
</body>
</html>
