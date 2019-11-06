Load.js('tags/menu.js').then(function () {
    riot.mount('menu', {
        'lang': APP.lang
    });
});

route('/', function () {
    Load.js('tags/complaint-list.js').then(function () {
        riot.mount('#view', 'complaint-list', {
            'api': APP.getApiUrl('complaint/search'),
        });
    });
});

route('/view/*', function (id) {
    Load.js('tags/complaint-form.js').then(function () {
        Request.get( APP.getApiUrl('/complaint/status/' + id ), function (json) {
            riot.mount('#view', 'complaint-form', {
                'data': json,
            });
        });
    });
});

route('/print/*', function (id) {
    Load.js('tags/options-yes-no.js').then(function(){
        Load.js('tags/complaint-print.js').then(function () {
            Request.get( APP.getApiUrl('/complaint/status/' + id ), function (json) {
                riot.mount('#view', 'complaint-print', {
                    'data': json,
                });
            });
        });
    });
});

route.start(true);