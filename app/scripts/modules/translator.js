'use strict';

angular.module('translator', [ 'gettext', 'tmh.dynamicLocale' ])
.run(function ($rootScope, $angularCacheFactory, DEBUG, gettextCatalog, tmhDynamicLocale) {

    var cache = $angularCacheFactory('lang', {
        storageMode: 'localStorage'
    });
    $rootScope.lang = cache.get('lang');
    
    //languages
    $rootScope.setLanguage = function(l) {
        cache.put('lang', l);
        $rootScope.lang = l;
        tmhDynamicLocale.set(l.lang);
        gettextCatalog.currentLanguage = l.lang;
        gettextCatalog.debug = DEBUG;
    };

    var getLocale = function () {
        var nav = window.navigator;
        return ((nav.language || nav.browserLanguage || nav.systemLanguage || nav.userLanguage) || '');
    };

    if (DEBUG)
    {
        $rootScope.langs = [
            { code: 'EN', lang: 'en-US', name: 'English (US)' },
            { code: 'RO', lang: 'ro', name: 'Romanian' },
            { code: 'ES', lang: 'es-CL', name: 'Spanish (Chile)' }
        ];
    }
    else
    {
        $rootScope.langs = [
            { code: 'EN', lang: 'en-US', name: 'English (US)' }
        ];
    }

    if (!$rootScope.lang)
    {
        var locale = getLocale();
        $rootScope.langs.forEach(function(l) {
            if (l.lang === locale)
            {
                $rootScope.setLanguage(l);
            }
        });
        if (!$rootScope.lang)
        {
            //fallback to en-US
            $rootScope.setLanguage($rootScope.langs[0]);
        }
    }
    else {
        $rootScope.setLanguage($rootScope.lang);
    }
    //end languages
});