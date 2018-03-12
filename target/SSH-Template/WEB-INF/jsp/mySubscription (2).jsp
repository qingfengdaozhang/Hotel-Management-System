<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>最近预订信息</title>
   <link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap.min.css">
  <script type="text/javascript" src="bootstrap/jquery-3.2.1.min.js"></script>
  <script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>
	<style type="text/css">
	/*背景图*/
	  body{
	  	background-image: url(sucai/beijing.png);
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
        	width:1025px;height:500px;padding:5px;
        	filter: alpha(opacity=60);background-color:rgba(255, 255, 255, 0.5)
        }
        /*内容*/
        .title1{
           position: relative;
          margin-top: 30px;
          left:43%;
          color: #8A6538;
          font-family:微软雅黑;
          font-weight: bold;
          font-size: 24px;
        }
        #table1{
           position: relative;
           right: 0px;
           float: right;
           top: 20px;
           filter: alpha(opacity=60);background-color:rgba(255, 255, 255, 0.5);
        }
        table
       {
           border-collapse:collapse;
           width:100%;
       }

       table,th, td
       {
           border: 1px solid white;
            height:50px;
       }
    </style>
</head>
<body>
	
	<!--导航-->
	<div class="nav">
	  <div class="topbar">
	  	<img src="sucai/logo.png" class="logo">
        <div class="topbody"> 
           <a class="title" href="">腾达宾馆</a>
            <ul class="toplist">
             <li><a href="">首页</a></li>
             <li><a href="">设施与价格</a></li>
             <li><a href="">会员中心</a></li>
             <li><a href="">帮助</a></li>
             <li><a href="">登陆</a></li>             
             <li><a href="">注册</a></li>             
            </ul>
       </div>
    </div>
  </div>
	<!--内容-->
	<div class="content">
	   <div class="div-b">
	   	   <div class="title1">
            房间价格及设施
         </div>
         <div>
           <table id="table1">
             <tr>
               <td style="text-align:center;vertical-align:center;font-weight:bold; font-family: 微软雅黑" >创建时间</td>
               <td style="text-align:center;vertical-align:center;font-weight:bold; font-family: 微软雅黑">订单号</td>
               <td style="text-align:center;vertical-align:center;font-weight:bold; font-family: 微软雅黑">联系人</td>
               <td style="text-align:center;vertical-align:center;font-weight:bold; font-family: 微软雅黑">联系电话</td>
               <td style="text-align:center;vertical-align:center;font-weight:bold; font-family: 微软雅黑">电子邮件</td>
               <td style="text-align:center;vertical-align:center;font-weight:bold; font-family: 微软雅黑">状态</td>
               <td style="text-align:center;vertical-align:center;font-weight:bold; font-family: 微软雅黑">操作</td>
             </tr>
             <tr>
               <td  style="text-align:center;vertical-align:center;font-family: 微软雅黑">2009-09-08 12:30</td>
               <td  style="text-align:center;vertical-align:center;font-family: 微软雅黑">2009100512</td>
               <td  style="text-align:center;vertical-align:center;font-family: 微软雅黑">刘新福</td>
               <td  style="text-align:center;vertical-align:center; font-family: 微软雅黑">13426330776</td>
               <td  style="text-align:center;vertical-align:center;font-family: 微软雅黑">javamedia@live.cn</td>
               <td  style="text-align:center;vertical-align:center;font-family: 微软雅黑">待确认</td>
               <td  style="text-align:center;vertical-align:center;font-family: 微软雅黑">
                   <button type="button" class="btn btn btn-danger">删除</button>
                   <button type="button" class="btn btn btn-primary">修改</button>
                   <button type="button" class="btn btn btn btn-info">明细管理</button>
               </td>
             </tr>
             <tr>
               <td  style="text-align:center;vertical-align:center;font-family: 微软雅黑">2009-09-08 12:30</td>
               <td  style="text-align:center;vertical-align:center;font-family: 微软雅黑">2009100512</td>
               <td  style="text-align:center;vertical-align:center;font-family: 微软雅黑">刘新福</td>
               <td  style="text-align:center;vertical-align:center; font-family: 微软雅黑">13426330776</td>
               <td  style="text-align:center;vertical-align:center;font-family: 微软雅黑">javamedia@live.cn</td>
               <td  style="text-align:center;vertical-align:center;font-family: 微软雅黑">已确认</td>
               <td  style="text-align:center;vertical-align:center;font-family: 微软雅黑">
      
               </td>
             </tr>
           </table>
         </div>
   </div>
 </div>

</body>
</html>