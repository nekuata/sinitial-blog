<%--
  Created by IntelliJ IDEA.
  User: Akari
  Date: 2017/8/11
  Time: 13:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <title>作者管理</title>
    <c:set var="root" value="${pageContext.request.contextPath}"/>
    <c:set var="root" value="${pageContext.request.contextPath}"/>
    <link rel="stylesheet" href="${root}/bootstrap/css/bootstrap.css">
    <link rel="stylesheet" href="${root}/bootstrap/css/bootstrap-theme.css">
    <link rel="stylesheet" href="${root}/bootstrap-3.3.7-dist/css/bootstrap-datetimepicker.min.css">
    <link rel="stylesheet" href="${root}/dataTables/media/css/dataTables.bootstrap.min.css">
    <link rel="stylesheet" href="${root}/css/font-awesome.min.css">
    <link rel="stylesheet" href="${root}/post/css/style.css" media="screen" type="text/css">

    <script src="${root}/dataTables/media/js/jquery.js" type="text/javascript"></script>
    <script src="${root}/bootstrap/js/bootstrap.js" type="text/javascript"></script>
    <script src="${root}/js/bootbox.min.js" type="text/javascript"></script>
    <script src="${root}/bootstrap-3.3.7-dist/js/bootstrap-datetimepicker.min.js" type="text/javascript"></script>
    <script src="${root}/bootstrap-3.3.7-dist/js/bootstrap-datetimepicker.zh-CN.js" type="text/javascript"></script>
    <script src="${root}/dataTables/media/js/jquery.dataTables.min.js" type="text/javascript"></script>
    <script src="${root}/dataTables/media/js/dataTables.bootstrap.min.js" type="text/javascript"></script>

</head>

<body>
<header id="header" class="inner">
    <div class="alignleft">
        <h1><a href="">Light</a></h1>
        <h2><a href=""></a></h2>
    </div>
    <nav id="main-nav" class="alignright">
        <ul>

            <li><a href="">Home</a></li>

            <li><a href="">Archives</a></li>

            <li><a href="">Page</a></li>

        </ul>
        <div class="clearfix"></div>
    </nav>
    <div class="clearfix"></div>
</header>
<div id="content" class="inner">
    <div id="main-col" class="alignleft">
        <div id="wrapper">

            <c:forEach items="${requestScope.posts}" var="post">
                <fmt:formatDate value="${post.postDate}" pattern="yyyy-MM-dd HH:mm:ss" var="fullDate"/>
                <fmt:formatDate value="${post.postDate}" pattern="MMM '&nbsp;' d , yyyy" var="simpleDate"/>
                <article class="${post.postType}">

                    <div class="post-content">
                        <header>

                            <div class="icon"></div>

                            <time datetime="${fullDate}">
                                <a href="">${simpleDate}</a>
                                &nbsp;&nbsp;
                                <a href="">Author: ${post.user.authorName}</a>
                            </time>

                            <h1 class="title">
                                <a href="">${post.postTitle}</a>
                            </h1>

                        </header>
                        <div class="entry">
                            <p>${post.postContent}</p>
                        </div>
                        <footer>

                            <div class="alignleft">
                                <a href="" class="more-link">Read More</a>
                            </div>

                            <div class="clearfix"></div>
                        </footer>
                    </div>
                </article>
            </c:forEach>

            <nav id="pagination">
                <div class="clearfix"></div>
            </nav>
        </div>
    </div>
    <aside id="sidebar" class="alignright">
        <div class="search">
            <form action="http://google.com/search" method="get" accept-charset="utf-8">
                <input name="q" results="0" placeholder="Search By Google" type="text">
                <input name="q" value="site:meowwoo.com/${post.postTitle}" type="hidden">
            </form>
        </div>


        <div class="widget tag">
            <h3 class="title">Tags</h3>
            <ul class="entry">

                <li><a href="">amet</a>
                    <small>2</small>
                </li>

                <li><a href="">consectetur</a>
                    <small>3</small>
                </li>

                <li><a href="">dolor</a>
                    <small>4</small>
                </li>

            </ul>
        </div>


        <div class="widget twitter">
            <h3 class="title">Tweets</h3>
            <ul id="tweets"></ul>
        </div>

    </aside>
    <div class="clearfix"></div>
</div>
<footer id="footer" class="inner">
    <div class="alignleft">

        © 2017 Nekuata

    </div>
    <div class="clearfix"></div>
</footer>

<script src="${root}/js/jquery-3.2.1.min.js" type="text/javascript"></script>
<link rel="stylesheet" href="${root}/post/css/jquery.css" media="screen" type="text/css">

<div id="sbi_camera_button" class="sbi_search"
     style="left: 0px; top: 0px; position: absolute; width: 29px; height: 27px; border: medium none; margin: 0px; padding: 0px; z-index: 2147483647; display: none;"></div>
</body>
</html>