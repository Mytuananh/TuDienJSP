<%@ page import="java.util.HashMap" %>
<%@ page import="java.util.Map" %><%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 11/9/2021
  Time: 9:53 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Simple Dictionary</title>
</head>
<body>


<%
    Map<String, String> dic = new HashMap<>();

dic.put("Hello", "Xin chào");
dic.put("how", "Thế nào");
dic.put("book", "Quyển vở");
dic.put("computer", "Máy tính");

String search = request.getParameter("search");

String result = dic.get(search);

if (result != null) {
   out.println("Word: " + search);
    out.println("Result: " + result);
} else {
    out.println("Not Found");
}
%>
</body>
</html>
