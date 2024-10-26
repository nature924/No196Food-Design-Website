<%@ page contentType="text/html;charset=UTF-8" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!doctype html>
<html lang="zh">
<head>
    <meta charset="utf-8">
    <meta content="width=device-width, initial-scale=1, shrink-to-fit=no" name="viewport">
    <title>管理员菜品列表</title>
    <link href="//netdna.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
    <link type="text/css" rel="stylesheet" href="css/cai.css"/>
    <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="./css/base.css">
    <link rel="stylesheet" href="./css/site.css">
    <script src="js/jquery-3.4.1.min.js"></script>
    <script src="js/1.js"></script>
</head>

<body style="background-color: #ffe4c4">
<div class="container-fluid">
    <div class="row">
        <div class="col-md-12">
            <nav class="navbar navbar-expand-lg navbar-light">

                <img src="images/wan/header/meishilogo.png" height="100px" width="100px">
                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                    <a class="list-group-item" href="adminfoodlist"><i class="fa fa-home fa-fw"></i>&nbsp; 菜谱列表</a>
                    <a class="list-group-item" href="foodinfolist"><i class="fa fa-home fa-fw"></i>&nbsp; 菜谱文化管理</a>
                    <a class="list-group-item" href="add"><i class="fa fa-pencil fa-fw"></i>&nbsp; 添加菜谱</a>
                    <a class="list-group-item" href="CommentManageSy"><i class="fa fa-pencil fa-fw"></i> 问答管理 </a>
                    <a class="list-group-item" href="UserManageSy"><i class="fa fa-pencil fa-fw"></i> 会员管理 </a>
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
        <div class="col-md-11" style="margin:0 auto">
            <table class="table table-bordered table-sm table-hover table-condensed table-striped">
                <thead>
                <tr>
                    <th>
                        <i class="fa fa-circle-o-notch fa-spin fa-lg"></i> 名称
                    </th>
                    <th>
                        <i class="fa fa-circle-o-notch fa-spin fa-lg"></i> 图片
                    </th>
                    <th>
                        <i class="fa fa-circle-o-notch fa-spin fa-lg"></i> 所需时间
                    </th>
                    <th>
                        <i class="fa fa-circle-o-notch fa-spin fa-lg"></i> 类型
                    </th>
                    <th>
                        <i class="fa fa-circle-o-notch fa-spin fa-lg"></i> 火热程度
                    </th>
                    <th>
                        <i class="fa fa-circle-o-notch fa-spin fa-lg"></i> 做法所需步骤
                    </th>
                    <th>
                        <i class="fa fa-cog fa-spin fa-lg"></i> 管理
                    </th>
                </tr>
                </thead>
                <tbody>
                <c:forEach items="${pageInfo.list}" var="food">
                    <tr>
                        <td>${food.name}</td>
                        <td><img width="232px" src="${food.img}"></td>
                        <td>${food.time}</td>
                        <td>${food.type}</td>
                        <td>${food.pop}</td>
                        <td>${food.way}</td>
                        <td><a class="btn btn-danger" href="foodDel?name=${food.name}">
                            <i class="fa fa-trash-o fa-lg"></i>&nbsp;删除</a>
                            <a class="btn btn-danger" href="edit?name=${food.name}">
                                <i class="fa fa-scissors"></i>&nbsp;编辑</a></td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
    <div style="margin-left: 600px;">
        <div class="page">
            <ul class="clearfix pagination">
                <c:choose>
                    <c:when test="${pageInfo.isFirstPage}">
                        <li class="currentPage disabled"><a href="javascript:void(0)"><<</a></li>
                    </c:when>
                    <c:otherwise>
                        <li class="page-item"><a href="adminfoodlist?pageNum=${pageInfo.prePage}"><<</a></li>
                    </c:otherwise>
                </c:choose>

                <c:forEach items="${pageInfo.navigatepageNums}" var="pi">
                    <c:choose>
                        <c:when test="${pageInfo.pageNum==pi}">
                            <li class="currentPage active"><a href="adminfoodlist?pageNum=${pi}">${pi}</a></li>
                        </c:when>
                        <c:otherwise>
                            <li class="page-item"><a href="adminfoodlist?pageNum=${pi}">${pi}</a></li>
                        </c:otherwise>
                    </c:choose>
                </c:forEach>
                <c:choose>
                    <c:when test="${pageInfo.isLastPage}">
                        <li class="currentPage disabled"><a href="javascript:void(0)">>></a></li>
                    </c:when>
                    <c:otherwise>
                        <li class="page-item"><a href="adminfoodlist?pageNum=${pageInfo.nextPage}">>></a></li>
                    </c:otherwise>
                </c:choose>
            </ul>
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
    <script src="node_modules/jquery/dist/jquery.slim.min.js"></script>
    <script src="node_modules/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
</div>
</body>
</html>