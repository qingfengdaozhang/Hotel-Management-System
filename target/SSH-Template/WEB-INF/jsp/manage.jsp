<html lang="en">
<head>
    <%--<meta charset="UTF-8">--%>
    <title>会员中心</title>
    <link rel="stylesheet" type="text/css" href="static/bootstrap/css/bootstrap.min.css">

    <%--<meta name=”viewport” content=”width=device-width, initial-scale=1″ />--%>
    <style type="text/css">
        /*背景图*/
        body{
            background-image: url("/static/sucai/beijing.png");
            background-repeat:no-repeat;
            background-size:auto;
        }
        /*导航栏*/
        *{
            margin: 0px;
            padding:0px;
        }
        .topbody{
            width:900px;
            margin: 0 auto;
        }
        .topbar{
            width:100%;
            background-color: #000;
            display: inline-block;
        }

        .topbar li{
            float:left;
        }
        .toplist{
            display: inline-block;
            list-style-type:none;
        }
        .toplist a{
            color:#FFF;
            text-decoration: none;
        }
        .title,.toplist a{
            display:block;
            display: block;
            float: left;
        }
        .toplist a{
            padding:15px 20px 15px 20px;
        }
        .title{
            color:#FFF;
            text-decoration: none;
            padding:15px 30px 15px 30px;
        }
        .logo{
            width: 80px;
            height: 50px;
            float: left;
            position: relative;
            left: 16%;
            padding-top: 6px;
        }
        .content{
            position: absolute;left:16%;top:20%;
        }
        .div-b{
            width:1025px;height:600px;padding:5px;
            filter: alpha(opacity=60);background-color:rgba(255, 255, 255, 0.5)
        }
        /*侧边栏*/
        .rectangle{
            position: relative;
            float: left;
            top: 30px;
            left: 10px;
        }
        .rejest{
            z-index: 998;
            width: 200px;
            height: 40px;
            position: relative;
            left: 10px;
            margin-top: 12px;
            top: 12px;
            background-color: #171814;
            border: none;
            color: white;
            font-family: 微软雅黑；
        }
        /*内容*/
        .title1{
            position: relative;
            margin-top: 30px;
            left:27%;
            color: #8A6538;
            font-family:微软雅黑;
            font-weight: bold;
            font-size: 24px;
        }
        #table1{
            position: relative;
            right: 5px;
            float: right;
            top: 15px;
            filter: alpha(opacity=60);background-color:rgba(255, 255, 255, 0.5);
        }
        .btn-danger{
            float: left;
        }
        .btn-success{
            margin-right: 80px;
        }
        .btn-info{
            margin-top: -33px;
            float: right;
        }
        .login-button-box button{
            float: right;
            position: relative;
            right: 150px;
            margin-top: 12px;
            background-color: #ff7d0a;
            color: #ffffff;
            font-size: 16px;
            width: 386px;
            height: 40px;
            margin-left: 18px;
            border: 1px solid #ff7d0a;
            border-radius: 4px;
            position: relative;
            right:21%;
        }
        .panel{
            position: relative;
            left:27%;
            width: 700px;
        }
        .modal fade{
            z-index: 999;
        }
        #reserve {
            position: relative;
            top: -300px;
        }
        #buttontotal{
            position:relative;
            top:-15px;
            left:26%;

        }
        .buttoninfo{
            z-index: 998;
            width: 100px;
            height: 20px;
            position: relative;
            left: 10px;
            margin-top: 12px;
            top: 12px;
            background-color: #171814;
            border: none;
            color: white;
            font-family: 微软雅黑；
        }
    </style>
</head>

<script type="text/javascript" src="/static/bootstrap/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="/static/bootstrap/js/bootstrap.min.js"></script>
<script type="text/javascript" src="/static/bootstrap-table/bootstrap-table-locale-all.min.js"></script>
<script type="text/javascript" src="/static/bootstrap-table/bootstrap-table.min.js"></script>
<body>
<!--导航-->
<div class="nav">
    <div class="topbar">
        <img src="/static/sucai/logo.png" class="logo">
        <div class="topbody">
            <a class="title" href="">腾达宾馆</a>
            <ul class="toplist">
                <li><a href="index">首页</a></li>
            </ul>
        </div>
    </div>
</div>

<!--内容-->
<div class="content">
    <div class="div-b">
        <!--侧边栏-->
        <div class="btn-group" style="width: 220px;height: 300px; background-color: #2A231C;" >
            <!-- <form>  -->
            <button class="rejest">订单信息</button>
            <button class="rejest" onclick="showdialog()">会员管理</button>
            <button class="rejest" onclick="showroommanage()">客房管理</button>
            <button class="rejest" onclick="Showpassword()">订单管理</button>
            <button class="rejest">退出系统</button>
            <!-- </form>  -->
        </div>
        <div id="reserve" >
            <div class="title1">
                尚未确认的预定信息
            </div>
            <div id ="buttontotal">
                <button class="buttoninfo" onclick="showdialog()">联系人信息</button>
                <button class="buttoninfo" onclick="Showroominfo()">客房信息</button>
                <button class="buttoninfo" onclick="charge()">修改</button>
                <button class="buttoninfo" onclick="Showdel()">删除</button>
            </div>
            <div>
                <div class="panel" >
                    <table id="tb_departments" class="table table-striped"></table>
                </div>
            </div>
        </div>
    </div>
</div>

</body>

<div class="modal fade" tabindex="-1" role="dialog" id="subdialog">
    <div class="modal-dialog" role="document" style="width:1000px">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title">会员管理</h4>
            </div>
            <div class="modal-body">
                    <div id="loginInfo" style="display: block;">

                        <div class="panel" >
                            <table id="tb_member" class="table table-striped"></table>
                        </div>

                    </div>


            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
                <button type="submit" onclick="postinfo()" class="btn btn-primary">确定</button><span id="tip2"> </span>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
</div>

<div class="modal fade" tabindex="-1" role="dialog" id="roommanage">
    <div class="modal-dialog" role="document" style="width:1000px">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title">会员管理</h4>
            </div>
            <div class="modal-body">
                <div id="loginInf" style="display: block;">

                    <div class="panel" >
                        <table id="tb_roommanage" class="table table-striped"></table>
                    </div>

                </div>

            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
                <button type="submit" onclick="postinfo()" class="btn btn-primary">确定</button><span id="tip2"> </span>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
</div>

<script>
loadinit();
function loadinit()
{
    //初始化用户表格
    $('#tb_departments').bootstrapTable({
        url: '/subscript/getmanagesubscription.action',        //请求后台的URL（*）
        method: 'get',                      //请求方式（*）
        striped: true,                      //是否显示行间隔色
        cache: false,                       //是否使用缓存，默认为true，所以一般情况下需要设置一下这个属性（*）
        pagination: true,                   //是否显示分页（*）
        sortOrder: "asc",                   //排序方式
        sidePagination: "client",           //分页方式：client客户端分页，server服务端分页（*）
        pageNumber:1,                       //初始化加载第一页，默认第一页
        pageSize: 10,                       //每页的记录行数（*）
        pageList: [10, 25, 50, 100],        //可供选择的每页的行数（*）
        clickToSelect: true,                //是否启用点击选中行
        columns: [{
            checkbox: true
        },  {
            field: 'no',
            title: '订单号'
        }, {
            field: 'linkman',
            title: '联系人'
        }, {
            field: 'phone',
            title: '手机号'
        },{
            field:'status',
            title:'状态',
            formatter:function (value){
                if(value!=null){
                    if(value=="1")
                            return "已确认";
                    else if(value=="2")
                            return "已取消";
                    else if(value=="3")
                            return "未确认";
                }
            }
        }]
    });
}
function showdialog(){

        $("#subdialog").modal("show");
        menbertbinit();
    }

function showroommanage(){
    $("#roommanage").modal("show");
    roommanager();
}

function menbertbinit()
{
    $('#tb_member').bootstrapTable({
        url: '/login/getallmember.action',        //请求后台的URL（*）
        method: 'get',                      //请求方式（*）
        striped: true,                      //是否显示行间隔色
        cache: false,                       //是否使用缓存，默认为true，所以一般情况下需要设置一下这个属性（*）
        pagination: true,                   //是否显示分页（*）
        sortOrder: "asc",                   //排序方式
        sidePagination: "client",           //分页方式：client客户端分页，server服务端分页（*）
        pageNumber:1,                       //初始化加载第一页，默认第一页
        pageSize: 10,                       //每页的记录行数（*）
        pageList: [10, 25, 50, 100],        //可供选择的每页的行数（*）
        clickToSelect: true,                //是否启用点击选中行
        columns: [{
            checkbox: true
        }, {
            field: 'username',
            title: '用户名'
        },{
            field: 'email',
            title: '电子邮箱'
        },{
            field:'phone',
            title:'手机号'
        },{
                field:'regtime',
                title:'订单开始时间',
                formatter:function (value) {
                    var dateVal = value + "";
                    if(value!=null){
                        var date = new Date(parseInt(dateVal.replace("/Date(", "").replace(")/", ""), 10));
                        var month = date.getMonth() + 1 < 10 ? "0" + (date.getMonth() + 1) : date.getMonth() + 1;
                        var currentDate = date.getDate() < 10 ? "0" + date.getDate() : date.getDate();
                        var hours = date.getHours() < 10 ? "0" + date.getHours() : date.getHours();
                        var minutes = date.getMinutes() < 10 ? "0" + date.getMinutes() : date.getMinutes();
                        var seconds = date.getSeconds() < 10 ? "0" + date.getSeconds() : date.getSeconds();
                        return date.getFullYear() + "-" + month + "-" + currentDate + " " + hours + ":" + minutes + ":" + seconds;
                    }
                }}
         ]
    })
}
function roommanager(){
    $('#tb_roommanage').bootstrapTable({
        url: '/login/getallmember.action',        //请求后台的URL（*）
        method: 'get',                      //请求方式（*）
        striped: true,                      //是否显示行间隔色
        cache: false,                       //是否使用缓存，默认为true，所以一般情况下需要设置一下这个属性（*）
        pagination: true,                   //是否显示分页（*）
        sortOrder: "asc",                   //排序方式
        sidePagination: "client",           //分页方式：client客户端分页，server服务端分页（*）
        pageNumber:1,                       //初始化加载第一页，默认第一页
        pageSize: 10,                       //每页的记录行数（*）
        pageList: [10, 25, 50, 100],        //可供选择的每页的行数（*）
        clickToSelect: true,                //是否启用点击选中行
        columns: [{
            checkbox: true
        }, {
            field: 'username',
            title: '用户名'
        },{
            field: 'email',
            title: '电子邮箱'
        },{
            field:'phone',
            title:'手机号'
        },{
            field:'regtime',
            title:'订单开始时间',
            formatter:function (value) {
                var dateVal = value + "";
                if(value!=null){
                    var date = new Date(parseInt(dateVal.replace("/Date(", "").replace(")/", ""), 10));
                    var month = date.getMonth() + 1 < 10 ? "0" + (date.getMonth() + 1) : date.getMonth() + 1;
                    var currentDate = date.getDate() < 10 ? "0" + date.getDate() : date.getDate();
                    var hours = date.getHours() < 10 ? "0" + date.getHours() : date.getHours();
                    var minutes = date.getMinutes() < 10 ? "0" + date.getMinutes() : date.getMinutes();
                    var seconds = date.getSeconds() < 10 ? "0" + date.getSeconds() : date.getSeconds();
                    return date.getFullYear() + "-" + month + "-" + currentDate + " " + hours + ":" + minutes + ":" + seconds;
                }
            }}
        ]
    })
}

function charge(){
    var chenked=$('#tb_departments').bootstrapTable('getAllSelections');
    $.ajax({
        type:"GET",
        url:"/subscript/charge.action",
        dataType:"json",
        data:{"id":chenked[0].id},
        success:function(data){
            if(data=="success"){
                    alert("修改成功");
            }
            else alert("修改失败");
        },
        complete:function()
        {
            $('#tb_departments').bootstrapTable("refresh");
            document.getElementById("form_data").reset();
        }
    })
}

</script>
</html>
