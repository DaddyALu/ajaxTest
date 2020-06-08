<%--
  Created by IntelliJ IDEA.
  User: luchengsong
  Date: 2020/6/8
  Time: 22:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <%--解决icon：404的问题--%>
    <link rel="shortcut icon" href="#"/>
    <script type="text/javascript" src="../js/jquery-3.3.1.min.js"></script>

</head>
<body>

    <h1>测试ajax调用数据库数据</h1>

    <table>
        <tr>
            <td>用户名：</td>
            <td>
                <input type="text" name="uname" id="uname">
            </td>
            <td>
                <span id="unameshow"></span>
            </td>
        </tr>
    </table>

    <script>

        $(function () {

            $("#uname").blur(function () {
                var unameVal = $(this).val();
                $("#unameshow").text("");
                $("#unameshow").css("background-color","white");
                if (unameVal==null||""==unameVal){
                    $("#unameshow").text("不能为空！");
                    $("#unameshow").css("background-color","red");
                }else {
                    $.ajax({
                        type:'get',  //请求方式
                        url:'../UserServlet',  //url上也可以传参url:xxx.jsp?username='+username+'&password'+password
                        data:{uname:unameVal},  //发送参数  {key:value,....}， --别的写法：data:"uname="+unameVal,
                        dataType:'json',  //后台返回的数据类型，一般都是json（默认也是？），该属性代替了 json.parse()
                        //async:true  //是否为异步，默认为true，少用
                        success:function (res) {  //成功时的回调函数，形参参数名随意，但是只有第一个参数表示读取到的数据
                            console.log("res："+res);
                            console.log("res.data："+res.data);
                            if (res != null){
                                console.log("typeof(res)："+typeof(res));
                            }
                            $("#unameshow").text(res);
                            $("#unameshow").css("background-color","green");
                        },
                        error:function (error) {  //请求失败的回调函数，参数名随意  --无获取到的返回值时属于失败
                            console.log(error,"请求失败");
                        }
                    });
                }
            });

        });

    </script>

</body>
</html>
