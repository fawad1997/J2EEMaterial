<%--
  Created by IntelliJ IDEA.
  User: Fawad
  Date: 15/10/2019
  Time: 3:46 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Welcome</title>
</head>
<body>
<%
    String regNo = null;
    Cookie[] cookies = request.getCookies();
    if (cookies != null) {
        for (Cookie cookie : cookies) {
            if (cookie.getName().equals("userreg")) regNo = cookie.getValue();
        }
    }
    if (regNo == null) response.sendRedirect("index.jsp");
%>
<h3>Hi <%=regNo %>, Login successful.</h3>
<br>
<form action="logout" method="post">
    <input type="submit" value="Logout">
</form>
</body>
</html>
