<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <base href="<%=basePath%>">
    <title>登录注册</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <script src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
    <link rel="stylesheet" href="<%=basePath%>resource/css/login.css" type="text/css" media="all">
    <style>
        #msg,#msg2{
            color: white;
        }


    </style>



</head>

<body>
<h1>登录注册</h1>
<div class="container w3layouts agileits">
    <div class="login w3layouts agileits">
        <h2>登 录</h2>

        <input type="text"      id="username1"  placeholder="用户名" >
        <input type="password"  id="password1" placeholder="密码"   >

        <ul class="tick w3layouts agileits">
            <li>
                <input type="checkbox" id="brand1" value="" >
                <label for="brand1"><span></span>记住我</label>
            </li>
        </ul>

        <div class="send-button w3layouts agileits">
            <input type="button" value="登 录" id="btnLogin">
            <div id="msg"></div>
        </div>



        <a href="<%=path%>/resource/login/forgetPwd.jsp" target="_blank">忘记密码?</a>



    </div>

    <div class="register w3layouts agileits" id="registerDiv">
        <h2>注 册</h2>
        <input type="text"       id="username2"         placeholder="用户名"   >
        <input type="password"   id="password2"     placeholder="密码"     >
        <input type="text"       id="email"        placeholder="邮箱"     >

        <div class="send-button w3layouts agileits">
            <input type="button" value="免费注册" id="btnRegister">
            <div id="msg2"></div>

        </div>


        <div class="clear"></div>

    </div>

    <div class="clear"></div>
</div>

<div class="footer w3layouts agileits">
    <p>Copyright &copy; More Templates</p>
</div>

<input type="hidden" value="<%=basePath%>" id="hidd">

<script>


    $(function(){


        $("#btnLogin").click(function(){
            if($("input[type='checkbox']").is(':checked')) {
                flag="yes";
            }else{
                flag="no";
            }

            if($("#username1").val()!=''&&$("#password1").val()!=''){
                $.ajax({
                    url:"login",
                    type:"post",
                    data:{
                        "username":$("#username1").val(),
                        "password":$("#password1").val(),
                        "flag":flag
                    },success:function(data){
                        if(data=="none"){
                            $("#msg").html("用户不存在!");
                        }else if(data=="yes"){
                            //跳转页面
                            $("#msg").html("登录成功！")
                            window.location.href="<%=basePath%>resource/shop/navigator.jsp?username="+$("#username1").val();
                        }else{
                            $("#msg").html("用户名或密码错误!");
                        }
                    }
                })
            }else{
                $("#msg").html("用户名或密码不能为空!");
            }
        });



        function getCookie(name){
            var strcookie = document.cookie;//获取cookie字符串
            var arrcookie = strcookie.split("; ");//分割
            // 遍历匹配
            for ( var i = 0; i < arrcookie.length; i++) {
                var arr = arrcookie[i].split("=");
                if (arr[0] == name){
                    return arr[1];
                }
            }
            return "";
        }
    });



</script>


</body>


</html>
