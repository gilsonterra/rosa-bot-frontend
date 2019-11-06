<pagination>

    <div class="columns">
        <div class="column col-6">
            <ul class="pagination">
                <li>
                    <span class="text-italic">
                        <span class="text-capitalize">{ _t('showing') }</span> <b>{ start }</b> { _t('to') } <b>{ end } </b>{ _t('of') } <b>{ total }</b> { _t('records') }.
                    </span>
                </li>
            </ul>
        </div>
        <div class="column col-6">
            <ul class="pagination float-right">
                <li class="page-item">
                    <button onclick="{ onPrev }" class="btn btn-link text-capitalize { page <= 1 ? 'disabled': '' }">
                        <i class="icon icon-arrow-left"></i>{ _t('previous') }
                    </button>
                </li>
                <li class="page-item ">
                    <button onclick="{ onNext }" class="btn btn-link text-capitalize { page >= pages ? 'disabled': '' }">
                        { _t('next') }<i class="icon icon-arrow-right"></i>
                    </button>
                </li>
            </ul>
        </div>
    </div>

    <script>
        var tag = this;
        tag.start = opts.start || 0;
        tag.end = opts.end || 0;
        tag.total = opts.total || 0;
        tag.page = opts.page;
        tag.pages = opts.pages;
        tag.onPrev = opts.onPrev || null;
        tag.onNext = opts.onNext || null;
    </script>
</pagination>