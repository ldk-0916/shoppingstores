<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false"%>

<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
<head>
    <title>商城主页</title>
    <base href="<%=basePath%>">
    <meta charset="UTF-8">
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <link rel="stylesheet" href="<%=basePath%>resource/css/style.css">
    <meta name="viewport" content="width=device-width,initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no"/>

    <style type="text/css">
        #myframe{
            display: none;
            width: 100%;
            height: 1000px;
            border: 0;
            scrolling: no;
        }

        #topImg{
            display: none;
            position: fixed;
            right: 0;
            bottom: 200px;
        }



    </style>

</head>
<body>
<div class='grain'></div>
<div class='intro'>
    <div class='center'>
        <div class='core'></div>
        <div class='outer_one'>
            <div class='outer_one__piece'></div>
            <div class='outer_one__piece'></div>
            <div class='outer_one__piece'></div>
            <div class='outer_one__piece'></div>
            <div class='outer_one__piece'></div>
            <div class='outer_one__piece'></div>
            <div class='outer_one__piece'></div>
            <div class='outer_one__piece'></div>
            <div class='outer_one__piece'></div>
            <div class='outer_one__piece'></div>
            <div class='outer_one__piece'></div>
            <div class='outer_one__piece'></div>
            <div class='outer_one__piece'></div>
            <div class='outer_one__piece'></div>
            <div class='outer_one__piece'></div>
            <div class='outer_one__piece'></div>
            <div class='outer_one__piece'></div>
            <div class='outer_one__piece'></div>
            <div class='outer_one__piece'></div>
            <div class='outer_one__piece'></div>
            <div class='outer_one__piece'></div>
            <div class='outer_one__piece'></div>
            <div class='outer_one__piece'></div>
            <div class='outer_one__piece'></div>
            <div class='outer_one__piece'></div>
            <div class='outer_one__piece'></div>
            <div class='outer_one__piece'></div>
            <div class='outer_one__piece'></div>
            <div class='outer_one__piece'></div>
            <div class='outer_one__piece'></div>
            <div class='outer_one__piece'></div>
            <div class='outer_one__piece'></div>
            <div class='outer_one__piece'></div>
            <div class='outer_one__piece'></div>
            <div class='outer_one__piece'></div>
            <div class='outer_one__piece'></div>
        </div>
        <div class='outer_two'>
            <div class='outer_two__piece'></div>
            <div class='outer_two__piece'></div>
            <div class='outer_two__piece'></div>
            <div class='outer_two__piece'></div>
            <div class='outer_two__piece'></div>
            <div class='outer_two__piece'></div>
            <div class='outer_two__piece'></div>
            <div class='outer_two__piece'></div>
            <div class='outer_two__piece'></div>
            <div class='outer_two__piece'></div>
            <div class='outer_two__piece'></div>
            <div class='outer_two__piece'></div>
            <div class='outer_two__piece'></div>
            <div class='outer_two__piece'></div>
            <div class='outer_two__piece'></div>
            <div class='outer_two__piece'></div>
            <div class='outer_two__piece'></div>
            <div class='outer_two__piece'></div>
            <div class='outer_two__piece'></div>
            <div class='outer_two__piece'></div>
            <div class='outer_two__piece'></div>
            <div class='outer_two__piece'></div>
            <div class='outer_two__piece'></div>
            <div class='outer_two__piece'></div>
            <div class='outer_two__piece'></div>
            <div class='outer_two__piece'></div>
            <div class='outer_two__piece'></div>
            <div class='outer_two__piece'></div>
            <div class='outer_two__piece'></div>
            <div class='outer_two__piece'></div>
            <div class='outer_two__piece'></div>
            <div class='outer_two__piece'></div>
            <div class='outer_two__piece'></div>
            <div class='outer_two__piece'></div>
            <div class='outer_two__piece'></div>
            <div class='outer_two__piece'></div>
        </div>
        <div class='outer_three'>
            <div class='outer_three__piece'></div>
            <div class='outer_three__piece'></div>
            <div class='outer_three__piece'></div>
            <div class='outer_three__piece'></div>
            <div class='outer_three__piece'></div>
            <div class='outer_three__piece'></div>
            <div class='outer_three__piece'></div>
            <div class='outer_three__piece'></div>
            <div class='outer_three__piece'></div>
            <div class='outer_three__piece'></div>
            <div class='outer_three__piece'></div>
            <div class='outer_three__piece'></div>
            <div class='outer_three__piece'></div>
            <div class='outer_three__piece'></div>
            <div class='outer_three__piece'></div>
            <div class='outer_three__piece'></div>
            <div class='outer_three__piece'></div>
            <div class='outer_three__piece'></div>
            <div class='outer_three__piece'></div>
            <div class='outer_three__piece'></div>
            <div class='outer_three__piece'></div>
            <div class='outer_three__piece'></div>
            <div class='outer_three__piece'></div>
            <div class='outer_three__piece'></div>
            <div class='outer_three__piece'></div>
            <div class='outer_three__piece'></div>
            <div class='outer_three__piece'></div>
            <div class='outer_three__piece'></div>
            <div class='outer_three__piece'></div>
            <div class='outer_three__piece'></div>
            <div class='outer_three__piece'></div>
            <div class='outer_three__piece'></div>
            <div class='outer_three__piece'></div>
            <div class='outer_three__piece'></div>
            <div class='outer_three__piece'></div>
            <div class='outer_three__piece'></div>
        </div>
        <div class='outer_four'>
            <div class='outer_four__piece'></div>
            <div class='outer_four__piece'></div>
            <div class='outer_four__piece'></div>
            <div class='outer_four__piece'></div>
            <div class='outer_four__piece'></div>
            <div class='outer_four__piece'></div>
            <div class='outer_four__piece'></div>
            <div class='outer_four__piece'></div>
            <div class='outer_four__piece'></div>
            <div class='outer_four__piece'></div>
            <div class='outer_four__piece'></div>
            <div class='outer_four__piece'></div>
            <div class='outer_four__piece'></div>
            <div class='outer_four__piece'></div>
            <div class='outer_four__piece'></div>
            <div class='outer_four__piece'></div>
            <div class='outer_four__piece'></div>
            <div class='outer_four__piece'></div>
            <div class='outer_four__piece'></div>
            <div class='outer_four__piece'></div>
            <div class='outer_four__piece'></div>
            <div class='outer_four__piece'></div>
            <div class='outer_four__piece'></div>
            <div class='outer_four__piece'></div>
            <div class='outer_four__piece'></div>
            <div class='outer_four__piece'></div>
            <div class='outer_four__piece'></div>
            <div class='outer_four__piece'></div>
            <div class='outer_four__piece'></div>
            <div class='outer_four__piece'></div>
            <div class='outer_four__piece'></div>
            <div class='outer_four__piece'></div>
            <div class='outer_four__piece'></div>
            <div class='outer_four__piece'></div>
            <div class='outer_four__piece'></div>
            <div class='outer_four__piece'></div>
        </div>
        <div class='outer_five'>
            <div class='outer_five__piece'></div>
            <div class='outer_five__piece'></div>
            <div class='outer_five__piece'></div>
            <div class='outer_five__piece'></div>
            <div class='outer_five__piece'></div>
            <div class='outer_five__piece'></div>
            <div class='outer_five__piece'></div>
            <div class='outer_five__piece'></div>
            <div class='outer_five__piece'></div>
            <div class='outer_five__piece'></div>
            <div class='outer_five__piece'></div>
            <div class='outer_five__piece'></div>
            <div class='outer_five__piece'></div>
            <div class='outer_five__piece'></div>
            <div class='outer_five__piece'></div>
            <div class='outer_five__piece'></div>
            <div class='outer_five__piece'></div>
            <div class='outer_five__piece'></div>
            <div class='outer_five__piece'></div>
            <div class='outer_five__piece'></div>
            <div class='outer_five__piece'></div>
            <div class='outer_five__piece'></div>
            <div class='outer_five__piece'></div>
            <div class='outer_five__piece'></div>
            <div class='outer_five__piece'></div>
            <div class='outer_five__piece'></div>
            <div class='outer_five__piece'></div>
            <div class='outer_five__piece'></div>
            <div class='outer_five__piece'></div>
            <div class='outer_five__piece'></div>
            <div class='outer_five__piece'></div>
            <div class='outer_five__piece'></div>
            <div class='outer_five__piece'></div>
            <div class='outer_five__piece'></div>
            <div class='outer_five__piece'></div>
            <div class='outer_five__piece'></div>
        </div>
        <div class='pieces'>


            <div class='future_ui__piece blank'></div>
            <div class='future_ui__piece blank'></div>
            <div class='future_ui__piece blank'></div>
            <div class='future_ui__piece blank'></div>
            <div class='future_ui__piece blank'></div>
            <div class='future_ui__piece blank'></div>
            <div class='future_ui__piece blank'></div>
            <div class='future_ui__piece blank'></div>
            <div class='future_ui__piece blank'></div>
            <div class='future_ui__piece blank'></div>
            <div class='future_ui__piece blank'></div>
            <div class='future_ui__piece blank'></div>
            <div class='future_ui__piece blank'></div>
            <div class='future_ui__piece blank'></div>
            <div class='future_ui__piece blank'></div>
            <div class='future_ui__piece blank'></div>
            <div class='future_ui__piece blank'></div>
            <div class='future_ui__piece blank'></div>
            <div class='future_ui__piece blank'></div>
            <div class='future_ui__piece blank'></div>
            <div class='future_ui__piece blank'></div>
            <div class='future_ui__piece blank'></div>
            <div class='future_ui__piece blank'></div>
            <div class='future_ui__piece blank'></div>
            <div class='future_ui__piece blank'></div>
            <div class='future_ui__piece blank'></div>
            <div class='future_ui__piece blank'></div>
            <div class='future_ui__piece blank'></div>
            <div class='future_ui__piece blank'></div>
            <div class='future_ui__piece blank'></div>
            <div class='future_ui__piece blank'></div>
        </div>
    </div>
</div>
<%--全路径(绝对路径)--%>
<iframe  id="myframe"></iframe>
<img src="<%=basePath%>resource/images/top.png" id="topImg">

<script type="text/javascript">

    $(function(){
    /* 一进页面就发请求查询所有的类别*/
        $.ajax({
            url:"selectAllP_type",
            type:"post",
            success:function(data){
                //alert(data);
                for (var i=0;i<data.length;i++) {
                var str = "     <div class='future_ui__piece'> <span><a href=''><font color ='white' size='7'>"+data[i]+"</font></a></span>" +
                    "                <div class='line'></div>" +
                    "                <div class='tip'></div>" +
                    "            </div>";
                    $(".pieces").prepend(str)
                }
            }
        });

        $(".pieces").on("click",".future_ui__piece",function(){
           // alert($(this).children().children().children().text());

            var type = $(this).children().children().children().text();
            $("#myframe").attr("src","<%=basePath%>resource/shop/showProducts.jsp?p_type="+type);

            $(".intro").hide();
            $("#myframe").show();
            $("#topImg").show();
        });

        $("#topImg").click(function(){
            $(".intro").show();
            $("#myframe").hide();
            $("#topImg").hide();

        })

    })

</script>
</body>
</html>
