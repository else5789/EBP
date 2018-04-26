define(function() {
    'use strict';

    function Dropdown(opts) {
        this.settings = opts;
        this.eventNamespace = '.' + this.settings.namespace;
        this.$dropdown = opts.dropdown;
        this.$options = this.$dropdown.find(this.settings.selector.options);
        this.$items = this.$dropdown.find(this.settings.selector.item);
        this.$text = this.$dropdown.find(this.settings.selector.text);
        this.$input = this.$dropdown.find(this.settings.selector.input);
        this.$otherDropdowns = $(this.settings.selector.dropdown).not(this.$dropdown);
        this.placeholder = this.$text.text() || this.$dropdown.attr('data-placeholder');
        this.$searchInput = this.$dropdown.find('.' + this.settings.searchBar.inputClass);
        this.$searchButton = this.$dropdown.find('.' + this.settings.searchBar.buttonClass);
        this.$dropdown.data('smartdropdown', this);
        this.init();
    }

    Dropdown.prototype = {
        init: function() {
            this.setItemsHeight();
            this.intent();
            this.$dropdown.on('mousedown', $.proxy(this.hideOthers, this));
            this.$dropdown.on('click', $.proxy(this.toggle, this));
            this.bindItemsEvents();
            this.bindSearchEvents();
        },
        bindItemsEvents: function() {
            this.$items.on('click', $.proxy(this.itemClick, this));
        },
        unbindItemsEvents: function() {
            this.$items.off('click');
        },
        bindSearchEvents: function() {
            if (this.settings.searchBar.show) {
                this.$searchButton.on('click', $.proxy(this.search, this));
            }
        },
        unbindSearchEvents: function() {
            if (this.settings.searchBar.show) {
                this.$searchButton.off('click');
            }
        },
        setItemsHeight: function(maxCount) {
            maxCount = maxCount || this.settings.maxCount || 10;
            if (this.$items.length > 0) {
                var maxHeight = this.$items.first().outerHeight() * maxCount;
                var isIE6 = /msie 6/i.test(navigator.userAgent);
                if (isIE6) {
                    this.$options.css('height', maxHeight);
                }
                else {
                    this.$options.css('maxHeight', maxHeight);
                }
            }
        },
        toggle: function(e) {
            e.stopPropagation();

            var $target = $(e.target),
                $parent = $target.parent(),
                isDropdownTarget = !$target.hasClass('smartdropdown-searchbar') && !$parent.hasClass('smartdropdown-searchbar');

            // 当且仅当触发是$dropdown是才处理
            if (isDropdownTarget) {
                if (!this.$dropdown.hasClass(this.settings.className.disabled)) {
                    if (this.$dropdown.hasClass(this.settings.className.visible)) {
                        this.hideDropdown.call(this, e);
                    }
                    else {
                        this.showDropdown.call(this, e);
                    }
                }
            }
        },
        intent: function() {
            $(document).on('click' + this.eventNamespace, $.proxy(this.hideDropdown, this));
        },
        showDropdown: function(e) {
            e.stopPropagation();

            if (this.settings.searchBar.show){
                this.$searchInput.val('');
                this.$options.find('.nodata').remove();
                this.$items.show();
            }

            this.$dropdown.addClass(this.settings.className.visible);
            $.proxy(this.settings.onShow, this)();
        },
        hideDropdown: function(e) {
            e.stopPropagation();
            this.$dropdown.removeClass(this.settings.className.visible);
            $.proxy(this.settings.onHide, this)();
        },
        hideOthers: function(e) {
            e.stopPropagation();
            this.$otherDropdowns.filter('.' + this.settings.className.visible)
                .removeClass(this.settings.className.visible);
        },
        enable: function() {
            this.$dropdown.removeClass(this.settings.className.disabled);
        },
        disable: function() {
            this.$dropdown.addClass(this.settings.className.disabled);
        },
        show: function() {
            this.$dropdown.addClass(this.settings.className.visible);
            $.proxy(this.settings.onShow, this)();
        },
        hide: function() {
            this.$dropdown.removeClass(this.settings.className.visible);
            $.proxy(this.settings.onHide, this)();
        },
        itemClick: function(e) {
            e.stopPropagation();

            var $me = $(e.target),
                selectedValue;

            this.hide();
            selectedValue = $me.attr('data-value');
            this.selected(selectedValue);
        },
        render: function(items) {
            this.reset();
            this.append(items);

            if (this.settings.searchBar.show) {
                var searchHtml = this.getSearchBarTemplate();
                this.$items.first().before(searchHtml);
                this.$searchInput = this.$dropdown.find('.' + this.settings.searchBar.inputClass);
                this.$searchButton = this.$dropdown.find('.' + this.settings.searchBar.buttonClass);
                this.bindSearchEvents();
            }
        },
        append: function(items) {
            var $item,
                item,
                text,
                value,
                list = [];

            if (items) {
                for (var i = 0; i < items.length; i++) {
                    $item = $(document.createElement(this.settings.itemTagName)).addClass(this.settings.className.item);
                    item = items[i];
                    text = item.text;
                    value = item.value;

                    if (text !== undefined) {
                        $item
                            .attr('data-text', text)
                            .text(item.text);
                    }
                    if (value !== undefined) {
                        $item.attr('data-value', value);
                    }

                    if (this.settings.setItemTitle && text) {
                        $item.attr('title', text);
                    }

                    list.push($item);
                }
            }

            if (list && list.length > 0) {
                this.$options.append(list);
                this.$items = this.$dropdown.find(this.settings.selector.item);
                this.setItemsHeight();
                this.unbindItemsEvents();
                this.bindItemsEvents();
            }
        },
        setPlaceholder: function(text) {
            this.$text.text(text);
        },
        getItem: function(value) {
            var $selectedItem = this.$items.filter('[data-value="' + value + '"]');

            if ($selectedItem.length === 0) {
                $selectedItem = this.$items.filter('[data-text="' + value + '"]');
            }

            return $selectedItem;
        },
        getValue: function() {
            var $item = this.$items.filter('.' + this.settings.className.selected);

            if ($item.length > 0) {
                return $item.attr('data-value');
            }
            else {
                return '';
            }
        },
        selected: function(value, silence) {
            var $selectedItem = this.getItem(value),
                selectedText,
                selectedValue,
                oldValue;

            this.$items.removeClass(this.settings.className.selected);

            if ($selectedItem.length > 0) {
                this.$items.removeClass(this.settings.className.selected);
                $selectedItem.addClass(this.settings.className.selected);
                selectedText = $selectedItem.attr('data-text');
                selectedValue = $selectedItem.attr('data-value');
                this.setPlaceholder(selectedText);

                oldValue = this.$dropdown.data('oldvalue');
                this.$dropdown.data('oldvalue', selectedValue);
                this.$input.val(selectedValue);

                if (!silence && selectedValue !== oldValue) {
                    $.proxy(this.settings.onChange, this.settings.dropdown)(selectedValue, selectedText);
                }
            }
        },
        reset: function() {
            this.unbindSearchEvents();
            this.unbindItemsEvents();
            this.$options.empty();
            this.$input.val('');
            this.$items = this.$options.find(this.settings.selector.item);

            if (this.placeholder) {
                this.$text.text(this.placeholder);
            }
        },
        search: function(e) {
            e.stopPropagation();

            var resultLength = 0;
            var value = $.trim(this.$searchInput.val());

            if (value === '') {
                this.$items.show();
            }
            else {
                this.$items.each(function() {
                    var $me = $(this);
                    var itemText = $me.attr('data-text');

                    if (itemText.indexOf(value) > -1) {
                        $me.show();
                    }
                    else {
                        $me.hide();
                        resultLength++;
                    }
                });
            }

            this.$options.find('.nodata').remove();

            if (this.$items.length > 0 && this.$items.length === resultLength) {
                this.$options.append('<div class="nodata smartdropdown-searchbar">' + this.settings.searchBar.emptyText + '</div>');
            }
        },
        getSearchBarTemplate: function() {
            var tpl = '<div class="ddl-search smartdropdown-searchbar"><input type="text" placeholder="{0}" class="{1}" /><button class="{2}">{3}</button></div>';
            return tpl.replace('{0}', this.settings.searchBar.placeholder)
                .replace('{1}', this.settings.searchBar.inputClass)
                .replace('{2}', this.settings.searchBar.buttonClass)
                .replace('{3}', this.settings.searchBar.buttonText);
        }
    }

    $.fn.smartdropdown = function() {
        var args = Array.prototype.slice.call(arguments, 0);
        var opts, result;

        this.each(function() {
            var _this = $(this),
                method,
                smartDropdown;

            // 如果参数是object, 初始化Dropdown
            if (typeof args.length === 0 || typeof(args[0]) === 'object') {
                opts = args.length === 0 ? $.fn.smartdropdown.defaults : $.extend(true, {}, $.fn.smartdropdown.defaults, args[0]);
                opts.dropdown = _this;
                new Dropdown(opts);
            }
            // 如果参数是string类型，则调用方法
            else if (typeof(args[0]) === 'string') {
                method = args[0];
                smartDropdown = _this.data('smartdropdown');

                if (smartDropdown === undefined) {
                    return;
                }

                if (smartDropdown[method] === undefined) {
                    $.error('Invalid method name ' + method + ' to smartdropdown plugin');
                }
                else {
                    result = smartDropdown[method].apply(smartDropdown, args.slice(1));
                }
            }
            else {
                $.error("Invalid arguments to smartdropdown plugin: " + args);
            }
        });

        return result === undefined ? this : result;
    }

    $.fn.smartdropdown.defaults = {
        namespace: 'smartdropdown',
        itemTagName: 'div',
        maxCount: 10,
        setItemTitle: true,
        onChange: function(value, text) {},
        onShow: function() {},
        onHide: function() {},

        selector: {
            options: '.options',
            item: '.options > .item',
            text: '> .text',
            input: '> input[type="hidden"]',
            dropdown: '.smartdropdown'
        },

        className: {
            item: 'item',
            disabled: 'disabled',
            visible: 'visible',
            selected: 'selected'
        },

        searchBar: {
            show: false,
            inputClass: 'search-input',
            buttonClass: 'search-btn',
            buttonText: '搜索',
            placeholder: '',
            emptyText: '没有数据'
        }
    };
});
