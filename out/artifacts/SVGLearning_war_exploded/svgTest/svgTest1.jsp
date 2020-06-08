<%--
  Created by IntelliJ IDEA.
  User: luchengsong
  Date: 2020/6/1
  Time: 21:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

    <svg xmlns="http://www.w3.org/2000/svg" version="1.2" height="800" width="800">
        <%--圆形
                cx，cy：圆心坐标
                r：半径
        --%>
        <circle cx="200" cy="200" r="50" fill="yellow" stroke="green" stroke-width="2"></circle>
        <circle cx="150" cy="150" r="50" fill="transparent" stroke="green" stroke-width="2"></circle>
        <%--矩形
            x和y：矩形的坐标
            rx和ry：矩形的弧度，只写一个时默认另一个与它相等
        --%>
        <rect  x="10" y="10" width="100" height="100" fill="red" rx="20" ry="50"></rect>
        <rect  x="50" y="50" width="100" height="100" rx="30"></rect>
        <%--直线
            stroke：不设置没有颜色
            stroke-opacity：透明度
        --%>
        <line x1="5" y1="5" x2="150" y2="150" stroke="black" stroke-width="5" stroke-opacity="0.6" ></line>

    </svg>

</body>
</html>
