define(function(n,e,o){var a={handle302:function(n){var e,o;return o="string"==typeof n?$.parseJSON(n):n,302==o.code?(e=encodeURIComponent(window.location.href),window.location.href=o.data.replace(/src=.*/,"")+e,!1):void 0}};e.AjaxHandler=a});