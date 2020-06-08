<%--
  Created by IntelliJ IDEA.
  User: luchengsong
  Date: 2020/6/1
  Time: 21:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

    <%--普通方法实现靶心--%>
<%--    <svg xmlns="http://www.w3.org/2000/svg" version="1.2" height="800" width="800">--%>
<%--        <circle cx="200" cy="200" r="20" fill="transparent" stroke="green" stroke-width="2"></circle>--%>
<%--        <circle cx="200" cy="200" r="40" fill="transparent" stroke="green" stroke-width="2"></circle>--%>
<%--        <circle cx="200" cy="200" r="60" fill="transparent" stroke="green" stroke-width="2"></circle>--%>
<%--    </svg>--%>

    <%-- <g>标签：
            容器(分组)标签，用来组合元素
    --%>
    <svg xmlns="http://www.w3.org/2000/svg" version="1.2" height="800" width="800">
        <%--
            g标签中可以存放多种图形；
            cx，cy是圆形独有的属性，不可以在g标签中统一规定（无效）；
            transform="translate(150,100)"：平移整体，括号内为坐标
        --%>
        <g transform="translate(150,100)" fill="transparent" stroke="green" stroke-width="2">
            <circle r="20" ></circle>
            <circle r="40" ></circle>
            <circle r="60" ></circle>
        </g>

    </svg>

</body>
</html>
