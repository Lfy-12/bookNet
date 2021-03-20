<%@ page contentType="text/html;charset=UTF-8"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="com.yxq.valuebean.GoodsSingle"%>
<%	ArrayList goodslist=(ArrayList)session.getAttribute("goodslist");	%>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>小站书店</title>
    <link rel="stylesheet" href="css/index.css">
    <script src="js/first.js"></script>
</head>

<body>
    <div id="top">
        <ul class="right">
            <li><a href="log.html">登录</a></li>
            <li><a href="reg.html">注册</a></li>
        </ul>
    </div>

    <div id="header">
        <div class="zuo">
            <img src="picture/xz.jpg">
        </div>
        <div class="mid">
            <form>
                <input type="text" placeholder="Search...">
                <input type="submit" value="搜索">
            </form>
            <div>
                <a href="#">热搜：小王子 安徒生童话 一禅小和尚 聊斋新义</a>
            </div>
        </div>
        <div class="you">
            <a href="shopcar.jsp"><input type="button" class="box" value="购物车"></a>
            <a href="show.html"><input type="button" class="box2" value="发布二手书"></a>
        </div>
    </div>

    <div class="white">

    </div>

    <div class="zhubian">
        <div class="zhubian-top">
            <button class="item beu" onclick="setbeu(this)">主编推荐</button>
            <button class="item" onclick="setbeu(this)">精选书目</button>
            <button class="item" onclick="setbeu(this)">儿童文学</button>
            <button class="item" onclick="setbeu(this)">启蒙读物</button>
            <button class="item" onclick="setbeu(this)">文学传记</button>
            <button class="item" onclick="setbeu(this)">工具书</button>
            <button class="item" onclick="setbeu(this)">其他</button>
        </div>
        <div class="zhubian-bottom">
        </div>
    </div>

    <div class="zhu">
        <div class="lunbo">
            <button onclick="moveright()"><</button>
        </div>
        <div class="b2">
            <div class="b1" id="b1">

        <%
        
        for(int j=0;j<=2;j++){
        %>
            <div class="shuzi">
                <button> <% out.println(j+1); %>/3 </button>
            </div>
            <div class="cardlist">
        <%
                 
               
                 for(int i=0+8*j;i<8+8*j;i++){
                    GoodsSingle single=(GoodsSingle)goodslist.get(i);
        %>

                    <div class="card-box">
                        <div class="card ">

                            <div class="btn">
                                <span class="jg">￥<%=single.getPrice()%></span>
                                <span><a href="docar.jsp?action=buy&id=<%=i%>" class="gwc">加入购物车</a></span>
                            </div>
                            <!-- 封面 -->
                            <div class="card-outside">
                                <div class="card-outside-container">
                                    <!-- 正面 -->
                                    <div class="card-front">
                                        <div class="card-front-top">
                                            <img src="picture/<%=single.getPicture()%>">
                                        </div>
                                        <div class="card-front-bot">Click Me</div>
                                    </div>
                                    <!-- 反面 -->
                                    <div class="card-back ">
                                        <div class="video-container">
                                            <img src="picture/mulu1.jpg" alt="">
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- 封底 -->
                            <div class="card-inside">
                                <div class="card-inside-container">
                                    <h3><%=single.getName()%></h3>
                                    <p>该作爱憎分明，热情歌颂劳动人民、赞美他们的善良和纯洁的优秀品德；无情地揭露和批判王公贵族们的愚蠢、无能、贪婪和残暴。</p>
                                </div>
                            </div>
                        </div>
                    </div>

                    <%
            }//end for
        %>
            </div>
                
                <%
            }
        %>
            </div>
        </div>
        <div class="lunbo">
            <button onclick="moveleft()">></button>
        </div>
    </div>
</body>

</html>