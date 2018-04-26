define(function (require, exports) {
    'use strict';

    var dialog = require('js/ui/dialog');

    exports.show = function (options) {
        options = options || {};
        var settings = {
            type   : 'help',
            buttons: [
                {
                    text : '确定',
                    type : 'primary',
                    click: function () {
                        this.remove();
                        if (typeof options.onAccept === 'function') {
                            options.onAccept();
                        }
                    }
                },
                {
                    text : '取消',
                    focus: true,
                    click: function () {
                        this.remove();
                        if (typeof options.onCancel === 'function') {
                            options.onCancel();
                        }
                    }
                }
            ],

            autoClose: false
        };

        settings.onCloseButton = function () {
            if (typeof options.onCancel === 'function') {
                options.onCancel();
            }
        };
        settings.title = options.title;
        settings.msg = options.msg || '确定进行该操作吗？';
        settings.parent = options.parent || 'body';
        settings.width = options.width || 300;
        settings.height = options.height || 0;
        if ('mask' in options) {
            settings.mask = options.mask;
        }

        dialog.show(settings);
    };
});