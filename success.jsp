<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%
    request.setCharacterEncoding("UTF-8");
    String studentId = request.getParameter("studentId");
    String studentName = request.getParameter("studentName");
    String email = request.getParameter("email");
    String course = request.getParameter("course");
    if (studentId == null || studentName == null || email == null || course == null) {
        response.sendRedirect("index.jsp");
        return;
    }
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registration Confirmation</title>
    <style>
        body { font-family: Arial, sans-serif; background: #f3f6fb; padding: 40px 16px; }
        .container { max-width: 520px; margin: auto; background: white; padding: 28px; border-radius: 12px; box-shadow: 0 4px 18px #00000012; }
        h1 { color: #187447; }
        p { line-height: 1.6; }
        a { display: inline-block; margin-top: 16px; color: #2457c5; }
    </style>
</head>
<body>
<div class="container">
    <h1>Registration Submitted!</h1>
    <p><strong>Student ID:</strong> <%= org.apache.jasper.runtime.JspRuntimeLibrary.toString(studentId) %></p>
    <p><strong>Name:</strong> <%= org.apache.jasper.runtime.JspRuntimeLibrary.toString(studentName) %></p>
    <p><strong>Email:</strong> <%= org.apache.jasper.runtime.JspRuntimeLibrary.toString(email) %></p>
    <p><strong>Course:</strong> <%= org.apache.jasper.runtime.JspRuntimeLibrary.toString(course) %></p>
    <a href="index.jsp">Register another student</a>
</div>
</body>
</html>
