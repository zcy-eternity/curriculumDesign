<%@ page pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <c:url var="base" value="/"/>
    <base href="${base}">
    <meta charset="UTF-8">
    <title>东北林业大学</title>
    <script src="https://cdn.bootcdn.net/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <style>
        #carouselExampleIndicators{
            margin-top: 50px;
        }
        .container-fluid{
            margin-top: 10px;
        }
        * {
            padding: 0;
            margin: 0;
            box-sizing: border-box;
        }
        a{
            text-decoration: none;
            color: #111111;
        }
        a:hover{
            text-decoration: none;
        }
        .right {
            margin-left: auto;
        }
        /*-------- 12栅格 -----------  */
        .col-md-1 {width: 8.33%;}
        .col-md-2 {width: 16.67%;}
        .col-md-3 {width: 25%;}
        .col-md-4 {width: 33.33%;}
        .col-md-5 {width: 41.67%;}
        .col-md-6 {width: 50%;}
        .col-md-7 {width: 58.33%;}
        .col-md-8 {width: 66.67%;}
        .col-md-9 {width: 75%;}
        .col-md-10 {width: 83.33%;}
        .col-md-11 {width: 91.67%;}
        .col-md-12 {width: 100%;}
        .footer {
            margin: auto;
            text-align: center;
            background-color: cornflowerblue;
            color: white;
        }
        .main{
            display: flex;
            justify-content: center;
            flex-wrap: wrap;
        }

        .item1 a{
            display: inline-block;
            padding: 5px 15px;
            text-decoration: none;
        }
        .topics .item1 a{
            padding: 5px 5px;
        }
        .item1 a:hover{
            color: brown;
        }
        .news:hover{
            box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
        }

        .notice:hover{
            box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
        }
        .dynamic:hover{
            box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
        }
        .main .notice{
            margin-left: 10px;
        }
        .topic:hover{
            box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
        }
        .news{
            display: flex;
            flex-wrap: wrap;
        }
        .header1{
            display: flex;
            text-align: center;
        }
        .header1 img{
            margin-left: 20px;
        }
        .contact{
            margin-left: 10px;
        }
        .contact h4{
            margin-left: 25px;
        }
        .header1 span{
            font-size: 2em;
        }
        .item2{
            padding: 5px 25px;
        }

        .dynamic{

        }
        .topics{
            display: flex;
            flex-wrap: wrap;
        }
        /*改变轮播图大小*/
        #carouselExampleCaptions .carousel-inner img {
            display: block;
            width:100%;
            height:230px;
        }
        #lunBo{
            height: 230px;
        }
        #carouselExampleIndicators .carousel-inner img {
            display: block;
            width:100%;
            height: 710px;
        }
        #lunBo1{
            height: 710px;
        }
    </style>
</head>

<body>
<!--导航-->
<nav class="navbar fixed-top navbar-expand-lg navbar-light " style="background-color:cornflowerblue ; ">
    <a class="navbar-brand" href="#">
        <img src="resources/images/logo.png" height="50px">
    </a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNavDropdown">
        <ul class="navbar-nav">
            <li class="nav-item">
                <a class="nav-link" href="index">首页</a>
            </li>
            <li class="nav-item dropdown">
                <a class="nav-link dropdown" href="profession" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    专业介绍
                </a>
                <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                    <a class="dropdown-item" href="profession">专业简介</a>
                    <a class="dropdown-item" href="profession">方向简介</a>
                </div>
            </li>
            <li class="nav-item dropdown">
                <a class="nav-link dropdown" href="#" id="navbarDropdownMenuLink1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    实验室
                </a>
                <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink1">
                    <a class="dropdown-item" href="#">923创新实验室</a>
                    <a class="dropdown-item" href="#">925移动开发实验室</a>
                    <a class="dropdown-item" href="#">923实验室</a>
                </div>
            </li>
            <li class="nav-item dropdown">
                <a class="nav-link dropdown" href="#" id="navbarDropdownMenuLink2" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    教师队伍
                </a>
                <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink2">
                    <a class="dropdown-item" href="#">教授</a>
                    <a class="dropdown-item" href="#">副教授</a>
                    <a class="dropdown-item" href="#">讲师</a>
                </div>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="#">公告</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="#">新闻</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="#">就业指导</a>
            </li>
        </ul>
    </div>
    <form class="form-inline">
        <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
        <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
    </form>
    <a href="login" class="btn my-2 my-sm-0" title="login"><img src="resources/images/登录.png" alt=""width="30px" height="30px"></a>
</nav>
<!--轮播图-->
<div id="lunBo1">
    <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
        <ol class="carousel-indicators">
            <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
            <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
            <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
        </ol>
        <div class="carousel-inner">
            <div class="carousel-item active">
                <img src="resources/images/lida4.jpeg" class="d-block w-100" alt="轮播图">
            </div>
            <div class="carousel-item">
                <img src="resources/images/linda10.jpg" class="d-block w-100" alt="轮播图">
            </div>
            <div class="carousel-item">
                <img src="resources/images/linda9.jpg" class="d-block w-100" alt="轮播图">
            </div>
        </div>
        <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
        </a>
        <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
        </a>
    </div>
</div>

<div class="container-fluid">
    <div class="main" >
        <div class="news col-md-7 ">
            <!--首部-->
            <div class="header1" style="width: 100%;">
                <img src="resources/images/新闻.png" alt="" width="50px" height="50px">
                <span>东林要闻</span>
                <div class="right" ><a href="" >更多→</a></div>
            </div>
            <!--轮播图-->
            <div class="bd-example col-md-4" id="lunBo">
                <div id="carouselExampleCaptions" class="carousel slide" data-ride="carousel">
                    <ol class="carousel-indicators">
                        <li data-target="#carouselExampleCaptions" data-slide-to="0" class="active"></li>
                        <li data-target="#carouselExampleCaptions" data-slide-to="1"></li>
                        <li data-target="#carouselExampleCaptions" data-slide-to="2"></li>
                    </ol>
                    <div class="carousel-inner">
                        <div class="carousel-item active">
                            <img src="resources/images/news1.jpg" class="d-block w-100 img-thumbnail" alt="..." >
                            <div class="carousel-caption d-none d-md-block">
                                <p>民盟东北林业大学第十三次代表大会胜利召开</p>
                            </div>
                        </div>
                        <div class="carousel-item">
                            <img src="resources/images/new2.jpg" class="d-block w-100 img-thumbnail" alt="...">
                            <div class="carousel-caption d-none d-md-block">
                                <p>学校召开教学单位“十四五”规划专题研讨交流会</p>
                            </div>
                        </div>
                        <div class="carousel-item">
                            <img src="resources/images/news3.jpg" class="d-block w-100 img-thumbnail" alt="...">
                            <div class="carousel-caption d-none d-md-block">
                                <p>我校师生喜获3项“大学生智能农业装备国际创新大赛”一等奖</p>
                            </div>
                        </div>
                    </div>
                    <a class="carousel-control-prev" href="#carouselExampleCaptions" role="button" data-slide="prev">
                        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                        <span class="sr-only">Previous</span>
                    </a>
                    <a class="carousel-control-next" href="#carouselExampleCaptions" role="button" data-slide="next">
                        <span class="carousel-control-next-icon" aria-hidden="true"></span>
                        <span class="sr-only">Next</span>
                    </a>
                </div>
            </div>
            <!--轮播图结束-->
            <div class="newsSpecific">
                <div class="item1"><a href="">我校教育发展基金会召开换届大会</a></div>
                <div class="item1"><a href="">我校在全省第六届大学生艺术展演活动中荣获多项</a></div>
                <div class="item1"><a href="">我校83名同学获首期“光盘”奖励</a></div>
                <div class="item1"><a href="">学校举办2021年度国家自然科学基金项目申报辅导讲座</a></div>
                <div class="item1"><a href="">我校通过黑龙江省节水型高校考核验收</a></div>
                <div class="item1"><a href="">我校召开2020年度二级党组织书记抓基层党建述职评议考核工作会</a></div>
                <div class="item1"><a href="">喜报！我校2名学生获评2019年度“中国大学生自强之星”</a></div>
            </div>

        </div>
        <div class="notice col-md-4 " >
            <div class="header1">
                <img src="resources/images/通知.png" alt="" width="50px" height="50px">
                <span>通知公告</span>
                <div class="right" ><a href="" >更多→</a></div>
            </div>
            <div class="item1"><a href="">关于做好2021年“两节”及寒假期间安全工作的通知</a></div>
            <div class="item1"><a href="">关于在全校范围内征集第五届全国大学生网络文化节和全国..</a></div>
            <div class="item1"><a href="">关于做好2021年“两节”及寒假期间安全工作的通知</a></div>
            <div class="item1"><a href="">关于调整我校2021年在职职工养老保险缴费基数的通知</a></div>
            <div class="item1"><a href="">关于组织开展2020年教职工年度考核工作的通知</a></div>
            <div class="item1"><a href="">东北林业大学2021年学生新年音乐会即将上演</a></div>
        </div>
        <div class="topic col-md-3 " >
            <div class="header1">
                <img src="resources/images/专题.png" alt="" width="50px" height="50px">
                <span>专题专栏</span>
            </div>
            <div class="topics">
                <div class="item1" style="padding-left: 20px"><a href=""><img src="resources/images/主题教育.png" alt="" width="145px" height="65px" ></a></div>
                <div class="item1"><a href=""><img src="resources/images/干部培训.jpg" alt="" width="145px" height="65px"></a></div>
                <div class="item1" style="padding-left: 20px"><a href=""><img src="resources/images/不忘初心.jpg" alt="" width="145px" height="65px"></a></div>
                <div class="item1"><a href=""><img src="resources/images/招标采购.jpg" alt="" width="145px" height="65px"></a></div>
            </div>
        </div>
        <div class="dynamic col-md-4" >
            <div class="header1">
                <img src="resources/images/动态.png" alt="" width="50px" height="50px">
                <span>基层动态</span>
                <div class="right" ><a href="" >更多→</a></div>
            </div>
            <div class="item1 "><a href="">弦思华年，邀君共赏——音乐学院民乐专场音乐会</a></div>
            <div class="item1"><a href="">冬季冰雪运动会火热开幕</a></div>
            <div class="item1"><a href="">农业与水利工程学院开展“过好政治生日，牢记初心使命”</a></div>
            <div class="item1"><a href="">东北林业大学2021年学生新年音乐会即将上演</a></div>
        </div>
        <div class="contact col-md-4">
            <h4>联系我们</h4>
            <div class="item2"><img src="resources/images/QQ%20.png" alt="" width="20px" height="20px">
                QQ：<span>东北林业大学信息计算机工程学院</span>
            </div>
            <div class="item2"><img src="resources/images/weibo.png" alt="" width="20px" height="20px">
                微博：<span>@东北林业大学信息计算机工程学院</span>
            </div>
            <div class="item2"><img src="resources/images/电话.png" alt="" width="20px" height="20px">
                电话：<span>123-4567892</span>
            </div>
            <div class="item2"><img src="resources/images/邮箱.png " alt="" width="20px" height="20px">
                邮箱：<span>icec@nefu.edu.cn</span>
            </div>
        </div>

    </div>
    <div class="footer" >
        <p>东北林业大学<br>
            软件工程专业 2046&copy;</p>
    </div>
</div>
</body>
</html>