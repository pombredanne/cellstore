'use strict';

angular.module('stickyFooter', []).directive('stickyFooter', function(){
    return function() {
        var resize = function(){
            var height = Math.max(document.documentElement.clientHeight, window.innerHeight || 0);
            var footer = document.querySelector('footer');
            var view = document.querySelector('.wrapper');
            view.style.minHeight = (height - 50 - footer.getBoundingClientRect().height) + 'px';
        };
        angular.element(window).bind('resize', resize);
        resize();
    };
});