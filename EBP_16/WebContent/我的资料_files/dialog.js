define(function (require, exports) {
    'use strict';

    var mask = require('js/ui/mask'),
        defaults = {
            title      : false, // 是否包含标题，true 或标题字符串
            type       : 'warning',
            msg        : '对不起，系统繁忙请稍后尝试。',
            exClassName: '', // 附加样式，以空格分隔

            buttons: [
                {
                    text : '确定',
                    type : 'primary',
                    focus: true,
                    click: function () {
                        this.remove();
                    }
                }
            ],

            beforeClose  : function () {return true;},
            afterClose   : function () {},
            onCloseButton: function () {},
            autoClose    : false, // 是否自动关闭, true 或者设置自动关闭的延时秒数

            parent: 'body',
            width : 300,
            height: 0,
            mask  : true
        },
        uniqueID = 0;

    function Dialog(options) {
        var instance = this,
            i,
            l;

        if (typeof options == 'string') {
            options = {
                msg: options
            }
        }

        options = $.extend(true, {}, defaults, options);

        instance.id = options.id = 'ui-dialog-' + (uniqueID += 1);
        // 对话框类型，也对应图标样式
        options.icon = options.type || 'warning';
        if (options.title && typeof options.title !== 'string') {
            options.title = '温馨提示';
        }

        instance.options = options;

        instance.dom = $( getHtml( options ) ).appendTo(options.parent);

        instance.dom.css(
            {
                'margin-left': -1 * instance.dom.outerWidth() / 2,
                'margin-top' : -1 * instance.dom.outerHeight() / 2
            });

        //添加样式使得对话框显示
        instance.dom.addClass('z-ui-dialog-in');

        if (options.exClassName) {
            instance.dom.addClass(options.exClassName);
        }

        instance.dom
            .on('click.ui-dialog', '.close', function () {
                instance.remove();
                options.onCloseButton();
            })
            .on('click.ui-dialog', '.buttons .ui-button', function () {
                var index = +$(this).data('index');
                if (options.buttons[index].click) {
                    options.buttons[index].click.apply(instance);
                }
            });

        for (i = 0, l = options.buttons.length; i < l; i++) {
            if (options.buttons[i].focus === true) {
                instance.dom.find('.buttons .ui-button').eq(i).focus();
                break;
            }
        }
        if (i === l) {
            instance.dom.find('.buttons .ui-button').eq(0).focus();
        }

        if (options.mask) {
            options.mask = mask.show();
        }
        instance.dom.fadeIn();

        if (options.autoClose) {
            if (typeof options.autoClose !== 'number') {
                options.autoClose = 3;
            }
            options.remainSecond = options.autoClose;

            var countdown = function () {
                if (instance.options.remainSecond) {
                    instance.dom.find('.auto-close').text(instance.options.remainSecond + '秒后自动关闭');
                    instance.options.remainSecond -= 1;
                    instance.closeTimer = setTimeout(function () {
                        countdown();
                    }, 1000);
                } else {
                    instance.remove();
                }
            };

            countdown();
        }

    }

    Dialog.prototype = {
        constructor: Dialog,

        hide: function () {
            if (this.options.autoClose) {
                clearTimeout(this.options.closeTimer);
            }
            var prevent = this.options.beforeClose.call(this);
            if (prevent) {
                if (this.options.mask) {
                    this.options.mask.hide();
                }
                this.dom.fadeOut();
                this.options.afterClose.call(this);
            }
        },

        remove: function () {
            if (this.options.autoClose) {
                clearTimeout(this.options.closeTimer);
            }
            var prevent = this.options.beforeClose.call(this);
            if (prevent) {
                this.dom.off('.ui-dialog');
                if (this.options.mask) {
                    this.options.mask.remove();
                }
                this.dom.remove();
                this.options.afterClose.call(this);
            }
        }
    };

    function getHtml( opt ){
        var _h          = opt.height ? ( opt.height + "px" ) : "",
            _btn        = [],
            _autoClose  = opt.autoClose ? ( '<div class="auto-close">' + opt.autoClose + '秒后自动关闭</div>' ) : "";
        for( var i = 0 , len = opt.buttons.length; i < len; i++ ){
            _btn.push( '<button type="button" class="ui-button ' + opt.buttons[ i ].type + '" data-index="' + i + '">' + opt.buttons[ i ].text + '</button>' );
        };
        return '<div class="ui-dialog" style="width:' + opt.width + 'px;' + _h + '">\
                    <div class="inner ' + opt.title + ' ">\
                        <h4 class="title">' + opt.title + '</h4>\
                        <a href="javascript:;" role="button" class="close vipFont">&#xe609;</a>\
                        <div class="content">\
                            <span class="ui-tips big ' + opt.type + '"><i class="icon"></i>' + opt.msg + '</span>\
                        </div>\
                        <div class="buttons">'
                            + _btn.join( "" ) +
                        '</div>'
                        + _autoClose +
                    '</div>\
                </div>';
    };

    exports.show = function (options) {
        return new Dialog(options);
    };
});
