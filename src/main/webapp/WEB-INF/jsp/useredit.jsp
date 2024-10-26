<%@ page import="com.food.foodweb.model.User" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!doctype html>
<html lang="zh">
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta content="width=device-width, initial-scale=1, shrink-to-fit=no" name="viewport">

    <!-- Bootstrap CSS -->
    <title>用户编辑页面</title>
    <link href="node_modules/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="//netdna.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet"> <link type="text/css" rel="stylesheet" href="css/cai.css"/>
    <link type="text/css" rel="stylesheet" href="css/cai.css"/>
    <script src="js/jquery-3.4.1.min.js"></script>
    <script src="js/1.js"></script>
    <link rel="stylesheet" href="./css/base.css">
    <link rel="stylesheet" href="./css/site.css">
</head>
<body style="background-color: #ffe4c4">
<div class="container-fluid">
    <div class="row">
        <div class="col-md-12">
            <nav class="navbar navbar-expand-lg navbar-light">

                <img src="images/wan/header/meishilogo.png" height="100px" width="100px">
                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                    <a class="list-group-item" href="adminfoodlist"><i class="fa fa-home fa-fw"></i>&nbsp; 菜谱列表</a>
                    <a class="list-group-item" href="add"><i class="fa fa-pencil fa-fw"></i>&nbsp; 添加菜谱</a>
                    <a class="list-group-item" href="exitadmin"><i class="fa fa-book fa-fw"></i>&nbsp; 退出管理</a>
                    <a class="list-group-item" href="#" onclick="dakemode()"><i class="fa fa-cog fa-fw"></i>&nbsp; 夜间模式</a>
                    <ul class="navbar-nav ml-md-auto">
                        <li class="nav-item">
                            <strong id="start" style="background:#ffe4c4;font-weight: bolder;font-size: 20px"></strong>
                        </li>
                    </ul>
                </div>
            </nav>
        </div>
    </div>
    <% User user=(User)request.getAttribute("userE");%>
    <div class="row">
        <div class="col-md-12">
            <div style="margin: 30px auto; width: 400px;" >
                <form action="userEditByManager" method="post" onsubmit=" return checkAll()">
                    <div class="form-group row">
                        <label for="inputName" class="col-sm-2 col-form-label" >名称:</label>
                        <div class="col-sm-10">
                            <input  type="text" class="form-control" id="inputName" name="username" value="<%=user.getUsername()%>" readonly>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="inputPwd" class="col-sm-2 col-form-label" >密码</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="inputPwd" name="password"value="<%=user.getPassword()%>">
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="inputSex" class="col-sm-2 col-form-label" >性别</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="inputSex" name="sex" value="<%=user.getSex()%>">
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="inputAge" class="col-sm-2 col-form-label" >年龄</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="inputAge" name="age" value="<%=user.getAge()%>">
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="inputType" class="col-sm-2 col-form-label" >体重</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="inputType" name="weight" value="<%=user.getWeight()%>">
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="inputPop" class="col-sm-2 col-form-label" >身高</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="inputPop" name="height" value="<%=user.getHeight()%>">
                        </div>
                    </div>
                    <div class="form-group row">
                        <div class="col-sm-2"></div>
                        <div class="col-sm-10">
                            <button type="submit" class="btn btn-primary">编辑</button>
                        </div>
                    </div>
                </form>
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
                    <p><a target="_blank" href="https://www.miibeian.gov.cn">京ICP备14030359号</a>/<a target="_blank"
                                                                                                   href="https://beian.gov.cn/"><img
                            src="images/wan/bottom/gongan.png">京公网安备11010802026928</a>Copyright © 2003-2019 MEISHIJ
                        CO.,LTD.</p>
                </li>
            </ul>
        </div>
    </div>
</div>

<script src="node_modules/jquery/dist/jquery.slim.min.js"></script>
<script src="node_modules/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
</body>
<script>

    function checkAll(){
        if(!checkName())
        {
            return false;
        }
        if(!numberCheck())
        {
            return false;
        }
        return true;
    };

    function checkName(){
        var name=document.getElementById("name");
        var nameTip=document.getElementById("nameTip");
        var nameValue=name.value;//得到name的值
        if(!nameValue)
        {
            nameTip.innerHTML="姓名不能为空!";
            return false;
        }
        else if(nameValue.length>15)
        {
            nameTip.innerHTML="长度不能超过10个字符!";
            return false;
        }
        else{
            nameTip.innerHTML="";
            return true;
        }
    };


    function numberCheck(){
        // HTML 从上往下加载
        //1.获取标签元素  2.获取输入的值 3.合法性验证  4.给出提示
        var element=document.getElementById("age");
        var numTip=document.getElementById("numTip");
        var inputValue=element.value;
        if(inputValue>=1&&inputValue<=100)
        {
            numTip.innerHTML="";
            return true;
        }
        numTip.innerHTML="输入值要介于1-100之间!";
        return false;
    };
</script>
</html>
