<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="ctx" value="${pageContext.request.contextPath }"></c:set>
<!DOCTYPE html>
<html lang="zh-cn">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>个人中心</title>
    <!-- zui -->
    <link href="${ctx }/css/zui-theme.css" rel="stylesheet">
    <link href="${ctx }/css/zui.css" rel="stylesheet">
    <script src="${ctx }/js/jquery-3.3.1.js"></script>
    <script src="${ctx }/js/zui.js"></script> 
    <script src="${ctx }/js/zui.lite.js"></script>
   
    <!--自定义-->
    <link href="${ctx }/css/mystyle.css" rel="stylesheet">
    <script src="${ctx }/js/change-state.js"></script>
    <script src="${ctx }/js/verifyCode.js"></script>
    <script src="${ctx }/js/city.js"></script>
    <script src="${ctx }/js/user.js"></script>
  </head>
  <body>
    <!-- 在此处编码你的创意 -->
    <div class="contains user-contain">
        <!--头部-->
        <div class="panel user">
            <div class="panel-body">
                <!--头像 方形-->
                <img src="${ctx }/${User.userHeadPath }" alt="头像"/>
                <div class="intr">
                    <!--用户昵称-->
                    <span class="user-name" id="user-name">${User.userNickName }</span><br/>
                    <!--个性签名-->
                    <span class="tag" id="user-autograph">${User.userAutograph }</span>
                    <br/>
                    <!--日记-->
                    <a class="btn btn-primary" href="your/url/">记录好时光<i class="icon icon-paint-brush"></i></a>
                </div>
            </div>
        </div><!--END 头部-->
        <!--导航栏-->
        <div class="nav-bar panel">
            <!-- 一般导航项目 -->
         
            <div class="panel-body">
                <ul class="nav navbar-nav">
                    <li onclick="changeNav(this,'directory-contain-')" id="1" class="active"><a href="#">我的咨询</a></li>
                    <li onclick="changeNav(this,'directory-contain-')" id="2"><a href="#">我的课程</a></li>
                    <li onclick="changeNav(this,'directory-contain-')" id="3"><a href="#">我的文章</a></li>
                    <li onclick="changeNav(this,'directory-contain-')" id="4"><a href="#">个人设置</a></li>
                </ul>
            </div>
        </div><!--END 导航栏-->
        <!--信息栏-->
        <!--★★★注：以下1-3的“.directory-contain-list”中显示的内容均由查询给出-->
        <!--★★★注：jsp版本请将对应的导航中调用的changeNav()函数改成changeActive(this)函数 !!!-->
        <!--★★★注：切换效果由“我的咨询”板块给出，其它板块不再制作切换效果-->
        <div class="info-conatin" style="display:display">
            <!--1. 我的咨询-->
            <div id="directory-contain-1" class="panel">
                <div class="panel-body">
                    <!--导航-->
                    <div class="dir-nav">
                        <ul class="nav nav-pills">
                            <li onclick="changeNav(this,'dir-con-li-')" class="active"><a href="#">未开始</a></li>
                            <li onclick="changeNav(this,'dir-con-li-')" class=""><a href="#">已完成</a></li>
                            <li onclick="changeNav(this,'dir-con-li-')" class=""><a href="#">已取消</a></li>
                        </ul>
                    </div>
                    <!--咨询列表-->
                    <div class="directory-contain-list">
                        <!--未完成表格-->
                        <table id="dir-con-li-1">
                            <!--一个咨询-->
                            <tr>
                                <!--咨询师照片-->
                                <td><img src="${ctx }/images/consultant.png" alt="!!这里写咨询师的名字!!"></td>
                                <td>
                                    <!--咨询师名字-->
                                    <span class="teacher catagory">咨询师：<a href="consulter.html">梁田</a></span><br/>
                                    <!--咨询费用-->
                                    <span>咨询费用：￥499</span><br/>
                                    <!--咨询时间：精确到几点机几分-->
                                    <span>时间：2018年12月21日&nbsp;下午2：00</span><br/>
                                    <!--若为线下面对面咨询，则显示咨询地点-->
                                    <span class="place">地点：北京通州明心社工事务所</span>
                                </td>
                                <!--非面对面咨询-->
                                <td><span><a href="room.html">进入咨询室</a></span></td>
                                <!--如果是线下面对面咨询，请使用以下这一行替代上面那一行👇-->
                                <!-- <td><span class="disabled">进入咨询室</span></td> -->
                                <td><span><a href="#">取消咨询</a></span></td>
                            </tr>                            
                            <!--以下都是重复的-->
                            <!--一个咨询-->
                            <tr>
                                <!--咨询师照片-->
                                <td><img src="${ctx }/images/consultant.png" alt="!!这里写咨询师的名字!!"></td>
                                <td>
                                    <!--咨询类别-->
                                    <span class="catagory">家庭婚姻</span>
                                    <!--咨询费用-->
                                    <span class="tag">￥499</span><br/>
                                    <!--咨询师名字-->
                                    <span class="teacher">咨询师：<a href="consulter.html">梁田</a></span>
                                    <!--头衔-->
                                    <span class="qualification tag">清华大学特约讲师</span><br/>
                                    <!--咨询时间：精确到几点机几分-->
                                    <span>时间：2018年12月21日&nbsp;下午2：00</span><br/>
                                    <!--若为线下面对面咨询，则显示咨询地点-->
                                    <span class="place">地点：北京通州明心社工事务所</span>
                                </td>
                                <!--非面对面咨询-->
                                <td><span><a href="room.html">进入咨询室</a></span></td>
                                <!--如果是线下面对面咨询，请使用以下这一行替代上面那一行👇-->
                                <!-- <td><span class="disabled">进入咨询室</span></td> -->
                                <td><span><a href="#">取消咨询</a></span></td>
                            </tr>                            
                            <!--一个咨询-->
                            <tr>
                                <!--咨询师照片-->
                                <td><img src="${ctx }/images/consultant.png" alt="!!这里写咨询师的名字!!"></td>
                                <td>
                                    <!--咨询类别-->
                                    <span class="catagory">家庭婚姻</span>
                                    <!--咨询费用-->
                                    <span class="tag">￥499</span><br/>
                                    <!--咨询师名字-->
                                    <span class="teacher">咨询师：<a href="consulter.html">梁田</a></span>
                                    <!--头衔-->
                                    <span class="qualification tag">清华大学特约讲师</span><br/>
                                    <!--咨询时间：精确到几点机几分-->
                                    <span>时间：2018年12月21日&nbsp;下午2：00</span><br/>
                                    <!--若为线下面对面咨询，则显示咨询地点-->
                                    <span class="place">地点：北京通州明心社工事务所</span>
                                </td>
                                <!--非面对面咨询-->
                                <td><span><a href="room.html">进入咨询室</a></span></td>
                                <!--如果是线下面对面咨询，请使用以下这一行替代上面那一行👇-->
                                <!-- <td><span class="disabled">进入咨询室</span></td> -->
                                <td><span><a href="#">取消咨询</a></span></td>
                            </tr>                            
                        </table>
                        <!--已完成表格-->
                        <table id="dir-con-li-2" style="display:none">
                            <!--一个咨询-->
                            <tr>
                                <!--咨询师照片-->
                                <td><img src="images/consultant.png" alt="!!这里写咨询师的名字!!"></td>
                                <td>
                                    <!--咨询类别-->
                                    <span class="catagory">家庭婚姻</span>
                                    <!--咨询费用-->
                                    <span class="tag">￥499</span><br/>
                                    <!--咨询师名字-->
                                    <span class="teacher">咨询师：<a href="consulter.html">梁田</a></span>
                                    <!--头衔-->
                                    <span class="qualification tag">清华大学特约讲师</span><br/>
                                    <!--咨询时间：精确到几点机几分-->
                                    <span>时间：2018年12月21日&nbsp;下午2：00</span><br/>
                                    <!--若为线下面对面咨询，则显示咨询地点-->
                                    <span class="place">地点：北京通州明心社工事务所</span>
                                </td>
                            </tr>                            
                        </table>
                        <!--已取消表格-->
                        <table id="dir-con-li-3" style="display:none">
                             <!--一个咨询-->
                             <tr>
                                <!--咨询师照片-->
                                <td><img src="images/consultant.png" alt="!!这里写咨询师的名字!!"></td>
                                <td>
                                    <!--咨询类别-->
                                    <span class="catagory">家庭婚姻</span>
                                    <!--咨询费用-->
                                    <span class="tag">￥499</span><br/>
                                    <!--咨询师名字-->
                                    <span class="teacher">咨询师：<a href="consulter.html">梁田</a></span>
                                    <!--头衔-->
                                    <span class="qualification tag">清华大学特约讲师</span><br/>
                                    <!--咨询时间：精确到几点机几分-->
                                    <span>时间：2018年12月21日&nbsp;下午2：00</span><br/>
                                    <!--若为线下面对面咨询，则显示咨询地点-->
                                    <span class="place">地点：北京通州明心社工事务所</span>
                                </td>
                            </tr> 
                        </table>
                    </div>
                    <!--分页器：一页最多显示10项。示例并没有超过10项，就把这段注释掉吧-->
                    <!-- <div class="directory-contain-pager">
                        <ul class="pager">
                            <li class="previous"><a href="your/nice/url">«</a></li>
                            <li><a href="your/nice/url">1</a></li>
                            <li class="active"><a href="your/nice/url">2</a></li>
                            <li><a href="your/nice/url">3</a></li>
                            <li><a href="your/nice/url">4</a></li>
                            <li><a href="your/nice/url">5</a></li>
                            <li class="next"><a href="your/nice/url">»</a></li>
                        </ul>
                    </div> -->
                </div><!--END 我的咨询-->
            </div>
            <!--2. 我的课程-->
            <div id="directory-contain-2" class="panel" style="display:none">
                <div class="panel-body">
                    <!--导航-->
                    <div class="dir-nav">
                        <ul class="nav nav-pills">
                            <li onclick="changeActive(this)" class="active"><a href="#">我的课程</a></li>
                            <li onclick="changeActive(this)" class=""><a href="#">我的收藏</a></li>
                        </ul>
                    </div>
                    <!--课程列表-->
                    <div class="directory-contain-list">
                        <!--一门课程-->
                        <div class="course-block">
                            <!--课程图片-->
                            <img src="images/course.jpg" alt="心理咨询师职业认证课程（台湾博士2017版）">
                            <!--课程名-->
                            <a class="title" href="course-intr">心理咨询师职业认证课程（台湾博士2017版）</a><br/>
                            <!--学习进度-->
                            <span class="progress">已学习1/12</span><br/>
                            <!--进入学习按钮-->
                            <a class="btn btn-primary" href="course.html">进入学习</a>
                        </div>
                        <!--以下都是重复的-->
                        <!--一门课程-->
                        <div class="course-block">
                            <!--课程图片-->
                            <img src="images/course.jpg" alt="心理咨询师职业认证课程（台湾博士2017版）">
                            <!--课程名-->
                            <a class="title" href="course-intr">心理咨询师职业认证课程（台湾博士2017版）</a><br/>
                            <!--学习进度-->
                            <span class="progress">已学习1/12</span><br/>
                            <!--进入学习按钮-->
                            <a class="btn btn-primary" href="course.html">进入学习</a>
                        </div>
                        <!--一门课程-->
                        <div class="course-block">
                            <!--课程图片-->
                            <img src="images/course.jpg" alt="心理咨询师职业认证课程（台湾博士2017版）">
                            <!--课程名-->
                            <a class="title" href="course-intr">心理咨询师职业认证课程（台湾博士2017版）</a><br/>
                            <!--学习进度-->
                            <span class="progress">已学习1/12</span><br/>
                            <!--进入学习按钮-->
                            <a class="btn btn-primary" href="course.html">进入学习</a>
                        </div>
                        <!--一门课程-->
                        <div class="course-block">
                            <!--课程图片-->
                            <img src="images/course.jpg" alt="心理咨询师职业认证课程（台湾博士2017版）">
                            <!--课程名-->
                            <a class="title" href="course-intr">心理咨询师职业认证课程（台湾博士2017版）</a><br/>
                            <!--学习进度-->
                            <span class="progress">已学习1/12</span><br/>
                            <!--进入学习按钮-->
                            <a class="btn btn-primary" href="course.html">进入学习</a>
                        </div>
                        <!--一门课程-->
                        <div class="course-block">
                                <!--课程图片-->
                                <img src="images/course.jpg" alt="心理咨询师职业认证课程（台湾博士2017版）">
                                <!--课程名-->
                                <a class="title" href="course-intr">心理咨询师职业认证课程（台湾博士2017版）</a><br/>
                                <!--学习进度-->
                                <span class="progress">已学习1/12</span><br/>
                                <!--进入学习按钮-->
                                <a class="btn btn-primary" href="course.html">进入学习</a>
                            </div>
                            <!--一门课程-->
                            <div class="course-block">
                                <!--课程图片-->
                                <img src="images/course.jpg" alt="心理咨询师职业认证课程（台湾博士2017版）">
                                <!--课程名-->
                                <a class="title" href="course-intr">心理咨询师职业认证课程（台湾博士2017版）</a><br/>
                                <!--学习进度-->
                                <span class="progress">已学习1/12</span><br/>
                                <!--进入学习按钮-->
                                <a class="btn btn-primary" href="course.html">进入学习</a>
                            </div>
                            <!--一门课程-->
                            <div class="course-block">
                                <!--课程图片-->
                                <img src="images/course.jpg" alt="心理咨询师职业认证课程（台湾博士2017版）">
                                <!--课程名-->
                                <a class="title" href="course-intr.html">心理咨询师职业认证课程（台湾博士2017版）</a><br/>
                                <!--学习进度-->
                                <span class="progress">已学习1/12</span><br/>
                                <!--进入学习按钮-->
                                <a class="btn btn-primary" href="course.html">进入学习</a>
                            </div>
                    </div>
                    <!--分页器：一页最多显示10行。示例并没有超过10行，就把这段注释掉吧-->
                    <!-- <div class="directory-contain-pager">
                        <ul class="pager">
                            <li class="previous"><a href="your/nice/url">«</a></li>
                            <li><a href="your/nice/url">1</a></li>
                            <li class="active"><a href="your/nice/url">2</a></li>
                            <li><a href="your/nice/url">3</a></li>
                            <li><a href="your/nice/url">4</a></li>
                            <li><a href="your/nice/url">5</a></li>
                            <li class="next"><a href="your/nice/url">»</a></li>
                        </ul>
                    </div> -->
                </div>
            </div><!--END 我的课程-->
            <!--3. 我的文章-->
            <div id="directory-contain-3" class="panel" style="display:none">
                <div class="panel-body">
                    <!--导航-->
                    <div class="dir-nav">
                        <ul class="nav nav-pills">
                            <li onclick="changeActive(this)" class="active"><a href="#">我的文章</a></li>
                            <li onclick="changeActive(this)" class=""><a href="#">我的收藏</a></li>
                        </ul>
                    </div>
                </div>
                <div class="directory-contain-list">
                    <!--一篇文章-->
                    <div class="passage-block">
                        <!--文章图片-->
                        <img src="images/passage.jpeg" alt="！！这里写文章的名字！！">
                        <!--文章名-->
                        <a class="title" href="">结婚前，听听咨询师给你的3个建议&nbsp;|&nbsp;心事博物馆</a><br/>
                        <!--文章作者-->
                        <a class="writer" href="consulter.html">黄小希</a><br/>
                        <!--文章介绍-->
                        <p>你和你的家人相处融洽，除了血亲之外，还有几十年的相处默契，她作为一个新加入的人，要让她用自己的节奏慢慢熟悉这个新的家庭。</p>
                    </div>
                    <!--以下都是重复的-->
                    <!--一篇文章-->
                    <div class="passage-block">
                        <!--文章图片-->
                        <img src="images/passage.jpeg" alt="！！这里写文章的名字！！">
                        <!--文章名-->
                        <a class="title" href="">结婚前，听听咨询师给你的3个建议&nbsp;|&nbsp;心事博物馆</a><br/>
                        <!--文章作者-->
                        <a class="writer" href="consulter.html">黄小希</a><br/>
                        <!--文章介绍-->
                        <p>你和你的家人相处融洽，除了血亲之外，还有几十年的相处默契，她作为一个新加入的人，要让她用自己的节奏慢慢熟悉这个新的家庭。</p>
                    </div>
                    <!--一篇文章-->
                    <div class="passage-block">
                        <!--文章图片-->
                        <img src="images/passage.jpeg" alt="！！这里写文章的名字！！">
                        <!--文章名-->
                        <a class="title" href="">结婚前，听听咨询师给你的3个建议&nbsp;|&nbsp;心事博物馆</a><br/>
                        <!--文章作者-->
                        <a class="writer" href="consulter.html">黄小希</a><br/>
                        <!--文章介绍-->
                        <p>你和你的家人相处融洽，除了血亲之外，还有几十年的相处默契，她作为一个新加入的人，要让她用自己的节奏慢慢熟悉这个新的家庭。</p>
                    </div>
                    <!--一篇文章-->
                    <div class="passage-block">
                        <!--文章图片-->
                        <img src="images/passage.jpeg" alt="！！这里写文章的名字！！">
                        <!--文章名-->
                        <a class="title" href="">结婚前，听听咨询师给你的3个建议&nbsp;|&nbsp;心事博物馆</a><br/>
                        <!--文章作者-->
                        <a class="writer" href="consulter.html">黄小希</a><br/>
                        <!--文章介绍-->
                        <p>你和你的家人相处融洽，除了血亲之外，还有几十年的相处默契，她作为一个新加入的人，要让她用自己的节奏慢慢熟悉这个新的家庭。</p>
                    </div>
                    <!--一篇文章-->
                    <div class="passage-block">
                        <!--文章图片-->
                        <img src="images/passage.jpeg" alt="！！这里写文章的名字！！">
                        <!--文章名-->
                        <a class="title" href="">结婚前，听听咨询师给你的3个建议&nbsp;|&nbsp;心事博物馆</a><br/>
                        <!--文章作者-->
                        <a class="writer" href="consulter.html">黄小希</a><br/>
                        <!--文章介绍-->
                        <p>你和你的家人相处融洽，除了血亲之外，还有几十年的相处默契，她作为一个新加入的人，要让她用自己的节奏慢慢熟悉这个新的家庭。</p>
                    </div>
                    <!--一篇文章-->
                    <div class="passage-block">
                        <!--文章图片-->
                        <img src="images/passage.jpeg" alt="！！这里写文章的名字！！">
                        <!--文章名-->
                        <a class="title" href="">结婚前，听听咨询师给你的3个建议&nbsp;|&nbsp;心事博物馆</a><br/>
                        <!--文章作者-->
                        <a class="writer" href="consulter.html">黄小希</a><br/>
                        <!--文章介绍-->
                        <p>你和你的家人相处融洽，除了血亲之外，还有几十年的相处默契，她作为一个新加入的人，要让她用自己的节奏慢慢熟悉这个新的家庭。</p>
                    </div>
                    <!--一篇文章-->
                    <div class="passage-block">
                        <!--文章图片-->
                        <img src="images/passage.jpeg" alt="！！这里写文章的名字！！">
                        <!--文章名-->
                        <a class="title" href="">结婚前，听听咨询师给你的3个建议&nbsp;|&nbsp;心事博物馆</a><br/>
                        <!--文章作者-->
                        <a class="writer" href="consulter.html">黄小希</a><br/>
                        <!--文章介绍-->
                        <p>你和你的家人相处融洽，除了血亲之外，还有几十年的相处默契，她作为一个新加入的人，要让她用自己的节奏慢慢熟悉这个新的家庭。</p>
                    </div>
                    <!--分页器：一页最多显示10篇文章。示例并没有超过10篇，就把这段注释掉吧-->
                    <!-- <div class="directory-contain-pager">
                        <ul class="pager">
                            <li class="previous"><a href="your/nice/url">«</a></li>
                            <li><a href="your/nice/url">1</a></li>
                            <li class="active"><a href="your/nice/url">2</a></li>
                            <li><a href="your/nice/url">3</a></li>
                            <li><a href="your/nice/url">4</a></li>
                            <li><a href="your/nice/url">5</a></li>
                            <li class="next"><a href="your/nice/url">»</a></li>
                        </ul>
                    </div> -->
                </div>
            </div><!--END 我的文章-->
            <!--4. 个人设置-->
            <div id="directory-contain-4" class="panel" style="display:none">
                <div class="panel-body">
                    <!--导航-->
                    <div class="dir-nav">
                        <ul class="nav nav-pills">
                            <li onclick="changeNav(this,'setting-')" class="active"><a href="#">个人信息</a></li>
                            <li onclick="changeNav(this,'setting-')" class=""><a href="#">修改密码</a></li>
                            <li onclick="changeNav(this,'setting-')" class=""><a href="#">绑定手机</a></li>
                        </ul>
                    </div>
                    <div class="directory-contain-list">
                        <!--★★★注：以下所有表单信息，若数据库中对应字段值不为空，那么将数据库字段值作为对应表单项值-->
                        <!--★★★注：请不要更改同一个板块中两个table的相对位置！！！-->
                        <!--个人信息-->
                        <div id="setting-1">
                            <!--基本信息-->
                            <form action="" method="POST">
                                <span class="board-title-h1">基本信息</span>
                                <button class="btn btn-mini " type="button" onclick="changeBtnValue(this)" id="essentialInfo">修改</button>
                                <table>
                                    <tr><td>昵称</td><td id="userNickName">${User.userNickName }</td></tr>
                                    <tr><td>性别</td><td id="userSex">${User.userSex }</td></tr>
                                    <tr><td>所在地</td><td id="userProvince">${User.userProvince }&nbsp;${User.userCity }</td></tr>
                                    <tr><td>签名</td><td id="userAutograph">${User.userAutograph }</td></tr>
                                </table>
                                <!-- 隐藏的修改项 -->
                                <!--两个隐藏的div，隐藏的信息是用户在数据库里的省和市的信息  -->
                                <div display="none" id="select-province" class="${User.userProvince }"></div>
                                <div display="none" id="select-city" class="${User.userCity }"></div>
                                <table style="display:none">
                                    <tr><td>昵称</td><td><input onblur="changeBtnStyle()" class="form-control" name="nicoName" type="text" value="${User.userNickName }"/></td></tr>
                                    <tr><td>性别</td>
                                        <input type="hidden"  id="hiddenUserSex" class="${User.userSex }">
                                        <td><input onblur="changeBtnStyle()" type="radio" name="gender" id="male" value="male" />男
                                            <input onblur="changeBtnStyle()" type="radio" name="gender" id="female" value="female"/>女
                                        </td>
                                    </tr>
                                    <tr><td>省份</td>
                                        <td>
                                            <select name="province" id="province">
                                                <!--★★★注：第一个option填数据库中字段-->
                                            </select>
                                        </td>
                                    </tr>
                                    <tr><td>城市</td>
                                        <td>
                                            <select name="city" id="city" >
                                                <!--★★★注：第一个option填数据库中字段-->
                                               <!-- <option value="city1">请选择</option> --> 
                                                
                                            </select>
                                        </td>
                                    </tr>
                                    <tr><td>签名</td><td><input onblur="changeBtnStyle()" class="self-intr form-control" type="text" name="userAutograph" id="" value="${User.userAutograph }"/></td></tr>
                                </table>
                            </form>
                            <!--实名信息-->
                            <form action="" method="POST">
                                <span class="board-title-h1">实名信息</span>
                                
                                <button class="btn btn-mini " type="button" onclick="changeBtnValue(this)" id="realName">修改</button> 
                                <!--★★★注：若数据库中该字段为空，请帮忙填上“未实名”-->
                                <table>
                                    <tr><td>姓名</td><td id="userRealName">
                                      
                                      <c:if test="${empty User.userRealName }">未实名</c:if>
                                      <c:if test="${User.userRealName!=null }">${User.userRealName }</c:if>
                                     </td></tr>
                                    <tr><td>证件号</td><td id="userIdNumber">
                                      <c:if test="${empty User.userIdNumber }">未实名</c:if>
                                      <c:if test="${User.userIdNumber!=null }">${User.userIdNumber.substring(0,6)}*********${User.userIdNumber.substring(14,18) }</c:if>
                                    </td></tr>
                                  
                                </table>
                                <table style="display:none">
                                    <tr><td>姓名</td>
                                    <td>
	                                    <input onblur="changeBtnStyle()" class="form-control" name="idName" type="text" onkeyup="isLegal()" value="${User.userRealName }"/>
	                                    <!--★★★ 错误信息 -->
	                                    <div id="errorMsg4Name" style="float:left;"></div>
                                    </td></tr>
                                    
                                    <tr>
                                    <td>证件号</td>
                                    <td>
                                    	<input onblur="changeBtnStyle()" class="form-control" name="idNum" type="text" onkeyup="isLegal()" value="${User.userIdNumber.substring(0,6)}*********${User.userIdNumber.substring(14,18) }"/>
	                                    <!--★★★ 错误信息 -->
	                                    <div id="errorMsg4IdNum" style="float:left;"></div>
                                    </td></tr>
                                    
                                </table>
                            </form>
                        </div><!--END 个人信息-->
                        <!--修改密码-->
                        <div id="setting-2" style="display:none">
                            <!--基本信息-->
                            <form action="" method="POST">
                                <table>
                                    <!--★★★ 错误信息 -->
                                    <tr><td>原始密码</td><td><input onblur="changeBtnStyle()" class="form-control" name="oldPwd" type="password" onkeyup="verifyOldPwd()"/><!--★★★ 错误信息 --><div id="errorMsg-oldPwd"></div></td></tr>
                                    <tr><td>新密码</td><td><input onblur="changeBtnStyle()" class="form-control" type="password" name="newPwd" onkeyup="checkNewPwd()"/><!--★★★ 错误信息 --><div id="errorMsg-newPwd"></td></tr>
                                    <tr><td>确认密码</td><td><input onblur="changeBtnStyle()" type="password" class="form-control" name="confirmPwd"  onkeyup="confirm4Pwd()"/><!--★★★ 错误信息 --><div id="errorMsg-confirmPwd"></div></td></tr>
                                </table>
                                <span>忘记密码了？<a href="#" onclick="findBackPwd();sendCode4Pwd();">找回密码</a></span><br/>
                                <div id="user-phoneNum-Pwd" style="display:none" class="${User.userPhone }"></div>
                                <!--★★★ 修改成功信息，这里的字的颜色区别错误的信息 -->
                                <div id="successMsg4Pwd"></div>
                                <!-- 这里finalButton是最后一个按钮，因为是这一页的最后一个，故为final。也就是开始为灰色，后来才变红的按钮 -->
                                <button class="btn btn-block " type="button" onclick="finalButton4Pwd(this)" disabled="disabled" id="RevisePwdButton">修改</button>
                            </form>
                            <!--黑色遮罩层-->
                            <div id="shade" style="display:none"></div>
                            <!--找回密码界面-->
                            <div class="find-back-pwd" id="find-back-pwd" style="display:none">
                                <!--关闭按钮-->
                                <i class="icon icon-times" onclick="closeWindow(this)"></i>
                                <span class="board-title-h1">我们给您的手机</span>
                                <span class="board-title-h1 phone-num" id="send-phone-pwd">${User.userPhone.substring(0,3)}****${User.userPhone.substring(7,11)}</span><br/>
                                <span class="board-title-h1">发送了一条验证码,请及时查收</span><br/>
                                <!-- <span class="board-title-h1">请及时查收</span><br/> -->
                                <!--验证码-->
                                <div class="verify-zoom">
                                    验证码：<input class="form-control" type="text" name="verifyCode" id="pwd-code" onkeyup="PwdVerifyCode()"/>
                                    <!--★★★ 错误信息，验证码是否正确 -->
                                    <div id="error-msg-code"></div>
                                    <a class="btn btn-primary btn-sm" href="#" onclick="setNewPwd()" disabled="disabled" id="verify-code-pwd">验证</a>
                                </div>
                            </div>
                            <!--设置新密码界面-->
                            <div class="find-back-pwd" id="set-new-pwd" style="display:none">
                                <!--关闭按钮-->
                                <i class="icon icon-times" onclick="closeWindow(this)"></i>
                                <!--新密码-->
                                <div class="verify-zoom">
                                    新密码：<input class="form-control" type="text" name="newPwdWithPhone" id="" onkeyup="checkNewPwdWithPhone()"/>
                                    <!--★★★ 错误信息 -->
                                    <div id="errorMsg-newPwd-phone"></div>
                                    确认密码：<input class="form-control" type="text" name="confirmPwdWithPhone" id="" onkeyup="confirm4PwdWithPhone()"/>
                                     <!--★★★ 错误信息，两次密码是否一致 -->
                                    <div id="errorMsg-confirmPwd-phone"></div>
                                </div>
                                <button class="btn btn-primary btn-block" onclick="closeWindow(this);finalButton4Pwd(this)" disabled="disabled" id="RevisePwdButtonWithPhone">确认设置</button>
                            </div>
                        </div><!--END 修改密码-->
                        <!--绑定手机-->
                        <div id="setting-3" style="display:none">
                            <form action="" method="POST">
                                <table>
                                    <tr><td>原绑定手机号码</td><td id="show-old-phone">${User.userPhone.substring(0,3)}****${User.userPhone.substring(7,11)}</td></tr>
                                    <tr><td>新绑定手机号码</td><td><input id="phoneNum" name="phoneNum" type="text" class="form-control" placeholder="11位手机号" style="width: 150px;display: block; width: 300px;float: left;" onkeyup="loginVerifyPhone4Alert()">
                                     <!--★★★ 错误信息，新绑定手机号发是否合法 -->
                                    <font name="loginErrMsg4Phone" id="loginErrMsg4Phone" class=""></font></td></tr>
                                    
                                    <tr><td>验证码</td>
                                        <td><input id="verifyCode" name="verifyCode" type="text" class="form-control" placeholder="验证码" onkeyup="loginVerifyCode()" style="width: 150px;display: block;float: left;">
                                            <!-- 这里的onclick解释，settime(this):倒计时功能，sendVerifyCode():验证码是否正确 -->
                                            <a class="btn btn-primarys" id="login-send-verifyCode"  onclick="settime(this);sendVerifyCode()" disabled="disabled">发送验证码</a>
                                         <!--★★★ 错误信息，验证码是否正确 -->
                                        <font name="loginErrMsg4Code" id="loginErrMsg4Code" class=""></font>
                                    </td></tr>
                                    <!-- 之所以写用户协议是为了重用JS代码，因为在JS中isFirst()判断时要有checkbox的判断（注册时需要） -->
                                    <label id="checkbox" onclick="verifyAccord()" style="display:none;">
	                           			 <input type="checkbox" name="isAgreeProtocal"  > 同意《XXX用户注册协议》
	                        		</label>
	                        		<!-- 上面用户协议结束 -->
                                </table>
                                <button class="btn btn-block" id="login-form-submit-button" disabled="disabled" onclick="savePhone()">保存设置</button>  
                                 <!--★★★ 成功信息 -->
                                <font name="successMsg-revise-phone" id="successMsg-revise-phone" class=""></font>                              
                            </form>
                        </div><!--END 绑定手机-->
                        <script type="text/javascript">
						    
						</script>
                    </div>
                </div>
            </div><!--END 个人设置-->
        </div>
    </div>
    <!-- jQuery (ZUI中的Javascript组件依赖于jQuery) -->
    <script src="js/jquery-1.11.0.min.js"></script>
    <!-- ZUI Javascript组件 -->
    <script src="js/zui.min.js"></script>
  </body>
</html>