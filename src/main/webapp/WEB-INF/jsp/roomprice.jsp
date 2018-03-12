<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>roomprice</title>
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
	   	   <div class="title1">
            房间价格及设施
         </div>
         <div>
           <table id="table1">
             <tr>
               <td width="120px"; style="text-align:center;vertical-align:center;font-weight:bold; font-family: 微软雅黑" rowspan="2">客房类型</td>
               <td colspan="2"; width="120px"; style="text-align:center;vertical-align:center;font-weight:bold; font-family: 微软雅黑">价格</td>
               <td rowspan="2" style="text-align:center;vertical-align:center;font-weight:bold; font-family: 微软雅黑">房间概况</td>
             </tr>
             <tr>
               <td width="120px"; style="text-align:center;vertical-align:center;font-family: 微软雅黑">床位价格</td>
               <td  width="120px"; style="text-align:center;vertical-align:center;font-family: 微软雅黑">整间价格</td>
             </tr>
             <tr>
               <td width="120px";  style="text-align:center;vertical-align:center;font-family: 微软雅黑">普通双人间</td>
               <td  width="120px"; style="text-align:center;vertical-align:center;font-family: 微软雅黑">50</td>
               <td width="120px"; style="text-align:center;vertical-align:center;font-family: 微软雅黑">80</td>
               <td style="text-align:center;vertical-align:center; font-family: 微软雅黑">房间面积：20平米。配有单人床两个、市话、长途服务、独立卫生间、淋浴、24小时热水、电视、空调。</td>
             </tr>
             <tr>
               <td width="120px";  style="text-align:center;vertical-align:center;font-family: 微软雅黑">舒适双人间</td>
               <td  width="120px"; style="text-align:center;vertical-align:center;font-family: 微软雅黑">100</td>
               <td width="120px"; style="text-align:center;vertical-align:center;font-family: 微软雅黑">160</td>
               <td style="text-align:center;vertical-align:center; font-family: 微软雅黑">房间面积：30平米。配有双人人床一个、市话、长途服务、独立卫生间、淋浴、24小时热水、电视、空调。</td>
             </tr>
             <tr>
               <td width="120px";  style="text-align:center;vertical-align:center;font-family: 微软雅黑">豪华双人间</td>
               <td  width="120px";  style="text-align:center;vertical-align:center;font-family: 微软雅黑">150</td>
               <td width="120px";  style="text-align:center;vertical-align:center;font-family: 微软雅黑">260</td>
               <td style="text-align:center;vertical-align:center; font-family: 微软雅黑">房间面积：40平米。配有单人床两个、市话、长途服务、独立卫生间、淋浴、24小时热水、电视、空调。</td>
             </tr>
           </table>
         </div>
   </div>
 </div>

</body>
</html>