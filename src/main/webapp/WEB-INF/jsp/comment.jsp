<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/html">
<head lang="en">
    <meta charset="UTF-8">
    <title>趣味答题</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css" integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">    <link type="text/css" rel="stylesheet" href="css/cai.css"/>
    <script src="js/jquery-3.4.1.min.js"></script>
    <script src="js/1.js"></script>
</head>
<body>
<div class="HD">
    <div class="header">
        <div class="header_log">
            <img src="images/wan/header/meishilogo.png">
        </div>
        <form action="/find" method="get" class="header_txt">
            <input type="text" name="name" class="text" placeholder="请输入菜名" id="first" required>
            <input type="submit" class="submit" value="搜 索" id="second">
        </form>
        <div class="header_deng" >
            <ul class="deng_2" style=" margin-top: 14px">
                <li>欢迎您！<a id="userName" href=""><strong>${user.username}</strong></a></li>
                <li><a href="edituser?username=${user.username}"><i class="fa fa-book"></i>&nbsp;我的资料</a></li>
                <li><a href="exit"><i class="fa fa-sign-out"></i>&nbsp;退出</a></li>
            </ul>
        </div>

    </div>
</div>
<div class="DH">
    <div class="daohang">
        <ul>
            <li class="daohang_hr"><a class="dh_a" target="_blank" href="usersy"><strong class="cwl">首页</strong><img
                    src="images/wan/daohang/huangguan.png"></a>
            </li>
            <li class="daohang_hr"><a class="dh_a" target="_blank" href="foodlist"><strong class="cwl">美食浏览</strong><img
                    src="images/wan/daohang/huangguan.png"></a>
            </li>
            <li>
                <a class="dh_a" target="_blank" href="foodculture"><strong>美食文化</strong><img
                        src="images/wan/daohang/huangguan.png"></a>
            </li>
            <li><a class="dh_a" target="_blank" href="CollectInfo?name=${user.username}"><strong>我的收藏</strong><img
                    src="images/wan/daohang/huangguan.png"></a></li>
            <li><a class="dh_a" target="_blank" href="Comment?name=${user.username}"><strong>趣味答题</strong><img
                    src="images/wan/daohang/huangguan.png"></a></li>
        </ul>
    </div>
</div>
<div class="container"  style="margin-top: 20px">
    <div class="row">
        <div class="col-md-12">
            <h4>您印象最深的一道美食是什么呢？</h4>
        </div>
        <div class="col-md-12">
            <textarea id="message-text" style="resize:none; width: 100%"></textarea>
        </div>
        <div class="col-md-12" style="text-align: right;">
            <button class="btn btn-primary" onclick="sendInfo()">发送</button>
            <hr>
        </div>
    </div>
    <div>
        <div style="background-color: white; min-height: 300px">
            <div style="width: 100%; height: 50px; background-color: #ddd; line-height: 50px; margin: 30px 0">
                <span style="font-weight: bold; margin-left: 20px; font-size: 16px">食客留言</span>
            </div>
            <div>
                <c:forEach items="${comments}" var="c">
                <div class="row">
                    <div class="col-md-1" style="text-align: right">${c.username}</div>
                    <div class="col-md-10">
                        <div class="row" style="padding: 0 40px">
                            <div class="col-md-12" style="text-align: justify;">${c.comment}</div>
                            <div class="col-md-12" style="text-align: right; margin-top: 10px">
                                <span style="color: #888888">${c.date}</span>
                                <hr>
                            </div>
                        </div>
                    </div>
                </div>
                </c:forEach>
            </div>
        </div>
    </div>
</div>
</div>
<div class="BM">
    <div class="bottom">
        <div class="bot_f">
            <div class="bot_f1">
                <a href="sy"><img src="images/wan/bottom/meishilogo.png"></a>
            </div>
        </div>
        <div class="bot_s">
            <dl>
                <dt>友情连接</dt>
                <br/>
                <dd><a target="_blank" href="http://www.baidu.com" title="百度">百度</a></dd>
                <dd><a target="_blank" href="http://www.baidu.com" title="百度">百度</a></dd>
                <dd><a target="_blank" href="http://www.baidu.com" title="百度">百度</a></dd>
                <dd><a target="_blank" href="http://www.baidu.com" title="百度">百度</a></dd>
                <dd><a target="_blank" href="http://www.baidu.com" title="百度">百度</a></dd>
                <dd><a target="_blank" href="http://www.baidu.com" title="百度">百度</a></dd>
                <dd><a target="_blank" href="http://www.baidu.com" title="百度">百度</a></dd>
                <dd><a target="_blank" href="http://www.baidu.com" title="百度">百度</a></dd>
                <dd><a target="_blank" href="http://www.baidu.com" title="百度">百度</a></dd>
                <dd><a target="_blank" href="http://www.baidu.com" title="百度">百度</a></dd>
                <dd><a target="_blank" href="http://www.baidu.com" title="百度">百度</a></dd>
            </dl>
            <br/>
            <dd><a target="_blank" href="http://www.baidu.com" title="百度">百度</a></dd>
            <dd><a target="_blank" href="http://www.baidu.com" title="百度">百度</a></dd>
            <dd><a target="_blank" href="http://www.baidu.com" title="百度">百度</a></dd>
            <dd><a target="_blank" href="http://www.baidu.com" title="百度">百度</a></dd>
            <dd><a target="_blank" href="http://www.baidu.com" title="百度">百度</a></dd>
            <dd><a target="_blank" href="http://www.baidu.com" title="百度">百度</a></dd>
            <dd><a target="_blank" href="http://www.baidu.com" title="百度">百度</a></dd>
            <dd><a target="_blank" href="http://www.baidu.com" title="百度">百度</a></dd>
            <dd><a target="_blank" href="http://www.baidu.com" title="百度">百度</a></dd>
            <dd><a target="_blank" href="http://www.baidu.com" title="百度">百度</a></dd>
            <dd><a target="_blank" href="http://www.baidu.com" title="百度">百度</a></dd>
            <dd><a target="_blank" href="http://www.baidu.com" title="百度">百度</a></dd>
        </div>
        <div class="bot_t">
            <ul class="bot_t1">
                <li><a>公司简介</a></li>
                <li><a>关于我们</a></li>
                <li><a>产品下载</a></li>
                <li><a>加入我们</a></li>
                <li><a>联系我们</a></li>
                <li><a>商务合作</a></li>
                <li><a>用户协议</a></li>
                <li><a>隐私政策</a></li>
                <li><a>网站地图</a></li>
                <!-- <li><a>友情链接</a></li>-->
            </ul>
            <ul class="bot_t2">
                <li>
                    <p><a target="_blank" href="">京ICP备0000000号</a>/<a target="_blank"
                                                                       href=""><img
                            src="images/wan/bottom/gongan.png">京公网安备0000000000000000</a>Copyright © 2021-2050 MEISHI
                        CO.,LTD.</p>
                </li>
            </ul>
        </div>
    </div>
</div>
</body>
<script>
    function formatDate(date){
        var str = date.getFullYear()+"-"+subDate((date.getMonth()+1))+"-"
            +subDate(date.getDate())+" "+subDate(date.getHours())+":"
            +subDate(date.getMinutes())+":"+subDate(date.getSeconds());
        return str;
    }
    function subDate(s){
        var s1 = "0"+s;
        return s1.substring(s1.length-2);
    }

    function sendInfo()
    {
        var message=document.getElementById("message-text");
        var comment=message.value;

        var d=new Date();
        var date=formatDate(d);

        location.href="insertComment?name=${user.username}&comment="+comment+"&date="+date;

    }
</script>
</html>