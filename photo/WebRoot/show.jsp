<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<title>显示图片</title>
	<meta charse="UTF-8>">
	<link rel="stylesheet" href="css/jquery.zySlide.css">
	<link rel="stylesheet" href="css/j.css">
	<script src="js/jquery.min.js"></script>
	<script src="js/jquery.zySlide.js"></script>
	<script src="js/index.js"></script>
	<style type="text/css">
		*{
			padding:0;
			margin:0;
		}

		html,body{
			height:100%;
		}
         
        .toprow{
        	width:100%;
        	height:70px;
        	background-color:#1a2855;
        } 

        .toprow-ul{
        	list-style-type:none;
        }

        .toprow-list{
        	display:inline-block;
        	margin:25px 0px 10px 340px;设置两个a标签在div中的距离*/
        }


        a:link,a:visited{
        	font-weight:bold;
        	color:#ffff;
        	background-color:#1a2855;
        	text-align:center;
        	padding:6px;
        	text-decoration:none;
        	text-transform:uppercase;
        }

        a:hover,a:active{
        	color:#F7BB07;
        }

		.wrap{
			display:inline-block;
			float:left;
			width:260px;
			height:100%;
			background-color:#1a2855;
			margin-top:-4.7%;
			background-image:url("img/starsky.png");
			background-size:cover;
			background-repeat: no-repeat;			
		}
		
		
		.photoname{
		    margin-top:200px;		    
		}
       
       .photoname p{
           margin-bottom:15px;
       }
       
		.nav{
			width:250px;
			margin:0px 5px 0;			
		}

		.nav-list h2{
			position:relative;
			width:250px;
            height:50px;
            background-color:#3889a4;
            line-height:50px;
            text-align:center;
            font-size:15px;
            color:#fff;
            transition:0.7s;
		}

		.nav-list h2.on{
			background-color:#393c4a;
		}

		.nav-list{
			margin-bottom:5px;
		}

		.nav-list i{
			position:absolute;/*就h2元素为参照进行定位*/
			right:10px;/*离右边界0像素*/
			top:17px;/*离上边界的0像素*/
			border:8px solid transparent;/*transparent设定只显示一条边，其他边隐藏*/
			border-left-color:#ffff;/*设置显示左边的边*/
			/*如果用了这句script部分//注释那部分一起用transform:rotate(0deg);/*旋转90*/
			transform-origin:1px 8px;/*旋转基点*/
			transition:0.7s;
		}

		.nav-list i.on{/*给v-list i起了一个类名，类里面有语句*/
			transform:rotate(90deg);
		}

		.hide{
			overflow:hidden;/*把超出的部分隐藏*/
			/*height:0;/*设置hide的高度为0*/
			transition:0.7s;/*hide内容区的流畅展示效果*/
		}

		#btn1,#btn2,#btn3{
			padding:10px 0;
			background-color:#282c3a;
			text-align:center;
			color:#ffff;
			border-bottom:1px solid #42495d;
		}

		.leftrow{
			display:inline-block;
			float:right;
			width:230px;
			height:600px;
			/*background-color:#CB804DFF;*/
			background-image:url("img/starsky.png");
			background-size:cover;
			background-repeat: no-repeat;
			padding:0px;
			margin-top:-46.9%;
			margin-right：0px;			
		}

		.detailed{
			margin-left:20px;
			padding:3px;
			margin-top:0px;
			color:#ffff;
			font-family:楷体;
			text-align:left;
			line-height:45px;
		}
		
		body{
	    	margin:0;
	    }

	    .mostoutside{
	    	width:60%;
	    	
	    	margin:20px auto 0 auto;
	    	background-color:#627C3FFF;
	    }

         /*三大div*/
	    .msg{

            display:flex;/*弹性盒模型,子元素在父元素内必须要沿着主轴排列 代码1*/
            justify-content:space-between; /*代码2只有在代码一存在的情况下就能实现，设置弹性盒模型的子元素在父元素的主轴上如何拍列*/
	    	width:100%;
	    	height:300px;
	    	background-color:#627C3FFF;
	    	margin:1px auto 10px auto;/*外边距*/
	    }
        
        /*一行div里面的三小部分之一*/
	    .msglist{
	    	width:30%;
	    	height:100%;
	    	background-color:#46a6d9;
	    	perspective:1000px;/*3d坐标系的z轴值*/
	    }

	    .msglist:hover .listpic{
	    	transform:rotateY(-90deg);
	    }

	    .msglist:hover .listtext{
	    	transform:rotateY(0deg);	    	
	    }

        /*照片展示*/
	    .listpic{
	    	position:absolute;/*绝对定位*/
	    	width:100%;
	    	height:100%;
	    	/*background-color:#34ad53;*/
	    	transition:1s;/*过渡：设置一个元素在样式发生变化的时候，变化的时间长度*/
	    }
       
        /*文字展示*/
	     .listtext{
	     	position:absolute;/*绝对定位*/
	     	display:flex;/*弹性盒模型 代码1*/
	     	align-items:center;/*代码2 当且仅当有代码1时才能执行，用于设置弹性盒模型搞得子元素在父元素的交叉轴上如何排列,此处为居中对齐*/
	    	width:100%;
	    	height:100%;
	    	background-color:rgba(0,0,0,0.7);/*rgba,透30%的光*/
	    	transform:rotateY(90deg);/*变化:角度轴(角度值)*/
	    	transition:1s;/*过渡：设置一个元素在样式发生变化的时候，变化的时间长度*/*/
	    }

	    p{
	    	margin:0;
	    	text-align:center;
	    	color:#ffffff;/*文字颜色*/
	    }

	    .img{
	    	width:100%;
	    	height:100%;
	    }
	    
	   
    
    
		@font-face
        {
        	font-family:"iconfont";
        	src:url("Icon/font_951450_l45nyv3gvbg/iconfont.eot");
        	src:url("Icon/font_951450_l45nyv3gvbg/iconfont.eot?#iefix") format("embedded-opentype"),
        	url("Icon/font_951450_l45nyv3gvbg/iconfont.woff") format("woff"),
        	url("Icon/font_951450_l45nyv3gvbg/iconfont.ttf") format("truetype"),
        	url("Icon/font_951450_l45nyv3gvbg/iconfont.svg") format("svg");
        	font-weight:normal;
        	font-style:normal;

        }


        .iconfont{
        	font-family:"iconfont";
        	font-style:normal;
        	font-weight:normal;
        	-webkit-font-smoothing:antialiased;
        	-moz-osx-font-smoothing:grayscale;
        }
    
  	
	
	</style>
</head>
<body>
	<div class="toprow">
		<ul class="toprow-ul">
		<li class="toprow-list"><a href="main.jsp"><i class="iconfont">&#xe619;</i> 回到首页</a></li>
		<li class="toprow-list"><a href="main.jsp"><i class="iconfont">&#xe613;</i>上传</a></li>
		<li class="toprow-list"><a href="main.jsp"><i class="iconfont">&#xe612;</i>退出登录</a></li>
		</ul>
	</div>


	<div class="wrap">

		<div class="nav">
		
			<ul>
				<li class="nav-list">
					<h2>
						<i></i>
					     照片显示方式
					</h2>
					<div class="hide">		
						<button id="btn1">3D轮播显示</button>
						<button id="btn2">3D翻书显示</button>
						<button id="btn3">静&nbsp;&nbsp;态&nbsp;&nbsp;显&nbsp;&nbsp;示</button>						
					</div>
				</li>

			</ul>
		</div>
		
		
		<div class="photoname">
		    <p>童年印记</p>
		    <p>当前登录用户:&nbsp;Doctor Chen</p>
		    <p>上传者:&nbsp;Doctor Chen</p>
		    <p>上传时间:&nbsp;2018.12.03</p>
		    <p>最新上传:&nbsp;暂无</p>		
		</div>
			
	</div>
	
	
	
	<div class="banner">
	
		<div id="Slide1" class="zy-Slide">
			<section><</section>
			<section>></section>
				<ul>
					<li><img src="img/1.jpg" /></li>
					<li><img src="img/2.jpg" /></li>
					<li><img src="img/3.jpg" /></li>
					<li><img src="img/4.jpg" /></li>
					<li><img src="img/5.jpg" /></li>
					<li><img src="img/6.jpg" /></li>
					<li><img src="img/main2.jpg" /></li>
				</ul>
		</div>
		<script src="js/jquery.min.js"></script>
		<script src="js/jquery.zySlide.js"></script>
		<script src="js/index.js"></script>
		
		
		<div id="Slide3" class="zy-Slide3">
			<ul>
				<li class="yi"><img id="i1" src="img/1.jpg"></li>
				<li class="er"><img id="i2" src="img/2.jpg"></li>
				<li class="san"><img id="i3" src="img/3.jpg"></li>
				<li class="sii"><img id="i4" src="img/4.jpg"></li>
				<li class="wu"><img id="i5" src="img/24.PNG"></li>
				<li class="liu"><img id="i6" src="img/22 (2).jpg"></li>
				<li class="qi"><img id="i7" src="img/22 (1).jpg"></li>
			</ul>
			<div id="outerdiv" style="position:fixed;top:0;left:0;background:rgba(0,0,0,0.7);z-index:2000;width:100%;height:100%;display:none;">
				<div id="innerdiv" style="position:absolute;width: 200%;height:200%;margin:10% 28%;">
					<img id="bigimg" style="border:5px solid #fff;width: 600px;;height:400px;" src="" />
				</div>
			</div>  
		</div>
		<script src="js/jquery.min.js"></script>
		<script>		
		$(function(){
			$("#i1").click(function(){
		         var _this = $(this);//将当前的pimg元素作为_this传入函数  
		         imgShow("#outerdiv", "#innerdiv", "#bigimg", _this);  
		       });  
		    $("#i2").click(function(){
		         var _this = $(this);//将当前的pimg元素作为_this传入函数  
		         imgShow("#outerdiv", "#innerdiv", "#bigimg", _this);  
		       });  
		 	$("#i3").click(function(){
		     	var _this = $(this);//将当前的pimg元素作为_this传入函数  
		     	imgShow("#outerdiv", "#innerdiv", "#bigimg", _this);  
		   		});  
		   	$("#i4").click(function(){
		     	var _this = $(this);//将当前的pimg元素作为_this传入函数  
		     	imgShow("#outerdiv", "#innerdiv", "#bigimg", _this);  
		   		});   
			$("#i5").click(function(){
		        var _this = $(this);//将当前的pimg元素作为_this传入函数  
		        imgShow("#outerdiv", "#innerdiv", "#bigimg", _this);  
		      	});  
		    $("#i6").click(function(){
		        var _this = $(this);//将当前的pimg元素作为_this传入函数  
		        imgShow("#outerdiv", "#innerdiv", "#bigimg", _this);  
		      	});  
			$("#i7").click(function(){
		        var _this = $(this);//将当前的pimg元素作为_this传入函数  
		        imgShow("#outerdiv", "#innerdiv", "#bigimg", _this);  
		      	});  
			}); 
		    
		  	function imgShow(outerdiv, innerdiv, bigimg, _this){
		  		var src = _this.attr("src");//获取当前点击的pimg元素中的src属性  
			    $('#outerdiv').attr('display','block');
			    $(bigimg).attr("src", src);//设置#bigimg元素的src属性  
		        $(outerdiv).fadeIn("fast");	       
		     	$(outerdiv).click(function(){//再次点击淡出消失弹出层  
		        $(this).fadeOut("fast");  
		     });  
		 	}
		 	$('#Slide3').hide(); 
		</script>
		
			
		<div id="Slide2" class="zy-Slide2">
			
		<!--第一行大div-->
		<div class="msg">

		<div class="msglist">
			<div class="listpic">
				<img class="img" src="img/21 (3).jpg">
			</div>
			<div class="listtext">
				<p>Lorem ipsum dolor sit amet,consectetur adipiscing elit.Vivamus vitae libero orci.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc sed vestibulum.</p>
			</div>
		</div>


		<div class="msglist">
			<div class="listpic">
				<img class="img" src="img/21 (1).jpg">
			</div>
			<div class="listtext">
				<p>Lorem ipsum dolor sit amet,consectetur adipiscing elit.Vivamus vitae libero orci.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc sed vestibulum.</p>
			</div>
		</div>



		<div class="msglist">
			<div class="listpic">
				<img class="img" src="img/21 (2).jpg">
			</div>
			<div class="listtext">
				<p>Lorem ipsum dolor sit amet,consectetur adipiscing elit.Vivamus vitae libero orci.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc sed vestibulum.</p>
			</div>
		</div>

	</div>


     <!--第二行大div-->
     <div class="msg">

		<div class="msglist">
			<div class="listpic">
				<img class="img" src="img/15.jpg">
			</div>
			<div class="listtext">
				<p>Lorem ipsum dolor sit amet,consectetur adipiscing elit.Vivamus vitae libero orci.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc sed vestibulum.</p>
			</div>
		</div>


		<div class="msglist">
			<div class="listpic">
				<img class="img" src="img/16.jpg">
			</div>
			<div class="listtext">
				<p>Lorem ipsum dolor sit amet,consectetur adipiscing elit.Vivamus vitae libero orci.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc sed vestibulum.</p>
			</div>
		</div>



		<div class="msglist">
			<div class="listpic">
				<img class="img" src="img/17.jpg">
			</div>
			<div class="listtext">
				<p>Lorem ipsum dolor sit amet,consectetur adipiscing elit.Vivamus vitae libero orci.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc sed vestibulum.</p>
			</div>
		</div>

	</div>
</div>
			 
		<script>
		   $('#Slide2').hide();
		</script>
		
			
	</div>
	

	    <div class="leftrow">

	    	    <div class="detailed">
	    	            <h3>相片名:IMG</h3>
	    	            <h3>上传时间:2018.11.26</h3>
	    	            <h3>上传地点:广东肇庆</h3>
	    	            <h3>宽度:2340px</h3>
	    	            <h3>高度:4160px</h3>
	    	            <h3>相片大小:2.6 MB</h3>
	    	            <h3>闪光灯:未使用闪光灯</h3>
	    	            <h3>焦距:3.66 mm</h3>
	    	            <h3>光圈：2.2</h3>
	    	            <h3>曝光时间:1/838</h3>
	    	            <h3>ISO:100</h3>
	    	            <h3>路径:某相册</h3>
	            </div>

	    </div>


	<script>
		//1怎么获取这个元素2怎么点击3设置hide变量高度4改变图标变换角度 点击完成颜色变化5点击其他的时候上一个缩回去（记录上一次点击的是谁）6点击自己收缩伸展(先判断自己是不是被点击了)
		//这是自己的功能模块
		(function(){

			var aList=document.querySelectorAll('.nav-list h2'),
			    aHide=document.querySelectorAll('.hide'),
			    aIcon=document.querySelectorAll('.nav-list i'),
			    lastIndex=0;//保存上一次的下标//获取元素的方法
			    console.log(aHide[0].clientHeight);


			for(var i=0;i<aList.length;i++){

	                aList[i].index=i;//自定义属性保存下标
				    aList[i].isClick=false;//定义是否被点击了，设置此处为开关
				    aList[i].initHeight=aHide[i].clientHeight;
				    aHide[i].style.height='0';
				    aList[i].onclick=function(){//点击事件->执行函数

				    //1、aHide[lastIndex].style.height='0';
					//2、aIcon[lastIndex].className='';
					//3、aList[lastIndex].className='';

				if(this.isClick==true){//如果自己被点击了就清除当前的样式
				    aHide[this.index].style.height='0';//这句和下面三句的this.index也可以写成lastIndex，此时这三句和else下面的1、2、3、三句一样，此时可以把这三句从if和else中 删除,提到if上面,if中只留下这句aList[this.index].isClick=false;效果一样，只是更加优化了.
				    aIcon[this.index].className='';
				    aList[this.index].className='';
				    aList[this.index].isClick=false;

				}
					//设置当前样式
					//清除上一次的样式
				else{
					aHide[lastIndex].style.height='0';//1、
					aIcon[lastIndex].className='';//2、
					aList[lastIndex].className='';//3、
					console.log('我点击了',this,i);
					aHide[this.index].style.height=this.initHeight+'px';//设置高度
					//aIcon[this.index].style.transform="rotate(90deg)";//设置图标旋转的样式
					aIcon[this.index].className='on';//给了这个aIcon的类名然后会自动执行类的内容
					//aList[this.index].style.backgroundColor='#393c4a';
					aList[this.index].className='on';//aList的on类
					aList[lastIndex].isClick=false;//2）上一次的样式被清除之后要清除上一次的开关
					aList[this.index].isClick=true;//1）设置这次点击的开关为开的状态 
					lastIndex=this.index;//完成了一次后把这次的小标变成上一次
					}				
				}
			}
    

		})();
		
		
		
		
		
		var btn1 = document.getElementById("btn1");
		var btn2 = document.getElementById("btn2");
		var btn3 = document.getElementById("btn3");

		btn1.onclick = function() {
		document.getElementById('Slide1').style.display = "block";
		document.getElementById('Slide2').style.display = "none";
		document.getElementById('Slide3').style.display = "none";
		};
		btn2.onclick = function() {
		document.getElementById('Slide2').style.display = "block";
		document.getElementById('Slide1').style.display = "none";
		document.getElementById('Slide3').style.display = "none";
		};
		btn3.onclick = function() {
		document.getElementById('Slide3').style.display ="block";
		document.getElementById('Slide1').style.display = "none";
		document.getElementById('Slide2').style.display = "none";
		};		
		
		</script>
		
    
</body>
</html>
