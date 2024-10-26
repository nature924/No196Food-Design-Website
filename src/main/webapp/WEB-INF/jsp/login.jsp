<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/html">
<head lang="en">
    <meta charset="UTF-8">
    <title>登入</title>
    <link href="//netdna.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet"> <link type="text/css" rel="stylesheet" href="css/cai.css"/>
    <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
    <script src="js/jquery-3.4.1.min.js"></script>
    <script src="js/1.js"></script>
    <link rel="stylesheet" href="./css/base.css">
    <link rel="stylesheet" href="./css/site.css">
</head>
<style>
</style>
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

        <div class="header_deng">
            <div style="position: relative;left: -68px;color: #fbff8d"><span><strong>欢迎光临美食小屋！游客！</strong></span></div>
            <ul class="deng_2">
                <li><i class="fa fa-hand-pointer-o"></i><a href="login">&nbsp;登陆</a></li>
                <li><i class="fa fa-registered"></i><a href="register">&nbsp;注册</a></li>
            </ul>
        </div>
    </div>
</div>
<div class="DH">
    <div class="daohang">
        <ul>
            <li class="daohang_hr"><a class="dh_a" target="_blank" href="sy"><strong class="cwl">首页</strong><img
                    src="images/wan/daohang/huangguan.png"></a>
            </li>
            <li class="daohang_hr"><a class="dh_a" target="_blank" href="foodlist"><strong class="cwl">美食浏览</strong><img
                    src="images/wan/daohang/huangguan.png"></a>
            </li>
            <li>
                <a class="dh_a" target="_blank" href="foodinfolist"><strong>美食文化</strong><img
                        src="images/wan/daohang/huangguan.png"></a>
            </li>
            <li><a class="dh_a" target="_blank" href="CollectInfo"><strong>我的收藏</strong><img
                    src="images/wan/daohang/huangguan.png"></a></li>
            <li><a class="dh_a" target="_blank" href="Comment"><strong>趣味答题</strong><img
                    src="images/wan/daohang/huangguan.png"></a></li>
        </ul>
    </div>
</div>
</div>
<div style="margin:0px; padding:32px;background-color: #ffe4c4">
<div style="width: 300px;height: 300px;margin: 20px auto;background: #ffe4c4" >
    <strong><span style="color:red">${msg}</span></strong>
<form action="login" method="post" >
    <div class="form-group">
        <i class="fa fa-user fa-lg"></i><label>&nbsp;用户名</label>
     <input type="text" class="form-control"  name="username" required>
    </div>
    <div class="form-group">
        <i class="fa fa-address-card fa-lg"> </i><label for="exampleInputPassword1">&nbsp;密码</label>
    <input type="password" class="form-control" id="exampleInputPassword1" name="password" required>
    </div>

    <button type="submit" class="btn btn-primary"><i class="fa fa-sign-in"></i>&nbsp;登录</button>&nbsp;
    <a class="btn btn-primary" href="adminlogin">你是管理员？</a>
    <br> <br>
    <a href="register">还没有账号？——>>立即注册</a>

</form>
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
        </div>
    </div>
</div>
</body>
<script>


</script>
</html>