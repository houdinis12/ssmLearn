<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!--获取基础路径-->
<%
    String basePath = request.getScheme() + "://" +
            request.getServerName() + ":" +
            request.getServerPort() +
            request.getContextPath() + "/";
%>
<html>
<head>
    <title>提供用户操作的功能入口</title>
    <base href="<%=basePath%>">
</head>
<body>
<h1>你好</h1>
<div align="center">
    <p>SSM整合的例子</p>
    <table>
        <tr>
            <td><a href="addStudent.jsp"> 注册学生</a></td>
        </tr>
        <tr>
            <td><a href="listStudent.jsp"> 浏览学生</a></td>
        </tr>
    </table>


    <img src="images/p1.jpg">
</div>

<br/>
<br/>

</body>
</html>
