<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/html">
<head lang="en">
    <meta charset="UTF-8">
    <title>美食小屋</title>
    <link href="//netdna.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet"> <link type="text/css" rel="stylesheet" href="css/cai.css"/>
    <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
    <link type="text/css" rel="stylesheet" href="css/cai.css"/>
    <link rel="stylesheet" href="./css/base.css">
    <link rel="stylesheet" href="./css/site.css">
    <script src="js/jquery-3.4.1.min.js"></script>
    <script src="js/1.js"></script>
</head>
<body>
<span id="msg" style="display: none">${msg}</span>
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
            <li class="daohang_hr"><a class="dh_a" target="_blank" href="sy"><strong>首页</strong><img
                    src="images/wan/daohang/huangguan.png"></a>
            </li>
            <li class="daohang_hr"><a class="dh_a" target="_blank" href="foodlist"><strong>美食浏览</strong><img
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

<div class="slider">
    <ul>
        <li><a href="#"><img src="images/lunbo/1.jpg" alt=""></a></li>
        <li><a href="#"><img src="images/lunbo/2.jpg" alt=""></a></li>
        <li><a href="#"><img src="images/lunbo/3.jpg" alt=""></a></li>
        <li id="current"><a href="#"><img src="images/lunbo/4.jpg" ></a></li>
        <li><a href="#"><img src="images/lunbo/5.jpg" alt=""></a></li>
        <li><a href="#"><img src="images/lunbo/6.jpg" alt=""></a></li>
        <li><a href="#"><img src="images/lunbo/7.jpg" alt=""></a></li>
        <li><a href="#"><img src="images/lunbo/8.jpg" alt=""></a></li>
    </ul>
    <!--箭头-->
    <div class="arrow">
        <span class="arrow-left">&lt;</span>
        <span class="arrow-right">&gt;</span>
    </div>
</div>

<div class="jumbotron" style="background-color: bisque;box-shadow: 0px -2px 10px #d0cccc inset;margin-bottom: -1px;">
    <div class="container" style="padding-left: 60px">
        <h1 class="display-3">你的の美食小屋<small style="font-size: 20px;">打造我们自己的美食圈！</small></h1>
        <p style="margin-top: 2rem;">
            美食小屋致力于让不会做饭的人会做 让会做饭的人更会做 科学的饮食建议，可视化的营养信息，丰富的菜谱内容。 </p><br><br>
        <p>
            <a target="_blank" href="login" class="btn btn-primary btn-lg" role="button">了解更多--»</a>
        </p>
    </div>
</div>

<div class="CT">
    <div class="content">
        <div style="font-size: 30px;margin-bottom:50px;padding-top: 50px;"><i class="fa fa-clock-o fa-2x"></i><strong>你的一天食谱</strong></div>
        <div class="content_c1">
            <div class="ctime1">
                <!--4点到10点-->
                <div class="time_1" style="display: block">
                    <ul>
                        <li>
                            <a><img alt="青椒紫茄酱肉包" src="images/wan/sql/4.1.jpg"/></a>
                            <div>
                                <h2><a target="_blank"
                                       href="foodlist"
                                       title="青椒紫茄酱肉包">青椒紫茄酱肉包</a></h2>
                                <p><strong>营养丰富，早餐最爱</strong></p>
                            </div>
                        </li>
                        <li>
                            <a><img alt="冰糖雪梨糖水" src="images/wan/sql/4.2.jpg"/></a>
                            <div>
                                <h2><a target="_blank" href="foodlist"
                                       title="冰糖雪梨糖水">冰糖雪梨糖水</a></h2>
                                <p><strong>美味可口，营养丰富</strong></p>
                            </div>
                        </li>
                        <li>
                            <a><img alt="番茄焗蛋" src="images/wan/sql/4.3.jpg"/></a>
                            <div>
                                <h2><a target="_blank" href="foodlist"
                                       title="番茄焗蛋">番茄焗蛋</a></h2>
                                <p><strong>美味营养，吃完元气满满</strong></p>
                            </div>
                        </li>
                    </ul>
                </div>
                <!--10点到14点-->
                <div class="time_1" style="display:none">
                    <ul>
                        <li>
                            <a><img alt="葱爆羊肉" src="images/wan/sql/10.1.jpg"/></a>
                            <div>
                                <h2><a target="_blank" href="foodlist"   title="葱爆羊肉">葱爆羊肉</a></h2>
                                <p><strong>色香味俱佳，惊艳味蕾</strong></p>
                            </div>
                        </li>
                        <li>
                            <a><img alt="菠萝咕噜肉" src="images/wan/sql/10.2.jpg"/></a>
                            <div>
                                <h2><a target="_blank" href="foodlist" title="菠萝咕噜肉">菠萝咕噜肉</a></h2>
                                <p><strong>经济实惠，有滋有味</strong></p>
                            </div>
                        </li>
                        <li>
                            <a><img alt="饭店超级下饭大众菜熘酱豆腐" src="images/wan/sql/10.3.jpg"/></a>
                            <div>
                                <h2><a target="_blank"
                                       href="foodlist"  title="饭店超级下饭大众菜熘酱豆腐">饭店超级下饭大众菜熘酱豆腐</a></h2>
                                <p><strong>营养美味，一吃停不下来</strong></p>
                            </div>
                        </li>
                    </ul>
                </div>
                <!--14点到16点-->
                <div class="time_1">
                    <ul>
                        <li>
                            <a><img alt="芝麻香酥点心" src="images/wan/sql/14.1.jpg"/></a>
                            <div>
                                <h2><a target="_blank" href="foodlist"  title="芝麻香酥点心">芝麻香酥点心</a></h2>
                                <p><strong>香气扑鼻，好吃过瘾</strong></p>
                            </div>
                        </li>
                        <li>
                            <a><img alt="酥脆五香炸薯片" src="images/wan/sql/14.2.jpg"/></a>
                            <div>
                                <h2><a target="_blank" href="foodlist"   title="酥脆五香炸薯片">酥脆五香炸薯片</a></h2>
                                <p><strong>无比美味，吃一口就爱上</strong></p>
                            </div>
                        </li>
                        <li>
                            <a><img alt="老婆饼" src="images/wan/sql/14.3.jpg"/></a>
                            <div>
                                <h2><a target="_blank" href="foodlist"   title="老婆饼">老婆饼</a></h2>
                                <p><strong>惊艳味蕾，好吃到爆</strong></p>
                            </div>
                        </li>
                    </ul>
                </div>
                <!--16点到21点-->
                <div class="time_1">
                    <ul>
                        <li>
                            <a><img alt="炸酱面" src="images/wan/sql/16.1.jpg"/></a>
                            <div>
                                <h2><a target="_blank" href="foodlist" title="炸酱面">炸酱面</a></h2>
                                <p><strong>家常经典，上桌被抢光</strong></p>
                            </div>
                        </li>
                        <li>
                            <a><img alt="香菇菜蒸排骨" src="images/wan/sql/16.2.jpg"/></a>
                            <div>
                                <h2><a target="_blank" href="foodlist" title="香菇菜蒸排骨">香菇菜蒸排骨</a></h2>
                                <p><strong>香味浓郁，让人食欲大增</strong></p>
                            </div>
                        </li>
                        <li>
                            <a><img alt="清炒空心菜" src="images/wan/sql/16.3.jpg"/></a>
                            <div>
                                <h2><a target="_blank" href="foodlist"   title="清炒空心菜">清炒空心菜</a></h2>
                                <p><strong>味道鲜美，瞬间打开胃口</strong></p>
                            </div>
                        </li>
                    </ul>
                </div>
                <!--21点到4点-->
                <div class="time_1">
                    <ul>
                        <li>
                            <a><img alt="自制土家酱香饼" src="images/wan/sql/21.1.jpg"/></a>
                            <div>
                                <h2><a target="_blank"
                                       href="foodlist"   title="自制土家酱香饼">自制土家酱香饼</a></h2>
                                <p><strong>均衡营养，滋补养生</strong></p>
                            </div>
                        </li>
                        <li>
                            <a><img alt="简易版陕西油泼面" src="images/wan/sql/21.2.jpg"/></a>
                            <div>
                                <h2><a target="_blank"
                                       href="foodlist"   title="简易版陕西油泼面">简易版陕西油泼面</a></h2>
                                <p><strong>美味过瘾，好吃停不下嘴</strong></p>
                            </div>
                        </li>
                        <li>
                            <a><img alt="陕西麻食" src="images/wan/sql/21.3.jpg"/></a>
                            <div>
                                <h2><a target="_blank" href="foodlist"   title="陕西麻食">陕西麻食</a></h2>
                                <p><strong>激发味蕾，好吃到舔手指</strong></p>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
            <div class="ctime2">
                <div class="time_2" onmouseover="change1(this,0)">早餐时间</div>
                <div class="time_2" onmouseover="change1(this,1)">午餐时间</div>
                <div class="time_2" onmouseover="change1(this,2)">下午茶时间</div>
                <div class="time_2" onmouseover="change1(this,3)">晚餐时间</div>
                <div class="time_2" onmouseover="change1(this,4)">夜宵时间</div>
            </div>
        </div>
        <div class="content_c2">
            <div class="food_material1">
                <div><p>三月，滋阴润肺，适当进补</p></div>
                <div class="more"><a href="foodlist">更多食材&nbsp&gt</a></div>
            </div>
            <div class="food_material2">
                <div class="food_up">
                    <ul>
                        <li class="food_u"><a href="">水果</a></li>
                        <li class="food_u"><a href="">蔬菜</a></li>
                        <li class="food_u"><a href="">五谷</a></li>
                        <li class="food_u"><a href="">生鲜</a></li>
                    </ul>
                </div>
                <div class="food_down">
                    <div class="food_d" style="display: block">
                        <ul>
                            <li class="down1">
                                <img src="images/wan/food/fruit/fruit1.jpg">
                                <ul>
                                    <li style="list-style-type:square"><a>梨</a></li>
                                </ul>
                            </li>
                            <li class="down1">
                                <img src="images/wan/food/fruit/fruit2.jpg">
                                <ul type="square">
                                    <li style="list-style-type:square"><a>山楂</a></li>
                                </ul>
                            </li>
                            <li class="down1"><img src="images/wan/food/fruit/fruit3.jpg">
                                <ul type="square">
                                    <li style="list-style-type:square"><a>橙</a></li>
                                </ul>
                            </li>
                            <li class="down1"><img src="images/wan/food/fruit/fruit4.jpg">
                                <ul type="square">
                                    <li><a>苹果</a></li>
                                </ul>
                            </li>
                            <li class="down1"><img src="images/wan/food/fruit/fruit5.jpg">
                                <ul type="square">
                                    <li>猕猴桃</li>
                                </ul>
                            </li>
                            <li class="down1"><img src="images/wan/food/fruit/fruit6.jpg">
                                <ul type="square">
                                    <li>甘蔗</li>
                                </ul>
                            </li>
                            <li class="down1"><img src="images/wan/food/fruit/fruit7.jpg">
                                <ul type="square">
                                    <li>香蕉</li>
                                </ul>
                            </li>
                            <li class="down1"><img src="images/wan/food/fruit/fruit8.jpg">
                                <ul type="square">
                                    <li>柚子</li>
                                </ul>
                            </li>
                        </ul>
                    </div>
                    <div class="food_d">
                        <ul>
                            <li class="down1"><img src="images/wan/food/vegetables/vegetable1.jpg">
                                <ul style="list-style-type:square">
                                    <li>冬笋</li>
                                </ul>
                            </li>
                            <li class="down1"><img src="images/wan/food/vegetables/vegetable2.jpg">
                                <ul type="square">
                                    <li>芹菜</li>
                                </ul>
                            </li>
                            <li class="down1"><img src="images/wan/food/vegetables/vegetable3.jpg">
                                <ul type="square">
                                    <li>胡萝卜</li>
                                </ul>
                            </li>
                            <li class="down1"><img src="images/wan/food/vegetables/vegetable4.jpg">
                                <ul type="square">
                                    <li>大白菜</li>
                                </ul>
                            </li>
                            <li class="down1"><img src="images/wan/food/vegetables/vegetable5.jpg">
                                <ul type="square">
                                    <li>莴笋</li>
                                </ul>
                            </li>
                            <li class="down1"><img src="images/wan/food/vegetables/vegetable6.jpg">
                                <ul type="square">
                                    <li>菜花</li>
                                </ul>
                            </li>
                            <li class="down1"><img src="images/wan/food/vegetables/vegetable7.jpg">
                                <ul type="square">
                                    <li>油麦菜</li>
                                </ul>
                            </li>
                            <li class="down1"><img src="images/wan/food/vegetables/vegetable8.jpg">
                                <ul type="square">
                                    <li>平菇</li>
                                </ul>
                            </li>
                        </ul>
                    </div>
                    <div class="food_d">
                        <ul>
                            <li class="down1"><img src="images/wan/food/rice/rice1.jpg">
                                <ul style="list-style-type:square">
                                    <li>板栗</li>
                                </ul>
                            </li>
                            <li class="down1"><img src="images/wan/food/rice/rice2.jpg">
                                <ul type="square">
                                    <li>黑豆</li>
                                </ul>
                            </li>
                            <li class="down1"><img src="images/wan/food/rice/rice3.jpg">
                                <ul type="square">
                                    <li>核桃</li>
                                </ul>
                            </li>
                            <li class="down1"><img src="images/wan/food/rice/rice4.jpg">
                                <ul type="square">
                                    <li>小米</li>
                                </ul>
                            </li>
                            <li class="down1"><img src="images/wan/food/rice/rice5.jpg">
                                <ul type="square">
                                    <li>燕麦</li>
                                </ul>
                            </li>
                            <li class="down1"><img src="images/wan/food/rice/rice6.jpg">
                                <ul type="square">
                                    <li>糯米</li>
                                </ul>
                            </li>
                            <li class="down1"><img src="images/wan/food/rice/rice7.jpg">
                                <ul type="square">
                                    <li>干桂圆</li>
                                </ul>
                            </li>
                            <li class="down1"><img src="images/wan/food/rice/rice8.jpg">
                                <ul type="square">
                                    <li>玉米粉</li>
                                </ul>
                            </li>
                        </ul>
                    </div>
                    <div class="food_d">
                        <ul>
                            <li class="down1"><img src="images/wan/food/fresh/fresh1.jpg">
                                <ul style="list-style-type:square">
                                    <li>排骨</li>
                                </ul>
                            </li>
                            <li class="down1"><img src="images/wan/food/fresh/fresh2.jpg">
                                <ul type="square">
                                    <li>虾</li>
                                </ul>
                            </li>
                            <li class="down1"><img src="images/wan/food/fresh/fresh3.jpg">
                                <ul type="square">
                                    <li>羊肉</li>
                                </ul>
                            </li>
                            <li class="down1"><img src="images/wan/food/fresh/fresh4.jpg">
                                <ul type="square">
                                    <li>带鱼</li>
                                </ul>
                            </li>
                            <li class="down1"><img src="images/wan/food/fresh/fresh5.jpg">
                                <ul type="square">
                                    <li>牛肉</li>
                                </ul>
                            </li>
                            <li class="down1"><img src="images/wan/food/fresh/fresh6.jpg">
                                <ul type="square">
                                    <li>鱿鱼</li>
                                </ul>
                            </li>
                            <li class="down1"><img src="images/wan/food/fresh/fresh7.jpg">
                                <ul type="square">
                                    <li>乌骨鸡</li>
                                </ul>
                            </li>
                            <li class="down1"><img src="images/wan/food/fresh/fresh8.jpg">
                                <ul type="square">
                                    <li>腊肉</li>
                                </ul>
                            </li>
                        </ul>
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
<script>
    window.onload=function()//用window的onload事件，窗体加载完毕的时候
    {
        var spanMsg=document.getElementById("msg");
        var msg=spanMsg.innerText;
        if(msg){
            alert(msg);
        }
    }
</script>
</body>
</html>