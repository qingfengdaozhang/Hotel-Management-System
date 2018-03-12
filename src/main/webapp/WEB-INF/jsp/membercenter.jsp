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
                <li><a href="roomprice">设施与价格</a></li>
                <li><a href="">会员中心</a></li>
                <li><a href="">帮助</a></li>
                <li><a href="login">登陆</a></li>
                <li><a href="regest">注册</a></li>
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
                <button class="rejest">客房预订</button>
                <button class="rejest" onclick="historysub()">历史订单</button>
                <button class="rejest" onclick="ShowInfo()">修改信息</button>
                <button class="rejest" onclick="Showpassword()">修改密码</button>
                <button class="rejest">退出系统</button>
           <!-- </form>  -->
        </div>
        <div id="reserve" >
            <div class="title1">
                尚未确认的预定信息
            </div>
            <div id ="buttontotal">
                <button class="buttoninfo" onclick="Showlinkinfo()">联系人信息</button>
                <button class="buttoninfo" onclick="Showroominfo()">客房信息</button>
                <button class="buttoninfo" onclick="Showdel()">删除</button>
            </div>
            <div>
            <div class="panel" >
                <table id="tb_departments" class="table table-striped"></table>
            </div>
                <div class="login-button-box">
                    <button onclick="ShowNewDialog()">新建订单</button>
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
                <h4 class="modal-title">预订信息</h4>
            </div>
            <div class="modal-body">
                <form class="form-horizontal" >
                    <div id="loginInfo" style="display: block;">


                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label class="col-md-3 control-label required" for="linkman" aria-required="true">联系人<span class="required" aria-required="true">*</span></label>
                                    <div class="col-md-9">
                                        <input class="form-control" id="linkman" name="linkman" placeholder="请输入联系人" required="required" type="text" value="" aria-required="true">
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label class="col-md-3 control-label required" for="phone" aria-required="true">联系电话<span class="required" aria-required="true">*</span></label>
                                    <div class="col-md-9">
                                        <input class="form-control" id="phone" name="phone" placeholder="请输入联系电话" required="required" type="text" value="" aria-required="true">
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label class="col-md-3 control-label required" for="email" aria-required="true">电子邮件<span class="required" aria-required="true">*</span></label>
                                    <div class="col-md-9">
                                        <input class="form-control" id="email" name="email" placeholder="请输入电子邮件" required="required" type="text" value="" aria-required="true">
                                    </div>
                                </div>
                            </div>
                        </div>



                    </div>


                </form>
            </div>

            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
                <button type="submit" onclick="postinfo()" class="btn btn-primary">确定</button><span id="tip2"> </span>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
</div>

<div class="modal fade" tabindex="-1" role="dialog" id="chargeinfo">
    <div class="modal-dialog" role="document" style="width:1000px">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title">个人信息</h4>
            </div>
            <div class="modal-body">
                <form class="form-horizontal" >
                    <div id="loginInfo_1" style="display: block;">


                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label class="col-md-3 control-label required" for="clinkman" aria-required="true">联系人<span class="required" aria-required="true">*</span></label>
                                    <div class="col-md-9">
                                        <input class="form-control" id="clinkman" name="clinkman" placeholder="请输入联系人" required="required" type="text" value="" aria-required="true">
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label class="col-md-3 control-label required" for="cphone" aria-required="true">联系电话<span class="required" aria-required="true">*</span></label>
                                    <div class="col-md-9">
                                        <input class="form-control" id="cphone" name="cphone" placeholder="请输入联系电话" required="required" type="text" value="" aria-required="true">
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label class="col-md-3 control-label required" for="cemail" aria-required="true">电子邮件<span class="required" aria-required="true">*</span></label>
                                    <div class="col-md-9">
                                        <input class="form-control" id="cemail" name="cemail" placeholder="请输入电子邮件" required="required" type="text" value="" aria-required="true">
                                    </div>
                                </div>
                            </div>
                        </div>



                    </div>


                </form>
            </div>

            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
                <button type="submit" onclick="postchargeinfo()" class="btn btn-primary">确定</button><span id="tip2"> </span>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
</div>

<div class="modal fade" tabindex="-1" role="dialog" id="chargepassword">
    <div class="modal-dialog" role="document" style="width:1000px">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title">密码</h4>
            </div>
            <div class="modal-body">
                <form class="form-horizontal" >
                    <div id="loginInfo_2" style="display: block;">


                        <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <label class="col-md-3 control-label required" for="oldpassword" aria-required="true">原密码<span class="required" aria-required="true">*</span></label>
                                <div class="col-md-9">
                                    <input class="form-control" id="oldpassword" name="oldpassword" placeholder="请输入原密码" required="required" type="password" value="" aria-required="true">
                                </div>
                            </div>
                        </div>
                    </div>

                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label class="col-md-3 control-label required" for="newpassword" aria-required="true">新密码<span class="required" aria-required="true">*</span></label>
                                    <div class="col-md-9">
                                        <input class="form-control" id="newpassword" name="newpassword" placeholder="请输入新密码" required="required" type="password" value="" aria-required="true">
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label class="col-md-3 control-label required" for="enterpassword" aria-required="true">确认密码<span class="required" aria-required="true">*</span></label>
                                    <div class="col-md-9">
                                        <input class="form-control" id="enterpassword" name="enterpassword" placeholder="请确认密码" required="required" type="password" value="" aria-required="true">
                                    </div>
                                </div>
                            </div>
                        </div>



                    </div>


                </form>
            </div>

            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
                <button type="submit" onclick="postchargeinfo()" class="btn btn-primary">确定</button><span id="tip2"> </span>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
</div>

<div class="modal fade" tabindex="-1" role="dialog" id="history">
    <div class="modal-dialog" role="document" style="width:1000px">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title">历史订单</h4>
            </div>
            <div class="modal-body">
                <form class="form-horizontal" >
                    <div id="loginInfo_3" style="display: block;">

                        <div class="panel" >
                            <table id="historytable" class="table table-striped"></table>
                        </div>

                    </div>


                </form>
            </div>

            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
                <button type="submit" onclick="postchargeinfo()" class="btn btn-primary">确定</button><span id="tip2"> </span>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
</div>

<div class="modal fade" tabindex="-1" role="dialog" id="deldialog">
    <div class="modal-dialog" role="document" style="width:1000px">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title">删除</h4>
            </div>
            <div class="modal-body">
            确认删除吗
            </div>

            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
                <button type="submit" onclick="del()" class="btn btn-primary">确定</button><span id="tip2"> </span>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
</div>

<div class="modal fade" tabindex="-1" role="dialog" id="linkinfo">
    <div class="modal-dialog" role="document" style="width:1000px">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title">联系人信息</h4>
            </div>
            <div class="modal-body">




            </div>

            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
                <button type="submit" onclick="linkinfo()" class="btn btn-primary">确定</button><span id="tip2"> </span>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
</div>

<div class="modal fade" tabindex="-1" role="dialog" id="roominfo">
    <div class="modal-dialog" role="document" style="width:1000px">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title">房间信息</h4>
            </div>
            <div class="modal-body">

                <div class="panel" >
                    <table id="tb_roominfo" class="table table-striped"></table>
                </div>


            </div>
            <button type="button" class="btn btn-default" data-dismiss="model" onclick="Showsubscription()">新建订单</button>

            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
                <button type="submit" onclick="roominfo()" class="btn btn-primary">确定</button><span id="tip3"> </span>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
</div>


<div class="modal fade" tabindex="-1" role="dialog" id="subscriptioninfo">
    <div class="modal-dialog" role="document" style="width:1000px">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title">订单信息</h4>
            </div>
            <div class="modal-body">

                <div class="row">
                    <div class="col-md-6">
                        <div class="form-group">
                            <label class="col-md-3 control-label" >楼房类型</label>
                            <div class="col-md-9">
                                <select id="roomtype_1"  type="text" class="form-control select2">
                                </select>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="row">
                <div class="col-md-6">
                    <div class="form-group">
                        <label class="col-md-3 control-label" >预定方式</label>
                        <div class="col-md-9">
                            <select id="roomtype"  type="text" class="form-control select2">
                                <option value="1">单个床位</option>
                                <option value="2">整个房间</option>
                            </select>
                        </div>
                    </div>
                </div>
                </div>

                <div class="row">
                    <div class="col-md-6">
                        <div class="form-group">
                            <label class="col-md-3 control-label required" for="stime" aria-required="true">开始时间<span class="required" aria-required="true">*</span></label>
                            <div class="col-md-9">
                                <input class="form-control" id="stime" name="stime" placeholder="请输入开始时间" required="required" type="date" value="" aria-required="true">
                            </div>
                        </div>
                    </div>
                </div>

                <div class="row">
                    <div class="col-md-6">
                        <div class="form-group">
                            <label class="col-md-3 control-label required" for="etime" aria-required="true">结束时间<span class="required" aria-required="true">*</span></label>
                            <div class="col-md-9">
                                <input class="form-control" id="etime" name="etime" placeholder="请输入结束时间" required="required" type="date" value="" aria-required="true">
                            </div>
                        </div>
                    </div>
                </div>

                <button type="submit" onclick="roomresh()" class="btn btn-primary">刷新</button><span id="tip4"> </span>
                <div class="panel" >
                    <table id="tb_roomnameinfo" class="table table-striped"></table>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
                <button type="submit" onclick="postsubscription()" class="btn btn-primary">确定</button><span id="tip3"> </span>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
</div>

<script>
    loaddata();
    function loaddata()
    {
        //初始化用户表格
        $('#tb_departments').bootstrapTable({
            url: '/subscript/getsubscription.action',        //请求后台的URL（*）
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
                field: 'email',
                title: '邮箱'
            },{
                field:'phone',
                title:'手机号'
            },{
                field:'cretime',
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
                }
            }]
        });
    }
    function historysub() {
        $('#history').modal("show");
        $('#historytable').bootstrapTable({
            url: '/subscript/getallsubscription.action',        //请求后台的URL（*）
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
                field: 'email',
                title: '邮箱'
            },{
                field:'phone',
                title:'手机号'
            },{
                field:'cretime',
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
                }
            },{
                field:'status',
                title:'状态',
                formatter:function(value){
                    if(value!=null){
                        if(value=="1")
                                return "已取消";
                        else if(value=="2")
                                return "已确定";
                        else if(value=="3")
                                return "未确认";
                        else return "error";
                    }
                }
            }]
        });

    }
    
    function ShowNewDialog() {

      /*  $.ajax({
            type:"GET",
            url:"/category/get.action",
            dataType:"json",
            success:function(data){
                $('#selRole').empty();
                $.each(data, function (i, item) {
                    $("#selRole").append("<option value='" + item.id + "'>&nbsp;" + item.name + "</option>");
                });
            }
        })   */
        $("#subdialog").modal("show");
    }

    function ShowInfo() {
        $("#chargeinfo").modal("show");
    }

    function Showpassword(){
        $("#chargepassword").modal("show");
    }

    function Showdel(){
        $("#deldialog").modal("show");
    }

    function Showlinkinfo(){
        $("#linkinfo").modal("show");
    }

    //单表并列查询
  /*  function Showroominfo(){
        var chenked=$('#tb_departments').bootstrapTable('getAllSelections');
        $("#roominfo").modal("show");

        $('#tb_roominfo').bootstrapTable({
            url: '/subscript/subscriptiondtl.action',        //请求后台的URL（*）
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
            queryParams: function queryParams(params) { //设置查询参数
                var param = {
                    id:chenked[0].id
                };
                return param;
            },
            columns: [{
                checkbox: true
            }, {
                field: 'rid',
                title: '房间号码',
                formatter:function (value){
                    if(value!=null){
                        var value_1= "";
                        $.ajax({
                            type:"GET",
                            url:"/room/selectno.action",
                            data:{"id":value},
                            success:function(data){
                                value_1=data;
                                return data;
                            },
                            error:function () {
                            },
                            complete:function()
                            {
                            }
                        });
                        alert("正在查询");
                        return value_1;
                    }
                    else{
                        return "error";
                    }
                }
            }, {
                field: 'rid',
                title: '房间类型',
                formatter:function (value){
                    if(value!=null){
                        var value_2= "";
                        $.ajax({
                            type:"GET",
                            url:"/room/selectcategory.action",
                            data:{"id":value},
                            success:function(data){
                                value_2=data;
                                return value_2;
                            },
                            error:function () {
                            },
                            complete:function()
                            {
                                return value_2;
                            }
                        });
                        alert("正在查询");
                        return value_2;
                    }
                    else{
                        return "error";
                    }
                }
            },{
                field:'residetype',
                title:'入住方式',
                formatter:function (value){
                    if(value!=null){
                        if(value==1){
                            return "单个房间";
                        }
                        else if(value==2){
                            return "整个房间";
                        }
                    }
                    else{
                        return "error";
                    }
                }
            },{
                field:'sdate',
                title:'入住日期',
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
                }
            },{
                field:'edate',
                title:'结束日期',
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
                }
            }]
        });



    }


   */

        //多表查询
    function Showroominfo(){
        var chenked=$('#tb_departments').bootstrapTable('getAllSelections');
        $("#roominfo").modal("show");

        $('#tb_roominfo').bootstrapTable({
            url: '/subscript/getroomanddtl.action',        //请求后台的URL（*）
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
            queryParams: function queryParams(params) { //设置查询参数
                var param = {
                    id:chenked[0].id
                };
                return param;
            },
            columns: [{
                checkbox: true
            }, {
                field: 'no',
                title: '房间号码'
            }, {
                field: 'name',
                title: '房间类型',
            },{
                field:'residetype',
                title:'入住方式',
                formatter:function (value){
                    if(value!=null){
                        if(value==1){
                            return "单个房间";
                        }
                        else if(value==2){
                            return "整个房间";
                        }
                    }
                    else{
                        return "error";
                    }
                }
            },{
                field:'sdate',
                title:'入住日期',
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
                }
            },{
                field:'edate',
                title:'结束日期',
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
                }
            }]
        });



    }


    function Showsubscription(){
        $.ajax({
            type: "GET",
            url: "/category/get.action",
            dataType: "json",
            success: function(data){
                $('#roomtype_1').empty();   //清空selRole里面的所有内容

                $.each(data.data, function (i, item) {
                    $("#roomtype_1").append("<option value='" + item.id + "'>&nbsp;" + item.name + "</option>");
                });
            }
        });

        $("#subscriptioninfo").modal("show");
    }

    function postinfo(){
        var linkman = $.trim($('#linkman').val());
        var phone = $.trim($('#phone').val());
        var email =  $.trim($('#email').val());
            $.ajax({
            type:"POST",
            url:"/subscript/postsubscriptioninfo.action",
            data:{"linkman":linkman,"phone":phone,"email":email},

            success:function(data){
                if(data=="success")
                    alert("预订成功!");
                else
                        alert("预定失败!");
            },
            error:function () {
                alert("请求出错");
            },
            complete:function()
            {
                $("#subdialog").modal("hide");
                $('#tb_departments').bootstrapTable("refresh");
                document.getElementById("form_data").reset();
            }
        });
        return false;
    }

    function postchargeinfo(){
        var oldpassword = $.trim($('#oldpassword').val());
        var newpassword = $.trim($('#newpassword').val());
        var enterpassword =  $.trim($('#enterpassword').val());
        $.ajax({
            type:"POST",
            url:"/login/chargepassword.action",
            data:{"oldpassword":oldpassword,"newpassword":newpassword,"enterpassword":enterpassword},

            success:function(data){
                if(data=="success")
                    alert("修改成功!");
                else
                    alert(data);
            },
            error:function () {
                alert("请求出错");
            },
            complete:function()
            {
                $("#subdialog").modal("hide");
                window.location.href = "membercenter";
                $('#tb_departments').bootstrapTable("refresh");
                document.getElementById("form_data").reset();
            }
        });
        return false;
    }

    function del() {
        var chenked=$('#tb_departments').bootstrapTable('getAllSelections');


        for(var i=0;i<chenked.length;i++){
            $.ajax({
                type: "GET",
                url: "/subscript/delete.action",
                data:{id:chenked[i].id},
                success: function (data) {

                },
                error:function () {
                    alert("请求出错");
                },
                complete:function()
                {
                    $('#deldialog').modal("hide");   //关闭对话框
                    $('#tb_departments').bootstrapTable("refresh");//刷新表格
                }

            })
        }

    }

    function linkinfo(){

    }

    function roominfo(){}


    function postsubscription(){
        var cid = $.trim($('#roomtype_1').val());
        var residetype = $.trim($('#roomtype').val());
        var stime =  $.trim($('#stime').val());
        var etime = $.trim($('#etime').val());
        var chenked = $('#tb_roomnameinfo').bootstrapTable('getAllSelections');
        var chenked_s =  $('#tb_departments').bootstrapTable('getAllSelections');
        $.ajax({
            type:"POST",
            url:"/subscript/postsubdtl.action",
            data:{"rid":chenked[0].id,"sid":chenked_s[0].id,"stime":stime,"etime":etime,"residetype":residetype,"cid":cid},
            success:function(data){
                if(data=="fail")
                    alert("失败!");
                else
                {
                    alert("成功");
                }
            },
            error:function () {
                alert("请求出错");
            },
            complete:function()
            {
                $("#subscriptioninfo").modal("hide");
                $('#tb_roominfo').bootstrapTable("refresh");
                document.getElementById("form_data").reset();
            }
        });
        return false;
    }
    function roomresh(){
        var cid = $.trim($('#roomtype_1').val());
        var residetype = $.trim($('#roomtype').val());
        var stime =  $.trim($('#stime').val());
        var etime = $.trim($('#etime').val());
        alert(cid);
        $('#tb_roomnameinfo').bootstrapTable({
            url: '/room/selectrid.action',        //请求后台的URL（*）
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
            queryParams: function queryParams(params) { //设置查询参数
                var param = {
                    cid:cid,
                    residetype:residetype,
                    stime:stime,
                    etime:etime
                };
                return param;
            },
            columns: [{
                checkbox: true
            }, {
                field:'no',
                title:'房间编号'
            }]
        });
    }

</script>
</html>