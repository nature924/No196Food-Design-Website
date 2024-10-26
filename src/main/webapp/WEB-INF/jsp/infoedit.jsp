<%@ page import="com.food.foodweb.model.Food" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!doctype html>
<html lang="zh">
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta content="width=device-width, initial-scale=1, shrink-to-fit=no" name="viewport">

    <!-- Bootstrap CSS -->
    <title>菜品文化编辑页面</title>
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
    <div class="row">
        <div class="col-md-12">
            <%
                Food food= (Food) request.getAttribute("f");
            %>
            <div style="margin: 30px auto; width: 400px;" >
                <form action="editinfo" method="post">
                    <div class="form-group row">
                        <label for="inputName" class="col-sm-2 col-form-label" >名称:</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="inputName" name="name" value="<%=food.getName()%>" readonly>
                        </div>
                    </div>
                    <div class="form-group row" >
                        <label for="inputImg" class="col-sm-2 col-form-label" >图片</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="inputImg" name="img"value="<%=food.getImg()%>">
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="inputCulture" class="col-sm-2 col-form-label" >文化</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="inputCulture" name="culture" value="<%=food.getCulture()%>">
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="inputStep" class="col-sm-2 col-form-label" >所需步骤</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="inputStep" name="step" value="<%=food.getStep()%>">
                        </div>
                    </div>
                    <div class="form-group row">
                        <div class="col-sm-2"></div>
                        <div class="col-sm-10">
                            <button type="submit" class="btn btn-primary">编辑菜谱</button>
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
</html>
