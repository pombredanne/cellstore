'use strict';

module.exports = function (config) {
    config.set({
        basePath: './',
        frameworks: ['jasmine'],
        browsers: ['Firefox', 'PhantomJS'],
        files: [
            'bower_components/ng-file-upload-shim/angular-file-upload-shim.js',
            'bower_components/angular/angular.js',
            'bower_components/angular-mocks-1.2.9/angular-mocks.js',
            'bower_components/ngprogress-lite/ngprogress-lite.js',
            'bower_components/angular-ui-router/release/angular-ui-router.js',
            'bower_components/angular-sanitize/angular-sanitize.js',
            'bower_components/angular-ui-bootstrap-bower/ui-bootstrap.js',
            'bower_components/angular-ui-bootstrap-bower/ui-bootstrap-tpls.js',
            'bower_components/angular-cache/dist/angular-cache.js',
            'bower_components/layoutmodel-renderer-angular/app/directive/layoutmodel.js',
            'bower_components/layoutmodel-renderer-angular/app/directive/layoutmodeltemplate.js',
            'bower_components/flexy-layout/flexy-layout.debug.js',
            'bower_components/angular-ui-router/release/angular-ui-router.js',
            'bower_components/angular-ui-tree/dist/angular-ui-tree.js',
            'bower_components/ng-file-upload/angular-file-upload.js',
            'bower_components/lodash/dist/lodash.js',

            'app/constants.js',
            'app/modules/report-api.js',
            'app/modules/session-api.js',
            'app/modules/queries-api.js',
            'app/modules/lodash.js',
            'app/modules/api.js',
            'app/modules/excel-parser.js',
            'app/modules/formula-parser.js',
            'app/modules/report-api.js',
            'app/modules/report-model.js',
            'app/modules/report-model-generic.js',
            'app/modules/report-model-sec.js',
            'app/modules/rules-model.js',
            'app/app.js',
            'app/modules/excel-parser.js',
            'app/modules/session-model.js',
            'app/modules/rules-model.js',
            'app/modules/filter-model.js',
            'app/modules/ui/api-status.js',
            'app/modules/ui/forms.js',
            'app/modules/ui/account.js',
            'app/modules/ui/resize.js',
            'app/modules/formula-parser.js',

            'app/report/taxonomy/taxonomy.js',
            'app/report/taxonomy/concept/overview/overview.js',

            'tests/unit/karma.start.js',
            'app/**/*-test.js'
        ],
        captureTimeout: 60000,
        colors: true,
        exclude: ['dist/'],
        logLevel: config.LOG_INFO,
        port: 9876,
        plugins: [
            'karma-chrome-launcher',
            'karma-firefox-launcher',
            'karma-phantomjs-launcher',
            'karma-jasmine',
            'karma-coverage'
        ],
        runnerPort: 9100,
        singleRun: true,
        autoWatch: false,
        coverageReporter: {
            type: 'lcov',
            dir: 'coverage/'
        },
        preprocessors: {
        },
        reporters: ['progress', 'coverage']
    });
};
