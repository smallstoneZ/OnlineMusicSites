<%--
  Created by IntelliJ IDEA.
  User: Slacker
  Date: 2018/10/28
  Time: 16:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>音乐客栈</title>
    <link rel="stylesheet" href="../../bootstrap-3.3.7/bootstrap-3.3.7/dist/css/bootstrap.css">
    <link rel="stylesheet" href="../../bootstrap-3.3.7/bootstrap-3.3.7/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="../../mplayer/css/mplayer.min.css">
    <link rel="stylesheet" href="../../css/sign.css">
    <script src="../../bootstrap-3.3.7/bootstrap-3.3.7/dist/js/bootstrap.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.js"></script>

    <style>
        body{
            background-image: url("${pageContext.request.contextPath}/image/con_bg.jpg");
        }
        .navbar{
            margin:20px 0px;
        }
        .copyright{
            background: #111;
            font-size: 13px;
            text-align: center;
            color: #555;
            padding-top: 14px;
            padding-bottom: 20px;
            border-top: 1px solid #303030;
        }
        .main-footer {
            margin-top:10px;
            background: #202020;
            padding: 35px 0 0;
            color: #959595;
        }
        .widget {
            margin-bottom: 35px;
        }
        .widget .title {
            margin-top: 0;
            padding-bottom: 7px;
            border-bottom: 1px solid #ebebeb;
            margin-bottom: 21px;
            position: relative;
        }
    </style>
</head>
<body>
<!-- 头部-->
<div class="container">
    <nav class="navbar navbar-default " role="navigation">
        <div class="container-fluid">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="#">音乐客栈</a>
            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav">
                    <li class="active"><a href="#">首页<span class="sr-only">(current)</span></a></li>
                    <li><a href="${pageContext.request.contextPath}/frontDesk/singerCollection.do?page=1&limit=8">歌手</a></li>
                    <li><a href="frontDesk/musics/song_list.jsp">歌单</a></li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">排行榜 <span class="caret"></span></a>
                        <ul class="dropdown-menu">
                            <li><a href="frontDesk/rankingList/classicallist.jsp">经典老歌榜</a></li>
                            <li><a href="frontDesk/rankingList/Networklist.jsp">网络红歌榜</a></li>
                            <li><a href="frontDesk/rankingList/KTVlist.jsp">KTV热门榜</a></li>
                            <li class="divider"></li>
                            <li><a href="frontDesk/rankingList/DJHotlist.jsp">动听DJ排行榜</a></li>
                            <li class="divider"></li>
                            <li><a href="frontDesk/rankingList/balladlist.jsp">民谣排行榜</a></li>
                        </ul>
                    </li>
                </ul>
                <form class="navbar-form navbar-left" action="${pageContext.request.contextPath}/musicPlayer/searchSongList.do" method="post">
                    <div class="form-group">
                        <input type="text" class="form-control" name="searchContext"placeholder="搜索音乐" >
                    </div>
                    <button type="submit" class="btn btn-default">搜索</button>
                </form>
                <ul class="nav navbar-nav navbar-right">
                    <li><a href="${pageContext.request.contextPath}/frontDesk/register.do">免费注册</a></li>
                    <li><a href="${pageContext.request.contextPath}/backstage/userCenter.do?id=${user.userId}">个人中心</a></li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle " data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false" onclick="start(${user.userId})">
                            <img id="myImage"  alt="Brand" src="<c:choose><c:when test="${user.userImage != null}">${user.userImage}</c:when><c:otherwise>/image/2.gif</c:otherwise></c:choose>" class="img-circle" style="height:23px;width:34px;"/>
                            <span class="caret"></span></a>
                        <ul class="dropdown-menu" id="login-menu"  style="display: none">
                            <li></li>
                            <li><a href="${pageContext.request.contextPath}/backstage/userDetail.do?id=${user.userId}">修改信息</a></li>
                            <li><a href="${pageContext.request.contextPath}/backstage/userDetails.do?id=${user.userId}">安全管理</a></li>
                            <li role="separator" class="divider"></li>
                            <li><a href="${pageContext.request.contextPath}/frontDesk/exitSystem.do">注销</a></li>
                        </ul>
                    </li>
                </ul>
            </div><!-- /.navbar-collapse -->
        </div><!-- /.container-fluid -->
    </nav>

    <div>
        ${msg}
    </div>
</div>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="../../bootstrap-3.3.7/bootstrap-3.3.7/dist/js/bootstrap.min.js"></script>


<%@ include file="../../iframe/loginHide.jsp"%>
<%@ include file="../../iframe/foot.jsp"%>
</body>
</html>
