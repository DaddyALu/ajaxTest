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
    <style>
        #div1{
            background: url("../img/ziyuan.png") no-repeat;
            width: 800px;
            height: 800px;
            border: 1px red solid;
        }
    </style>

    <script>

        window.onload = function () {

            // document.createElement('div');  //传统js创建标签

            // 规定创建的必须指定命名空间：
            //    两个参数：（命名空间，标签名）
            // var svgNS = 'http://www.w3.org/2000/svg';
            // var oParent = document.getElementById('div1');
            // var oSvg = document.createElementNS(svgNS,'svg');
            // oSvg.setAttribute('xmlns',svgNS);
            // oSvg.setAttribute('width','100%');
            // oSvg.setAttribute('height','100%');
            // oParent.appendChild(oSvg);

            var svgNS = 'http://www.w3.org/2000/svg';
            var oParent = document.getElementById('div1');
            //封装创建标签方法
            function createTag(tag,objAttr) {
                var oTag = document.createElementNS(svgNS,tag);
                for(var attr in objAttr){
                    //  attr：属性名
                    //  objAttr[attr]：根据属性名去拿相应的属性值赋值给该属性
                    oTag.setAttribute(attr,objAttr[attr])
                }
                return oTag;
            }

            var oSvg = createTag('svg',{'xmlns':svgNS,'width':'100%','height':'100%'});
            var oG = createTag('g',{'style':'cursor:pointer'});
            var oLine = createTag('line',{'x1':'100','y1':'100','x2':'200','y2':'200','stroke':'red'});
            var oText = createTag('text',{'x':'300','y':'300','fill':'white','font-size':'20'});
            var oCircle = createTag('circle',{'cx':'300','cy':'300','r':'40','fill':'red','stroke':'green','stroke-width':'3'});

            oG.appendChild(oLine);
            oG.appendChild(oText);
            oG.appendChild(oCircle);

            oSvg.appendChild(oG);

            oParent.appendChild(oSvg);
        };

    </script>
</head>
<body>

    <div id="div1"></div>


</body>
</html>
