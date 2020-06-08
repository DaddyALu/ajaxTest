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

    <svg xmlns="http://www.w3.org/2000/svg" version="1.2" height="800" width="800">

        <%-- g标签的样式会应用于所有子标签 --%>
        <g style="cursor: pointer">

            <%--style="cursor: pointer" css中的设置鼠标悬浮时样式的，给text标签也加上就不会显示为一条竖杠--%>
            <circle cx="150" cy="150" r="50" fill="transparent" stroke="green" stroke-width="2"></circle>

            <%--text文字标签
                    text-anchor："middle"居中，然后调整高来使其准确居中
                    x和y：坐标为右下角坐标
            --%>
            <text x="150" y="158" font-size="26" text-anchor="middle">阿鲁巴</text>

            <%--在svg中添加图片:
                    通过xlink:hrefu引入图标（相对页面的路径）；
                    x和y：是该图片的左上角坐标
            --%>
            <image x="150" y="150" height="200" width="200" xlink:href="../img/ziyuan.png"></image>
        </g>


    </svg>

</body>
</html>
