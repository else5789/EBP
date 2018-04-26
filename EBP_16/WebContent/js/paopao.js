
(function  ($) {
	$.guidance = function  (json,fn) {
		//json.obj  设置跟随对象		必选参数
		//json.title 设置提示消息		必选参数
		//json.url  设置下一步链接		可选参数
		//json.style 定义样式		可选参数  默认有背景
		json.url = json.url || "javascript:;";
		json.style = json.style || {} ;
		json.title = json.title || '可设置的提示信息哦,可以更换的背景图片哦';
		json.style.bgImg = json.style.bgImg || "url(img/questionmark.png)";
		json.style.point1 = json.style.point1 || 'url(img/pointer.png)';
		json.style.point2 = json.style.point2 || 'url(img/pointer2.png)';
		var index = 0;
		if (json.obj.length>0){
			window.closeAll = function  () {
				$('#maskBg').remove();
				window.closeAll = null;
			}
			var $viewG = $('<div id="maskBg">\
				<div id="mask"></div>\
				<div id="maskTitle">\
					<div id="pointer"></div>\
					<div id="mianWarn">\
						<p id="warnData"></p>\
						<a href="javascript:;" id="nextStep">下一步</a>\
						<a href="javascript:;" id="outPointer" onclick = "closeAll()">退出引导</a>\
						<a href="javascript:;" id="closeMaskWarn" onclick = "closeAll ()">×</a>\
					</div>\
				</div>\
			</div>');
			var viewW = $(document.body).width();
			var viewH = $(document.body).height();
			$viewG.css({
				'height':viewH + 'px',
				'width': viewW + 'px'
			});
			if ($('#maskBg').length<=0){
				$(document.body).append($viewG);
				$('#warnData').css('background-image',json.style.bgImg);
				
			}
			function mainWarn (posObj) {
				var iW = posObj.innerWidth();
				var iH = posObj.innerHeight();
				var iL = posObj.offset().left;
				var iT = posObj.offset().top;
				$('#mask').css({
					'width':iW + 'px',
					'height': iH + 'px',
					'border-width':iT + 'px' + ' '+ (viewW - iL - iW) + 'px' + ' '+ (viewH - iH - iT) + 'px' + ' ' + iL + 'px'
				});
				if (iL<400){
					$('#maskTitle').css({
						'left':iL + iW - 30 + 'px',
						'top':iT + iH + 10 + 'px'
					});
					$('#pointer').css('background-image',json.style.point1);
				} else if ((viewW - iL - iW) < 400){
					$('#maskTitle').css({
						'left':iL - 400 + 'px',
						'top':iT + iH + 10 + 'px'
					});
					$('#pointer').css('background-image',json.style.point2);
				} else {
					$('#maskTitle').css({
						'left':iL + iW - 30 + 'px',
						'top':iT + iH + 10 + 'px'
					});
					$('#pointer').css('background-image',json.style.point1);
				}
				
			}
			if ($.isArray(json.obj)){
				mainWarn(json.obj[index]);
				$('#warnData').text(json.title[index]);
				$('#nextStep').bind('click',function  () {
						
						index++;
						if (index == json.obj.length){
							closeAll();
							return;
						}
						mainWarn(json.obj[index]);
						$('#warnData').text(json.title[index]);
					});
			} else {
				mainWarn(json.obj);
				$('#warnData').text(json.title);
				if (fn){
					$('#nextStep').bind('click',fn);
				}else {
					$('#nextStep').bind('click',function  () {
						closeAll();
					});
				}
				
			}
		}
	}
})(jQuery);

/*
   			气泡提示功能说明
   			json.obj 可以是单独的,可以是一个数组,但必须是jQuery 对象
   			json.title 对应  json.obj 
   			json.url 设计本应该为下一步提供链接 
   			json.style  = {}
   			设置 语言信息,背景图信息功能
   			关于fn目前只能在单独使用的时候调用,也就是不在传入多个对象的时候调用
 
 */
