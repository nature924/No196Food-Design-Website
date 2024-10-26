<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/html">
<head lang="en">
    <meta charset="UTF-8">
    <title>美食小屋</title>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="//netdna.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
    <link href="css/cai.css"rel="stylesheet" />
    <link href="css/cui.css" rel="stylesheet">
    <link href="css/site.css" rel="stylesheet">
    <script src="js/jquery-3.4.1.min.js"></script>
    <script src="js/1.js"></script>
</head>
<body class="top-navigation pushy-right-side">
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
    <div class="CT2">
        <div class="white-wrapper" style="background-color: #fff;">
            <div class="section-inner" style="padding-top: 50px;">
                <div class="container">
                        <div style="font-size: 24px;margin-bottom: 27px;">
                            <p><i class="fa fa-modx fa-2x"></i>  美食的文化</p>
                        </div>
                    <div class="row">
                        <c:forEach items="${cultureInfo.list}" var="foodinfo">
                        <div class="col-md-3 match-height"style="margin-bottom:30px">
                            <div class="hover-effect smoothie">
                                <a href="#" class="smoothie">
                                    <img src="${foodinfo.img}" alt="Image" class="img-responsive smoothie" width="352px" height="352px"></a>
                                <div class="hover-overlay smoothie text-center">
                                    <div class="vertical-align-bottom">
                                        <h4>${foodinfo.name}</h4>
                                        <span class="item-category-span">${foodinfo.type}</span>
                                    </div>
                                </div>
                                <div class="hover-caption dark-overlay smoothie text-center">
                                    <div class="vertical-align-top">
                                        <p style="margin-bottom:20px"><small>${foodinfo.culture}</small></p>
                                    </div>
                                    <div class="vertical-align-bottom">
                                        <a href="findinfo?name=${foodinfo.name}" class="btn btn-primary pull-right " style="margin-bottom:20px">康康</a>
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
    <div class="page">
        <ul class="clearfix pagination">
            <c:choose>
                <c:when test="${cultureInfo.isFirstPage}">
                    <li class="page-item disabled"><a href="javascript:void(0)"><<</a></li>
                </c:when>
                <c:otherwise>
                    <li class="page-item"><a href="foodculture?pageNum=${cultureInfo.prePage}"><<</a></li>
                </c:otherwise>
            </c:choose>

            <c:forEach items="${cultureInfo.navigatepageNums}" var="pi">
                <c:choose>
                    <c:when test="${cultureInfo.pageNum==pi}">
                        <li class="page-item active"><a href="foodculture?pageNum=${pi}">${pi}</a>
                        </li>
                    </c:when>
                    <c:otherwise>
                        <li class="page-item"><a href="foodculture?pageNum=${pi}">${pi}</a></li>
                    </c:otherwise>
                </c:choose>
            </c:forEach>
            <c:choose>
                <c:when test="${cultureInfo.isLastPage}">
                    <li class="page-item disabled"><a href="javascript:void(0)">>></a></li>
                </c:when>
                <c:otherwise>
                    <li class="page-item"><a href="foodculture?pageNum=${cultureInfo.nextPage}">>></a>
                    </li>
                </c:otherwise>
            </c:choose>
        </ul>
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