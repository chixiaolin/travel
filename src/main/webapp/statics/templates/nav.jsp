<%--
  Created by IntelliJ IDEA.
  User: 15129
  Date: 2018/7/2
  Time: 16:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="/struts-tags" prefix="s"%>
<html>
<head>
    <title>导航栏</title>
</head>
<body>
    <!-- 导航栏部分 -->
    <div class="row">
        <nav class="navbar navbar-inverse" role="navigation">
            <div class="container-fluid">
                <div class="navbar-header">
                    <a class="navbar-brand" href="${pageContext.request.contextPath}/index.jsp">FuZhou Travel</a>
                </div>

                <s:if test="%{#session.visitor == null && #session.admin == null}">
                    <div>
                        <ul class="nav navbar-nav navbar-left">
                            <li><a href="${pageContext.request.contextPath}/introduce.jsp">福州介绍</a></li>
                            <li><a href="${pageContext.request.contextPath}/scenery.jsp">福州景点</a></li>
                            <li><a href="${pageContext.request.contextPath}/touristline.jsp">旅游线路</a></li>
                            <li><a href="${pageContext.request.contextPath}/touristnote.jsp">旅游游记</a></li>
                            <li><a href="${pageContext.request.contextPath}/news.jsp">旅游新闻</a></li>
                            <li><a href="${pageContext.request.contextPath}/hotel.jsp">周边酒店</a></li>
                            <%--<li class="dropdown">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                    留言
                                    <b class="caret"></b>
                                </a>
                                <ul class="dropdown-menu">
                                    <li><a href="#">我要留言</a></li>
                                    <li><a href="#">留言查看</a></li>
                                </ul>
                            </li>--%>
                        </ul>
                    </div>
                    <div>
                        <ul class="nav navbar-nav navbar-right">
                            <li class="dropdown">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                    登陆
                                    <b class="caret"></b>
                                </a>

                                <ul class="dropdown-menu">
                                    <li><a href="${pageContext.request.contextPath}/visitorLogin.jsp">游客登陆</a></li>
                                    <li><a href="${pageContext.request.contextPath}/adminLogin.jsp">管理员登陆</a></li>
                                </ul>
                            </li>
                            <li><a href="${pageContext.request.contextPath}/register.jsp">注册</a></li>
                        </ul>
                    </div>
                </s:if>
                <s:if test="%{#session.visitor != null}">
                    <div>
                        <ul class="nav navbar-nav navbar-left">
                            <li><a href="${pageContext.request.contextPath}/introduce.jsp">福州介绍</a></li>
                            <li><a href="${pageContext.request.contextPath}/scenery.jsp">福州景点</a></li>
                            <li class="dropdown">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                    旅游线路
                                    <b class="caret"></b>
                                </a>
                                <ul class="dropdown-menu">
                                    <li><a href="${pageContext.request.contextPath}/visitor/destine_touristline.jsp">预定线路</a> </li>
                                    <li><a href="${pageContext.request.contextPath}/visitor/query_destine_touristline.jsp">查看预定</a> </li>
                                </ul>
                            </li>
                            <li class="dropdown">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                    游记
                                    <b class="caret"></b>
                                </a>
                                <ul class="dropdown-menu">
                                    <li><a href="${pageContext.request.contextPath}/visitor/create_touristnote.jsp">编写游记</a></li>
                                    <li><a href="${pageContext.request.contextPath}/touristnote.jsp">游记查看</a></li>
                                </ul>
                            </li>
                            <li><a href="${pageContext.request.contextPath}/news.jsp">旅游新闻</a></li>
                            <li class="dropdown">
                                <a href="${pageContext.request.contextPath}/hotel.jsp" class="dropdown-toggle" data-toggle="dropdown">
                                    周边酒店
                                    <b class="caret"></b>
                                </a>
                                <ul class="dropdown-menu">
                                    <li><a href="${pageContext.request.contextPath}/hotel.jsp">查看酒店</a></li>
                                    <li><a href="${pageContext.request.contextPath}/visitor/query_destine_hotel.jsp">查看预定</a></li>
                                </ul>
                            </li>
                            <li class="dropdown">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                    留言
                                    <b class="caret"></b>
                                </a>
                                <ul class="dropdown-menu">
                                    <li><a href="${pageContext.request.contextPath}/message_add.jsp">我要留言</a></li>
                                    <li><a href="${pageContext.request.contextPath}/message.jsp">留言查看</a></li>
                                </ul>
                            </li>
                        </ul>
                    </div>
                    <div>
                        <ul class="nav navbar-nav navbar-right">
                            <li><a href="${pageContext.request.contextPath}/visitorAccount/visitorOutLogin.action">注销</a></li>
                            <li><a href="${pageContext.request.contextPath}/register.jsp">注册</a></li>
                        </ul>
                    </div>
                </s:if>

            </div>
        </nav>
    </div>
</body>
</html>


