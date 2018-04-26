//Powered by uimix.com;
//date:2013-10-20;
//vivo website function;
/* 代码整理：懒人之家www.lanrenzhijia.com */

VIVO_UIMIX.main.high = {
	data: {
		stages: [],
		current: -1,
		next: -1,
		delay_timeout: 800,
		delay_hander: false,
		auto_play_handler: false,
		auto_play_timeout: 9000
	},

	next: function() {
		VIVO_UIMIX.main.high.data.delay_hander = false;
		if (VIVO_UIMIX.main.high.data.current == VIVO_UIMIX.main.high.data.next) {
			return;
		}
		if (VIVO_UIMIX.main.high.data.current >= 0) {
			VIVO_UIMIX.main.high.data.stages[VIVO_UIMIX.main.high.data.current].outStage(VIVO_UIMIX.main.high.data.stages[VIVO_UIMIX.main.high.data.next].inStage);
		} else {
			VIVO_UIMIX.main.high.data.stages[VIVO_UIMIX.main.high.data.next].inStage();
		}
		VIVO_UIMIX.main.high.data.current = VIVO_UIMIX.main.high.data.next;
	},

	autoplay: function(enable) {
		if (VIVO_UIMIX.main.high.data.auto_play_handler) {
			clearInterval(VIVO_UIMIX.main.high.data.auto_play_handler);
			VIVO_UIMIX.main.high.data.auto_play_handler = false;
		}
		if (enable) {
			VIVO_UIMIX.main.high.data.auto_play_handler = setInterval(function() {
				var ls = $("#vivo-contain .focus-gallery .switch-high a");
				var index = $("#vivo-contain .focus-gallery .switch-high a.current").index();
				ls.eq(index).removeClass('current');
				var next = (index + 1) % ls.size();
				ls.eq(next).addClass('current');
				VIVO_UIMIX.main.high.switchTo(next, true);
			}, VIVO_UIMIX.main.high.data.auto_play_timeout);
		}
	},

	switchTo: function(index, force) {
		if (VIVO_UIMIX.main.high.data.delay_hander) {
			clearTimeout(VIVO_UIMIX.main.high.data.delay_hander);
		}
		VIVO_UIMIX.main.high.data.next = index;
		if (force) {
			VIVO_UIMIX.main.high.next();
		} else {
			VIVO_UIMIX.main.high.data.delay_hander = setTimeout(VIVO_UIMIX.main.high.next, VIVO_UIMIX.main.high.data.delay_timeout);
		}
	},

	init : function(){
		var highBox=$("#vivo-contain .focus-gallery"),
		sildeBox=highBox.find("ul li"),
		totalHigh=sildeBox.size(),
		switchHigh=highBox.find(".switch-high"),
		curHigh=oldHigh=0,
		delay=8000,
		t=null,
		isPlay=false;

		if(!$("body").hasClass("home")) return;

		var html = '';
		for(var i=0; i<totalHigh; i++){
			html+="<a><b></b></a>";
		}
		switchHigh.append(html);

		sildeBox.each(function(i,j){
			$(j).css({opacity:0,zIndex:1,display:"none"});
		});

		VIVO_UIMIX.main.high.data.stages = [
			VIVO_UIMIX.main.high.x5,
			VIVO_UIMIX.main.high.enjoyevent,
			VIVO_UIMIX.main.high.xshotnew,
			VIVO_UIMIX.main.high.imageSearch3,
			VIVO_UIMIX.main.high.x3v
		];

		for (var i in VIVO_UIMIX.main.high.data.stages) {
			VIVO_UIMIX.main.high.data.stages[i].init();
		}

		switchHigh.on({
			mouseenter : function(){
				VIVO_UIMIX.main.high.autoplay(false);
			},
			mouseleave : function(){
				VIVO_UIMIX.main.high.autoplay(true);
			},
			click : function(){
				if($(this).hasClass("current")) return;
				$(this).addClass("current").siblings('.current').removeClass("current");
				VIVO_UIMIX.main.high.switchTo($(this).index());
				return false;
			}
		},"a").find("a").first().addClass("current");
		VIVO_UIMIX.main.high.switchTo(0, true);
		VIVO_UIMIX.main.high.autoplay(true);
	},


	x5 : {
		timehandle : false,
		stop: function() {
			if(VIVO_UIMIX.main.high.x5.timehandle){
				clearTimeout(VIVO_UIMIX.main.high.x5.timehandle);
				VIVO_UIMIX.main.high.x5.timehandle=false;
			}
		},
		init : function(){
			var ebox=$(".high-x5");
			ebox.removeClass("instage").addClass("outstage");
		},
		inStage : function(){
			VIVO_UIMIX.main.high.x5.stop();
			var ebox=$(".high-x5");

			ebox.css({zIndex:10,display:"block"}).animate({opacity:1},800, function() {
				ebox.siblings().css({zIndex:1});
				ebox.removeClass("outstage").addClass("instage");
			});
			
		},
		outStage: function(cb) {
			VIVO_UIMIX.main.high.x5.stop();
			var ebox=$(".high-x5");

			setTimeout(function(){
				ebox.animate({opacity:0},800);
				ebox.removeClass("instage").addClass("outstage");
				if (cb) cb();
			},1);
			
		}
	},


	imageSearch3 : {
		timehandle : false,
		stop: function() {
			if(VIVO_UIMIX.main.high.imageSearch3.timehandle){
				clearTimeout(VIVO_UIMIX.main.high.imageSearch3.timehandle);
				VIVO_UIMIX.main.high.imageSearch3.timehandle=false;
			}
		},
		init : function(){
			var ebox=$(".high-imageSearch3");
			ebox.removeClass("instage").addClass("outstage");
		},
		inStage : function(){
			VIVO_UIMIX.main.high.imageSearch3.stop();
			var ebox=$(".high-imageSearch3");

			ebox.css({zIndex:10,display:"block"}).animate({opacity:1},800, function() {
				ebox.siblings().css({zIndex:1});
				ebox.removeClass("outstage").addClass("instage");
			});
			
		},
		outStage: function(cb) {
			VIVO_UIMIX.main.high.imageSearch3.stop();
			var ebox=$(".high-imageSearch3");

			setTimeout(function(){
				ebox.animate({opacity:0},800);
				ebox.removeClass("instage").addClass("outstage");
				if (cb) cb();
			},1);
			
		}
	},


	x3v : {
		timehandle : false,
		stop: function() {
			if(VIVO_UIMIX.main.high.x3v.timehandle){
				clearTimeout(VIVO_UIMIX.main.high.x3v.timehandle);
				VIVO_UIMIX.main.high.x3v.timehandle=false;
			}
		},
		init : function(){
			var ebox=$(".high-x3v");
			ebox.removeClass("instage").addClass("outstage");
		},
		inStage : function(){
			VIVO_UIMIX.main.high.x3v.stop();
			var ebox=$(".high-x3v");

			ebox.css({zIndex:10,display:"block"}).animate({opacity:1},800, function() {
				ebox.siblings().css({zIndex:1});
				ebox.removeClass("outstage").addClass("instage");
			});
			
		},
		outStage: function(cb) {
			VIVO_UIMIX.main.high.x3v.stop();
			var ebox=$(".high-x3v");

			setTimeout(function(){
				ebox.animate({opacity:0},800);
				ebox.removeClass("instage").addClass("outstage");
				if (cb) cb();
			},1);
			
		}
	},


	enjoyevent : {
		timehandle : false,
		stop: function() {
			if(VIVO_UIMIX.main.high.enjoyevent.timehandle){
				clearTimeout(VIVO_UIMIX.main.high.enjoyevent.timehandle);
				VIVO_UIMIX.main.high.enjoyevent.timehandle=false;
			}
		},
		init : function(){
			var ebox=$(".high-enjoyevent");
			ebox.removeClass("instage").addClass("outstage");
		},
		inStage : function(){
			VIVO_UIMIX.main.high.enjoyevent.stop();
			var ebox=$(".high-enjoyevent");

			ebox.css({zIndex:10,display:"block"}).animate({opacity:1},800, function() {
				ebox.siblings().css({zIndex:1});
				ebox.removeClass("outstage").addClass("instage");
			});
			
		},
		outStage: function(cb) {
			VIVO_UIMIX.main.high.enjoyevent.stop();
			var ebox=$(".high-enjoyevent");

			setTimeout(function(){
				ebox.animate({opacity:0},800);
				ebox.removeClass("instage").addClass("outstage");
				if (cb) cb();
			},1);
			
		}
	},


	xshotnew : {
		timehandle : false,
		stop: function() {
			if(VIVO_UIMIX.main.high.xshotnew.timehandle){
				clearTimeout(VIVO_UIMIX.main.high.xshotnew.timehandle);
				VIVO_UIMIX.main.high.xshotnew.timehandle=false;
			}
		},
		init : function(){
			var ebox=$(".high-xshotnew");
			ebox.removeClass("instage").addClass("outstage");
		},
		inStage : function(){
			VIVO_UIMIX.main.high.xshotnew.stop();
			var ebox=$(".high-xshotnew");

			ebox.css({zIndex:10,display:"block"}).animate({opacity:1},800, function() {
				ebox.siblings().css({zIndex:1});
				ebox.removeClass("outstage").addClass("instage");
			});
			
		},
		outStage: function(cb) {
			VIVO_UIMIX.main.high.xshotnew.stop();
			var ebox=$(".high-xshotnew");

			setTimeout(function(){
				ebox.animate({opacity:0},800);
				ebox.removeClass("instage").addClass("outstage");
				if (cb) cb();
			},1);
			
		}
	},


	y18l : {
		timehandle : false,
		stop: function() {
			if(VIVO_UIMIX.main.high.y18l.timehandle){
				clearTimeout(VIVO_UIMIX.main.high.y18l.timehandle);
				VIVO_UIMIX.main.high.y18l.timehandle=false;
			}
		},
		init : function(){
			var ebox=$(".high-y18l");
			ebox.removeClass("instage").addClass("outstage");
		},
		inStage : function(){
			VIVO_UIMIX.main.high.y18l.stop();
			var ebox=$(".high-y18l");

			ebox.css({zIndex:10,display:"block"}).animate({opacity:1},800, function() {
				ebox.siblings().css({zIndex:1});
				ebox.removeClass("outstage").addClass("instage");
			});
			
		},
		outStage: function(cb) {
			VIVO_UIMIX.main.high.y18l.stop();
			var ebox=$(".high-y18l");

			setTimeout(function(){
				ebox.animate({opacity:0},800);
				ebox.removeClass("instage").addClass("outstage");
				if (cb) cb();
			},1);
			
		}
	},


	imgsearch_event : {
		timehandle : false,
		stop: function() {
			if(VIVO_UIMIX.main.high.imgsearch_event.timehandle){
				clearTimeout(VIVO_UIMIX.main.high.imgsearch_event.timehandle);
				VIVO_UIMIX.main.high.imgsearch_event.timehandle=false;
			}
		},
		init : function(){
			var ebox=$(".high-imgsearch_event");
			ebox.removeClass("instage").addClass("outstage");
		},
		inStage : function(){
			VIVO_UIMIX.main.high.imgsearch_event.stop();
			var ebox=$(".high-imgsearch_event");

			ebox.css({zIndex:10,display:"block"}).animate({opacity:1},800, function() {
				ebox.siblings().css({zIndex:1});
				ebox.removeClass("outstage").addClass("instage");
			});
			
		},
		outStage: function(cb) {
			VIVO_UIMIX.main.high.imgsearch_event.stop();
			var ebox=$(".high-imgsearch_event");

			setTimeout(function(){
				ebox.animate({opacity:0},800);
				ebox.removeClass("instage").addClass("outstage");
				if (cb) cb();
			},1);
			
		}
	},



	xshot : {
		timehandle : false,
		stop: function() {
			if(VIVO_UIMIX.main.high.xshot.timehandle){
				clearTimeout(VIVO_UIMIX.main.high.xshot.timehandle);
				VIVO_UIMIX.main.high.xshot.timehandle=false;
			}
		},
		init : function(){
			var ebox=$(".high-xshot");
			ebox.removeClass("instage").addClass("outstage");
		},
		inStage : function(){
			VIVO_UIMIX.main.high.xshot.stop();
			var ebox=$(".high-xshot");

			ebox.css({zIndex:10,display:"block"}).animate({opacity:1},800, function() {
				ebox.siblings().css({zIndex:1});
				ebox.removeClass("outstage").addClass("instage");
			});
			
		},
		outStage: function(cb) {
			VIVO_UIMIX.main.high.xshot.stop();
			var ebox=$(".high-xshot");

			setTimeout(function(){
				ebox.animate({opacity:0},800);
				ebox.removeClass("instage").addClass("outstage");
				if (cb) cb();
			},1);
			
		}
	}

	
};
