<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>菜品详情</title>
    <link href="//netdna.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet"> <link type="text/css" rel="stylesheet" href="css/cai.css"/>
    <link type="text/css" rel="stylesheet" href="css/cai.css"/>
    <script src="js/jquery-3.4.1.min.js"></script>
    <script src="js/1.js"></script>
    <link rel="stylesheet" href="./css/site.css">
    <link rel="stylesheet" href="./css/base.css">
</head>
<body>
<!-- header -->
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
<!-- content -->
<div class="contentBox" style="background-color: #ffe4c4">
    <div class="baseWidth clearfix">
        <div class="contentLeft fl">
            <div class="introduction clearfix">
                <img class="fl" src="${food.img}" style="border-radius: 9px" width="233px" height="240px">
                <div class="introductionTop">
                    <p class="introductionTit"><strong>${food.name}</strong> <img src="images/wan/logo_1/log_12.png"width="30px" height="30px" style="position: relative;top:4px"></p>
                    <div class="clearfix itemTag">
                        <div class="fl itemTagL">
                            <p>菜品种类:${food.type}</p>
                            <p>流行热度:${food.pop}</p>
                            <p>所需步骤:${food.way}</p>
                        </div>
                        <div class="fr itemTagR">
                            <p>烹饪所需时间:${food.time}</p>
                            <div class="detailTit" style="background-color: #00a1d6">
                                <i class="fa fa-heart fa-lg"></i><button onclick="toCollect()" style="background-color: #00a1d6;border: none;color: #ffffff; letter-spacing: 6px">&nbsp;收藏</button>
                            </div>
                            <div class="detailTit" style="background-color: #00a1d6">
                                <i class="fa fa-arrow-circle-right fa-lg"></i><button style="background-color: #00a1d6;border: none;color: white;letter-spacing: 6px"><a href="foodlist" style="color: white">浏览其他菜品</a></button>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
            <div class="detailTit">
                <span id="foodName">${food.name}</span>食谱大全
            </div>
            <span id="msg" style="display: none">${msg}</span>
            <div class="deatilNav">
                <div class="hotSP deatilNavItem clearfix">
                    <span class="fl isSelect">美食简介</span>
                    <span class="fl">烹饪宝典</span>
                    <span class="fl">美食文化</span>
                </div>
                <div>
                    <div class="articleContent">
                        <div class="makeList">
                            <div class="detailBigImg">
                                <img src="${food.img}" alt="">
                            </div>
                            <blockquote class="blockquote-reverse">
                                <p>该美食的名字叫${food.name}，是一道${food.type},在人们评价中很${food.pop}，这道菜需要${food.way},共需${food.time}。</p><br><br>
                                <footer>Someone famous in ————————<cite title="Source Title">${food.name}</cite></footer>
                            </blockquote>
                        </div>
                    </div>
                    <div class="articleContent none">
                        <div class="detailArticle">${food.name}烹饪宝典</div>
                        <blockquote class="blockquote-reverse">
                            <p>${food.step}</p><br><br>
                            <footer>总共需要${food.way}————————<cite title="Source Title">${food.name}</cite></footer>
                        </blockquote>
                    </div>
                    <div class="articleContent none">
                        <div class="detailArticle">${food.name}文化介绍</div>
                        <div class="detailBigImg">
                            <img src="${food.img}" alt="">
                        </div>
                        <blockquote class="blockquote-reverse">
                            <p>${food.culture}</p><br><br>
                            <footer>Someone famous in FoodHome————————<cite title="Source Title">${food.name}</cite></footer>
                        </blockquote>
                    </div>
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

    window.onload=function()//用window的onload事件，窗体加载完毕的时候
    {
        var spanMsg=document.getElementById("msg");
        var msg=spanMsg.innerText;
        if(msg){
            alert(msg);
        }
    }

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

    function toCollect(){

        var span=document.getElementById("foodName");
        var foodName=span.innerText;

        var a=document.getElementById("userName");
        var userName=a.innerText;

        var d=new Date();
        var date=formatDate(d);
        location.href="Collect?userName="+userName+"&foodName="+foodName+"&date="+date;

    }
</script>
</html>