<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/html">
<head lang="en">
    <meta charset="UTF-8">
    <title>美食小屋</title>
    <link href="//netdna.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet"> <link type="text/css" rel="stylesheet" href="css/cai.css"/>
    <link type="text/css" rel="stylesheet" href="css/cai.css"/>
    <script src="js/jquery-3.4.1.min.js"></script>
    <script src="js/1.js"></script>
    <link rel="stylesheet" href="./css/base.css">
    <link rel="stylesheet" href="./css/site.css">
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
<div class="CT">
    <div class="content">
        <div class="content_c3">
            <div class="content_1">
                <div class="cookbook" style="display: block">
                    <div class="book1">
                        <div class="cook1"><p><i class="fa fa-camera-retro fa-2x"></i>  美食栏</p></div>
                    </div>

                    <div class="book2">
                        <ul>
                            <c:forEach items="${pageInfo.list}" var="food">
                                <li class="cook2">
                                    <div class="cook21"><img src="${food.img}"></div>
                                    <div class="cook22" style="margin-top:0px">
                                        <div class="cook221" style="display: block">
                                           <strong><p class="p1"><a href="">${food.name}</a></p></strong>
                                            <p class="p2"><a href="">${food.pop}</a></p>
                                            <p class="p3"><a href="">${food.time}</a></p>
                                        </div>
                                        <div class="cook222">
                                            <ul>
                                                <li>
                                                    <img src="images/wan/logo_1/log_11.png">
                                                    <a href="findinfo?name=${food.name}">${food.way}</a></li>
                                                <li>
                                                    <img src="images/wan/logo_1/log_12.png">
                                                    <a href="findinfo?name=${food.name}">${food.type}</a></li>
                                            </ul>
                                        </div>
                                    </div>
                                </li>
                            </c:forEach>
                        </ul>
                        <%--分页--%>
                        <div class="page">
                            <ul class="clearfix pagination">
                                <c:choose>
                                    <c:when test="${pageInfo.isFirstPage}">
                                        <li class="currentPage disabled"><a href="javascript:void(0)"><<</a></li>
                                    </c:when>
                                    <c:otherwise>
                                        <li class="page-item"><a href="foodlist?pageNum=${pageInfo.prePage}"><<</a></li>
                                    </c:otherwise>
                                </c:choose>

                                <c:forEach items="${pageInfo.navigatepageNums}" var="pi">
                                    <c:choose>
                                        <c:when test="${pageInfo.pageNum==pi}">
                                            <li class="currentPage active"><a href="foodlist?pageNum=${pi}">${pi}</a>
                                            </li>
                                        </c:when>
                                        <c:otherwise>
                                            <li class="page-item"><a href="foodlist?pageNum=${pi}">${pi}</a></li>
                                        </c:otherwise>
                                    </c:choose>
                                </c:forEach>
                                <c:choose>
                                    <c:when test="${pageInfo.isLastPage}">
                                        <li class="currentPage disabled"><a href="javascript:void(0)">>></a></li>
                                    </c:when>
                                    <c:otherwise>
                                        <li class="page-item"><a href="foodlist?pageNum=${pageInfo.nextPage}">>></a>
                                        </li>
                                    </c:otherwise>
                                </c:choose>
                            </ul>
                        </div>
                    </div>
                </div>
                </li>
                </ul>
            </div>
        </div>
    </div>
</div>
<div class="content_c4">

</div>
<div class="content_c4">

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
</html>