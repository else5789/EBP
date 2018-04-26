//Powered by uimix.com;
//date:2013-10-20;
//vivo website function;
/* 代码整理：懒人之家www.lanrenzhijia.com */

var VIVO_UIMIX = {
	i : 0,
	init: function(c) {
		var c = c ? c : VIVO_UIMIX;
		for (var i in c) {if (c[i] && c[i].init) {c[i].init();}}
	},
	html5 : function(){
		var thisBody = document.body || document.documentElement,
	    thisStyle = thisBody.style,
	    support = thisStyle.transition !== undefined || thisStyle.WebkitTransition !== undefined || thisStyle.MozTransition !== undefined || thisStyle.MsTransition !== undefined || thisStyle.OTransition !== undefined;
		if(support!==undefined) {return true}else{return false}
	},
	scroll : function(n,speed){
		$("body,html").stop().animate({scrollTop:n},speed);
	},
	browser : function(n){
		var e = window.navigator.userAgent,
		b="",ie=0;
		if (e.indexOf("MSIE") >= 0){
			b="ie";
			if(e.indexOf("MSIE 6.0")>0) ie=6;
			if(e.indexOf("MSIE 7.0")>0) ie=7;
			if(e.indexOf("MSIE 8.0")>0) ie=8;
			if(e.indexOf("MSIE 9.0")>0) ie=9;
			if(e.indexOf("MSIE 10.0")>0) ie=10;
			if(e.indexOf("MSIE 11.0")>0) ie=11;
			if(e.indexOf("MSIE 12.0")>0) ie=12;
		}
		else if (e.indexOf("Firefox") >= 0) {b="firefox"}
		else if(e.indexOf("Chrome") >= 0){b="chrome"}
		else if(e.indexOf("Opera") >= 0){b="opera"}
		else if(e.indexOf("Safari") >= 0){b="safari"}
		if(n){
			if(b=="ie"){return ie}else{return b}
		}else{return b}
	},
	iepng : function(){
		
		if(VIVO_UIMIX.browser(1)==6){
			for(var j=0; j<document.images.length; j++)
			{
				var img = document.images[j];
				var imgName = img.src.toUpperCase();
				if (imgName.substring(imgName.length-3, imgName.length) == "PNG")
				{
				 var imgID = (img.id) ? "id='" + img.id + "' " : "";
				 var imgClass = (img.className) ? "class='" + img.className + "' " : "";
				 var imgTitle = (img.title) ? "title='" + img.title + "' " : "title='" + img.alt + "' ";
				 var imgAlt = (img.alt) ? "alt='" + img.alt + "' " : "alt='" + img.title + "' ";
				 var imgStyle = "display:inline-block;" + img.style.cssText;
				 if (img.align == "left") imgStyle = "float:left;" + imgStyle;
				 if (img.align == "right") imgStyle = "float:right;" + imgStyle;
				 if (img.parentElement.href) imgStyle = "cursor:hand;" + imgStyle;
				 var strNewHTML = "<i " + imgID + imgClass + imgTitle +  " style=\"" + "width:" + img.width + "px; height:" + img.height + "px;" + imgStyle + ";filter:progid:DXImageTransform.Microsoft.AlphaImageLoader(src=\'" + img.src + "\', sizingMethod='scale');\"></i>";
				 img.outerHTML = strNewHTML;
				 j = j-1;
				}
			}
		}
	},
	pageLoading : function(p){
		if(!VIVO_UIMIX.html5() || !$("body").hasClass("load")){
			if(p && p.run) p.run();
			return;
		}
		var imgAll=[],
		imgTotal=curload=retried=per=0,
		imgcomplete = function(){
			per=parseInt(curload * 100.0 / imgTotal + 0.5);
			if(curload>=imgTotal){
				$("body").addClass("loaded").removeClass("load");
				if(p && p.run) p.run();
				return;
			}

			var imgurl=new Image();
			$(imgurl).load(function(){
				curload++;
				retried=0;
				setTimeout(imgcomplete,1);
			}).error(function(){
				retried++;
				if(retried<3){
					imgcomplete();
				}else{
					curload++;
					retried=0;
					setTimeout(imgcomplete,1);
				}
			});
			imgurl.src=imgAll[curload];
		};

		var s=0
		for(var j=0; j<document.images.length; j++){
			var imgEle=document.images[j];
			if(imgEle.src){
				imgAll.push(imgEle.src);
			}
		}
		imgTotal=imgAll.length;
		imgcomplete();
	},
	fullscreen : function(obj,t){
		if(!obj){return}
		var o= null || obj,
		el = document.documentElement,cl=document,rfs =el.requestFullScreen || el.webkitRequestFullScreen || el.mozRequestFullScreen,cfs =cl.cancelFullScreen || cl.webkitCancelFullScreen || cl.mozCancelFullScreen;
		if(t){o.toggle(function(){rfs.call(el);t.text("退出");return false;},function(){cfs.call(cl);t.text("全屏");return false;});}else{o.on("dblclick", function() {rfs.call(el);return false;});}
	},
	gotop : function(){
		if($("#vivo-airbox").size()<=0) $("body").append("<div id='vivo-airbox'></div>");
		$("#vivo-airbox").prepend("<div id='gotop' style='display:none;'><a href='#' title='返回顶部'></a></div>");
		var gotop=$("#gotop");

		gotop.on({
			click : function(){
				VIVO_UIMIX.scroll(0,600);
				return false;
			},
			mouseenter : function(){
				if(VIVO_UIMIX.browser(1)<9){
					$(this).css({backgroundPosition:"0 -50px"});
				}
			},
			mouseleave : function(){
				if(VIVO_UIMIX.browser(1)<9){
					$(this).css({backgroundPosition:"0 0"});
				}
			}
		},"a").appendTo();

		if(VIVO_UIMIX.browser()!="ie" || VIVO_UIMIX.browser(1)>9){
			gotop.find("a").css({backgroundPosition:"0 -100px"});
		}

		$(window).on({
			scroll : function(){
				var curtop=$(this).scrollTop(),
				setH=$(this).height(),
				fixH=setH-100;

				if(curtop>500){
					if(gotop.hasClass("active")) return;
					gotop.addClass("active").css({display:"block",opacity:0}).stop().animate({opacity:1,top:fixH},200);
				}else{
					gotop.removeClass("active").stop().animate({opacity:0,top:setH},300,function(){
						$(this).css({display:"none"});
					});
				}
			},
			resize : function(){
				gotop.css({top:$(this).height()});
			}
		}).scroll().resize();
	},
	video : function(url){
		if(typeof(swfobject)=="undefined"){
			alert("swfobject未加载!");
			return false;
		}
		if(url=="" || url=="#") return false;
		
		var w=h=0,resourseURL='',urlArr=[];
		if($("#video_layer").size()<=0){
			$("#vivo-wrap").append('<div id="video_layer" style="display:none;"><div class="video-obox"><a class="close"></a><div class="videoo"><span id="video_place"></span></div></div></div>');
		}

		if(url.indexOf("#")!= -1){
			urlArr=url.split("#");
			resourseURL=urlArr[0];
			w=parseInt(urlArr[1]);
			h=parseInt(urlArr[2]);
		}else{
			resourseURL=url;
			w=680;
			h=408;
		}

		var flashvars = {
			MM_ComponentVersion : 1,
			streamName : resourseURL,
			skinName : "Clear_Skin_1",
			autoPlay :　true,
			autoRewind : false
		},
		videoBox=$("#video_layer"),
		videoShow=videoBox.find(".video-obox"),
		closeBtn=videoBox.find("a.close");

		closeBtn.click(function(){
			videoBox.stop().animate({opacity:0},300,function(){
				$(this).css({display:"none"});
			});
			return false;
		});

		videoBox.css({display:"block",opacity:0}).stop().animate({opacity:1},500);
		videoShow.stop().delay(300).animate({width:w+20,height:h+20,marginLeft:-(w+20)/2,marginTop:-(h+20)/2},200,function(){
			if(videoShow.find("span#video_place").size()<=0) videoShow.find(".videoo").html("<span id='video_place'></span>");
			swfobject.embedSWF("script/flvplayer.swf", "video_place", w, h, "9.0.0","expressInstall.swf",flashvars,{wmode:"transparent"},null);
		});

		var r=function(){
			videoBox.css({height:$(window).height()});
		};
		$(window).on("resize",r).resize();
	}
};

// PC official website

VIVO_UIMIX.main = {
	init : function(){
		VIVO_UIMIX.init(VIVO_UIMIX.main);
		// VIVO_UIMIX.main.fixcontain();
		VIVO_UIMIX.iepng();
		if(VIVO_UIMIX.browser(1)==6){setTimeout(function(){$("[href]").focus(function() {this.blur()})},1000)}
		jQuery.easing.def="easeOutCubic";
		$("img").mousedown(function(e){return false});
	},
	fixcontain: function(){
		if($("#vivo-contain").size()<=0) return;
		$(window).resize(function(){
			var wh=$(this).height(),vw=$("#vivo-wrap"),ct=$("#vivo-contain"),hd=$("#vivo-head"),fd=$("#vivo-foot");
			if(wh<vw.height()) return;
			ct.css({height:wh-hd.height()-fd.height()});
		}).resize();
	}
};





$(document).ready(function() {VIVO_UIMIX.init()});
