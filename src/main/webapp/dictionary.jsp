<%@ page import="java.util.Map" %>
<%@ page import="java.util.HashMap" %><%--
  Created by IntelliJ IDEA.
  User: xxtyo
  Date: 10/30/2020
  Time: 2:06 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Simple Dictionary</title>
</head>
<body>
<%!
    Map<String, String> dic = new HashMap<>();
%>

<%
    dic.put("hello", "Xin chào");
    dic.put("how", "Thế nào");
    dic.put("book", "Quyển vở");
    dic.put("computer", "Máy tính");
    dic.put("car", "Ô tô");
    dic.put("smartphone", "Điện thoại cảm ứng");
    dic.put("water bottle", "Chai nước");
    dic.put("pencil", "Bút chì");

    String search = request.getParameter("word");

    String result = dic.get(search);
    if (result != null) {
        out.println("Word: " + search);
        out.println(" - Result: " + result);
    } else {
        out.println("Not found!");
    }
%>
</body>
</html>
