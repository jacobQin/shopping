<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2016/7/6
  Time: 22:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>导航条在项目中的应用</title>
    <script language="JavaScript" type="text/javascript" src="js/jquery-3.0.0.min.js"></script>
    <style>
        body {
            font-size: 13px
        }

        #divFrame {
            border: solid 1px #666;
            width: 301px;
            overflow: hidden
        }

        #divFrame .clsHead {
            background-color: #eee;
            padding: 8px;
            height: 35px;
            cursor: hand
        }

        #divFrame .clsHead span {
            float: right;
            margin-top: 3px
        }

        #divFrame.clsHead h3 {
            padding: 0px;
            margin: 0px;
            float: left
        }

        #divFrame.clsContent {
            padding: 8px;
        }

        #divFrame.clsContent ul {
            margin: 0px;
            padding: 0px;
            list-style-type: none;
        }

        #divFrame.clsContent ul li {
            float: left;
            width: 95px;
            height: 23px;
            line-height: 23px;
        }

        #divFrame.clsBot {
            float: right;
            padding-top: 5px;
            padding-bottom: 5px;

        }

        .GetFocus {
            background-color: #eee;
        }

    </style>
</head>
<script>
   $(function(){
       $(".clsHead").click(function(){
           //如果content可见
           if($(".clsContent").is(":visible")){
               $(".clsContent").css("display","none");
           }
           else{
               $(".clsContent").css("display","block");
           }
       });
       $(".clsBot > a").click(function(){
           if($(".clsBot > a").text() == "简化"){
               //隐藏index>4但不是最后一个的li
               $("ul li:gt(4):not(:last)").hide();
               $(".clsBot > a").text("更多");
           }
           else{
               $("ul li:gt(4):not(:last)").show();
               $(".clsBot > a").text("简化");
           }
       });
   })
</script>
<body>
<div id="divFrame">
    <div class="clsHead">
        <h3>图书分类</h3>
        <span><input type="button" style="width: 8px;height: 5px" ></span>
    </div>
    <div class="clsContent">
        <ul>
            <li><a href="#">小说</a><i>(100)</i></li>
            <li><a href="#">文艺</a><i>(100)</i></li>
            <li><a href="#">青春</a><i>(100)</i></li>
            <li><a href="#">少儿</a><i>(100)</i></li>
            <li><a href="#">生活</a><i>(100)</i></li>
            <li><a href="#">社科</a><i>(100)</i></li>
            <li><a href="#">管理</a><i>(100)</i></li>
            <li><a href="#">计算机</a><i>(100)</i></li>
            <li><a href="#">小说</a><i>(100)</i></li>
            <li><a href="#">教育</a><i>(100)</i></li>
            <li><a href="#">工具书</a><i>(100)</i></li>
            <li><a href="#">引进版</a><i>(100)</i></li>
            <li><a href="#">其他</a><i>(100)</i></li>
        </ul>
        <div class="clsBot">
            <a href="#"> 简化</a>
            <input type="button" style="height: 5px;width: 8px" />
        </div>
    </div>
</div>
</body>
</html>
