<complaint-list>
    <div class="columns">
        <div class="column col-4">
            <form onsubmit="{ onSearch }">
                <div class="input-group">
                    <input class="form-input" ref="search" name="search" type="text" placeholder="{ _t('search') }">
                    <button class="btn btn-secondary input-group-btn">
                        <i class="icon icon-search"></i>
                        { _t('search') }
                    </button>
                </div>
            </form>
        </div>
        <div class="column col-8">
            <a class="btn btn-secondary float-right" href="{ APP.getApiUrl('complaint/csv') }">
                <i class="icon icon-download"></i>
                <span class="text-capitalize">{ _t("export_csv") }</span>
            </a>
        </div>
    </div>
    <div class="columns mt-2">
        <div class="column col-12">
            <table class="table table-striped table-hover">
                <thead>
                    <tr class="bg-secondary">
                        <th class="col-1 text-capitalize">{ _t("id") }</th>
                        <th class="col-2 text-capitalize">{ _t("name") }</th>
                        <th class="col-2 text-capitalize">{ _t("date_harassment") }</th>
                        <th class="col-2 text-capitalize">{ _t("date_complaint") }</th>
                        <th class="col-2 text-capitalize">{ _t("victim") }</th>
                        <th class="col-2 text-capitalize">{ _t("notes") }</th>
                        <th class="col-2 text-capitalize">{ _t("status") }</th>
                        <th class="col-1 text-capitalize">{ _t("actions") }</th>
                    </tr>
                </thead>
                <tbody>
                    <tr if="{ loading}">
                        <td colspan="8">
                            <div class="loading loading-lg"></div>
                        </td>
                    </tr>
                    <tr if="{ !loading && items.length <= 0 }">
                        <td colspan="8">
                            <span class="text-capitalize">{ _t("not_records_found") }</span>
                        </td>
                    </tr>
                    <tr if="{ !loading && items.length > 0 }" each="{ item in items }">
                        <td>{ item._id }</td>
                        <td>{ item.username }</td>
                        <td>{ item.datassedio }</td>
                        <td>{ item.dataqueixa }</td>
                        <td>{ item.vitima }</td>
                        <td>{ item.observacao }</td>
                        <td>{ item.status }</td>
                        <td><a href="#view/{ item._id }" class="btn btn-link text-capitalize">{ _t('view') }</a></td>
                    </tr>
                </tbody>
            </table>
            <pagination></pagination>
        </div>
    </div>

    <script>
        var tag = this;
        tag.loading = false;
        tag.items = opts.items || [];
        tag.onSearch = onSearch;
        tag.on('mount', onMount);

        function onMount() {
            requestApi(opts.api);
        }

        function onSearch(event) {
            event.preventDefault();
            var term = tag.refs.search.value;
            requestApi(APP.getApiUrl('complaint/search?search=' + term));
        }

        function requestApi(url) {
            tag.update({
                'loading': true
            });
            Request.get(url, function (json) {
                tag.update({
                    'items': json.items,
                    'loading': false
                });

                var actions = {
                    onPrev: function(){
                        var page = parseInt(json.page) - 1;
                        var newUrl = APP.getApiUrl('complaint/search?' + '&page=' + page);
                        return requestApi(newUrl);
                    },
                    onNext: function(){
                        var page = parseInt(json.page) + 1;
                        var newUrl = APP.getApiUrl('complaint/search?' + '&page=' + page);
                        return requestApi(newUrl);
                    }
                };

                riot.mount('pagination', Object.assign(json, actions));
            });
        }
    </script>
</complaint-list>