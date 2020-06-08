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

    <script>

        window.onload = function () {
            var oParent = document.getElementById('div1');

            var svgNS = 'http://www.w3.org/2000/svg';
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

            var centerX = oParent.offsetWidth/2;
            var centerY = oParent.offsetHeight/2;
            var date = {
                centerNode:{ text : '中心圆'},
                otherNode: [
                    {x:100,y:100,text:'阿鲁巴'},
                    {x:400,y:400,text:'阿斯顿'},
                    {x:centerX+100,y:centerY+100,text:'阿萨德'}
                ]
            };
            
            function addTag() {
                var oSvg = createTag('svg',{'xmlns':svgNS,'width':'100%','height':'100%'});
                var oG = createTag('g',{'style':'cursor:pointer'});
                var oCircle = createTag('circle',{'cx':centerX,'cy':centerY,'r':'40','fill':'red','stroke':'green','stroke-width':'3'});
                var oText = createTag('text',{'x':centerX,'y':centerY,'fill':'white','font-size':'20','text-anchor':'middle'});
                oText.innerHTML = date.centerNode.text;

                //循环重复创建别的图形
                for(var i=0;i<date.otherNode.length;i++){
                    addOtherTag(date.otherNode[i],oSvg);
                }

                //写在后面，让循环方法先执行先生成线，就不会覆盖中心圆了
                oG.appendChild(oCircle);
                oG.appendChild(oText);
                oSvg.appendChild(oG);
                oParent.appendChild(oSvg);
            }
            addTag();
            
            function addOtherTag(otherAttr, oSvg) {
                var oG = createTag('g',{'style':'cursor:pointer','class':'other'});
                var oLine = createTag('line',{'x1':otherAttr.x,'y1':otherAttr.y,'x2':centerX,'y2':centerY,'stroke':'red'});
                var oCircle = createTag('circle',{'cx':otherAttr.x,'cy':otherAttr.y,'r':'40','fill':'white','stroke':'black','stroke-width':'2'});
                var oText = createTag('text',{'x':otherAttr.x,'y':otherAttr.y,'fill':'orange','font-size':'20','text-anchor':'middle'});
                oText.innerHTML = otherAttr.text;
                oG.appendChild(oLine);
                oG.appendChild(oCircle);
                oG.appendChild(oText);
                oSvg.appendChild(oG);
            }

            bind();

            function bind() {
                var aAction = document.getElementsByClassName('other');
                for (var i =0; i<aAction.length; i++){
                    // aAction[i].onmouseover = function () {
                    //     // alert('圆');
                    // };
                    aAction[i].onmouseenter = function () {
                        //this为g标签，获取当中的circle标签，让其从半径40弹性运动到50
                        startMove(this.getElementsByTagName('circle')[0],40,50);
                    };
                    aAction[i].onmouseleave = function () {
                        startMove(this.getElementsByTagName('circle')[0],40,50);
                    };
                }
            }
            
            function startMove(obj,r1,r2) {
                var nowR = r1;
                var overR = r2;
                obj.speed = 0;
                clearInterval(obj.timer);
                obj.timer = setInterval(function () {
                    obj.speed += (overR - nowR)/6;
                    obj.speed *= 0.9;
                    if (Math.abs(overR-nowR)<=1 && Math.abs(obj.speed)<=1){
                        clearInterval(obj.timer);
                        obj.setAttribute('r',overR);
                    }
                    else {
                        nowR += obj.speed;
                        obj.setAttribute('r',nowR);
                    }
                },30)
            }


        };

    </script>
</head>
<body>

    <div id="div1" style="width: 100%;height: 100%"></div>

</body>
</html>
