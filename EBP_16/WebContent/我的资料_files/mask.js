define(function (require, exports) {
    'use strict';

    var uniqueId = 0,
        isIE6 = (window.navigator.userAgent || '').toLowerCase().indexOf('msie 6') !== -1;

    function Mask(options) {
        var parent = 'body',
            ele = '<div class="ui-mask"></div>';

        options = options || {};

        if (this.mask) {
            this.mask.show();
        } else {
            this.mask = $(ele);
            if (options.parent) {
                parent = options.parent;
            }
            // 附加样式
            if (options.className) {
                this.mask.addClass(options.className)
            }
            if (isIE6) {
                createIframe(this.mask);
            }

            this.mask.appendTo(parent);
            this.mask.id = 'ui-mask-' + (uniqueId += 1);
        }
    }

    Mask.prototype = {
        constructor: Mask,

        show: function () {
            this.mask.show();
            return this;
        },

        hide: function () {
            this.mask.hide();
            return this;
        },

        remove: function (delay) {
            this.mask.remove();
            return this;
        },

        fadeOut: function (delay, callback) {
            delay = delay || 200;
            callback = callback || $.noop;
            this.mask.fadeOut(delay, callback);
            return this;
        }
    };

    exports.show = function (options) {
        return new Mask(options);
    };

    exports.hide = function (instance) {
        if (instance) {
            instance.hide();
        } else {
            $('.ui-mask').hide();
        }

    };

    exports.remove = function (instance) {
        if (instance) {
            instance.hide();
        } else {
            $('.ui-mask').remove();
        }
    };

    // helpers
    // ------------
    function createIframe(target) {
        var css = {
            border   : 'none',
            filter   : 'progid:DXImageTransform.Microsoft.Alpha(opacity:0)',
            position : 'absolute',
            top      : 0,
            left     : 0,
            width    : '100%',
            height   : '100%',
            'z-index': -1
        };

        return $('<iframe>', {
            frameborder: 0,

            src: 'javascript:\'\'',
            css: css
            //        }).insertBefore(target);
        }).appendTo(target);
    }

});