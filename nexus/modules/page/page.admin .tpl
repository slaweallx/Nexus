<!-- BEGIN: MAIN -->
<div class="container">
    <div class="content-section">
        <div class="section-header">
            <h1><i class="fa fa-file-text"></i> {PHP.L.Pages}</h1>
        </div>
        
        <div class="section-body">
            <div class="admin-toolbar">
                <a href="{ADMIN_PAGE_URL_CONFIG}" class="btn"><i class="fa fa-cog"></i> {PHP.L.Configuration}</a>
                <a href="{ADMIN_PAGE_URL_STRUCTURE}" class="btn"><i class="fa fa-sitemap"></i> {PHP.L.Categories}</a>
                <a href="{ADMIN_PAGE_URL_EXTRAFIELDS}" class="btn"><i class="fa fa-list-alt"></i> {PHP.L.adm_extrafields_desc}</a>
                <a href="{ADMIN_PAGE_URL_ADD}" class="btn btn-success"><i class="fa fa-plus-circle"></i> {PHP.L.page_addtitle}</a>
            </div>

            {FILE "{PHP.cfg.system_dir}/admin/tpl/warnings.tpl"}

            <!-- IF {ADMIN_PAGE_TOTALDBPAGES} -->
            <form name="form_valqueue" method="get" action="{PHP|cot_url('admin', 'm=page')}" class="form-container">
                <!-- IF !{PHP|cot_plugin_active('urleditor')} OR {PHP.cfg.plugin.urleditor.preset} != 'handy' -->
                <input type="hidden" name="m" value="page" />
                <!-- ENDIF -->
                <div class="table-responsive">
                    <table class="table cells">
                        <thead>
                            <tr>
                                <th class="coltop w-5"></th>
                                <th class="coltop w-5"></th>
                                <th class="coltop w-15 filter-select">{ADMIN_PAGE_FILTER}</th>
                                <th class="coltop w-60">
                                    <!-- IF {TOTAL_ENTRIES} > 1 -->
                                    {PHP.L.adm_sort} {ADMIN_PAGE_ORDER} {ADMIN_PAGE_WAY}
                                    <!-- ENDIF -->
                                </th>
                                <td class="coltop"><button type="submit" class="btn btn-primary"><i class="fa fa-filter"></i> {PHP.L.Filter}</button></td>
                            </tr>
                        </thead>
                    </table>
                </div>
            </form>
            <!-- ENDIF -->
            
            <form id="form_valqueue" name="form_valqueue" method="post" action="{ADMIN_PAGE_FORM_URL}" class="form-container">
                <div class="table-responsive">
                    <table class="table cells">
                        <thead>
                            <tr>
                                <th class="coltop w-5">
                                    <!-- IF {PHP.cfg.jquery} -->
                                    <input name="allchek" class="checkbox" type="checkbox" value="" onclick="$('.checkbox').attr('checked', this.checked);" />
                                    <!-- ENDIF -->
                                </th>
                                <th class="coltop w-5">{PHP.L.Id}</th>
                                <th class="coltop w-15">{PHP.L.Status}</th>
                                <th class="coltop w-60">{PHP.L.Title}</th>
                                <th class="coltop">{PHP.L.Action}</th>
                            </tr>
                        </thead>
                        <tbody>
                            <!-- BEGIN: PAGE_ROW -->
                            <tr>
                                <td class="centerall {ADMIN_PAGE_ODDEVEN}">
                                    <input name="s[{ADMIN_PAGE_ID}]" type="checkbox" class="checkbox" />
                                </td>
                                <td class="centerall {ADMIN_PAGE_ODDEVEN}">
                                    {ADMIN_PAGE_ID}
                                </td>
                                <td>
                                    {ADMIN_PAGE_LOCAL_STATUS}
                                </td>
                                <td class="{ADMIN_PAGE_ODDEVEN}">
                                    <div id="mor_{PHP.ii}" class="mor_info_on_off" style="max-width: 100%; overflow-x: auto">
                                        <span class="strong" style="cursor: pointer;">{ADMIN_PAGE_TITLE}</span>
                                        <!-- IF {ADMIN_PAGE_DESCRIPTION} -->
                                        <div class="des">{ADMIN_PAGE_DESCRIPTION}</div>
                                        <!-- ENDIF -->
                                        <div class="moreinfo">
                                            <hr />
                                            <strong>{PHP.L.Category}:</strong> {ADMIN_PAGE_CAT_PATH_SHORT}
                                            <!-- IF {ADMIN_PAGE_TEXT} -->
                                            <div class="margintop10">
                                                <strong>{PHP.L.Text}:</strong>
                                                <div class="page-text-preview">{ADMIN_PAGE_TEXT}</div>
                                            </div>
                                            <!-- ENDIF -->
                                        </div>
                                    </div>
                                </td>
                                <td class="action {ADMIN_PAGE_ODDEVEN}">
                                    <div class="admin-actions-compact">
                                        <!-- IF {PHP.row.page_state} == 1 -->
                                        <a href="{ADMIN_PAGE_URL_FOR_VALIDATED}" class="btn btn-success btn-sm confirmLink"><i class="fa fa-check"></i> {PHP.L.Validate}</a>
                                        <!-- ENDIF -->
                                        <a href="{ADMIN_PAGE_URL_FOR_DELETED}" class="btn btn-danger btn-sm confirmLink"><i class="fa fa-trash"></i> {PHP.L.Delete}</a>
                                        <a href="{ADMIN_PAGE_ID_URL}" target="_blank" class="btn btn-primary btn-sm"><i class="fa fa-external-link"></i> {PHP.L.Open}</a>
                                        <a href="{ADMIN_PAGE_URL_FOR_EDIT}" target="_blank" class="btn btn-sm"><i class="fa fa-edit"></i> {PHP.L.Edit}</a>
                                    </div>
                                </td>
                            </tr>
                            <!-- END: PAGE_ROW -->
                            
                            <!-- IF !{TOTAL_ENTRIES} -->
                            <tr>
                                <td class="centerall no-items-message" colspan="5">
                                    <i class="fa fa-info-circle"></i> {PHP.L.None}
                                </td>
                            </tr>
                            <!-- ELSE -->
                            <tr>
                                <td class="valid form-actions" colspan="5">
                                    <!-- IF {PHP.filter} != 'validated' -->
                                    <button name="paction" type="submit" value="validate" class="btn btn-success confirm"><i class="fa fa-check"></i> {PHP.L.Validate}</button>
                                    <!-- ENDIF -->
                                    <button name="paction" type="submit" value="delete" class="btn btn-danger confirm"><i class="fa fa-trash"></i> {PHP.L.Delete}</button>
                                </td>
                            </tr>
                            <!-- ENDIF -->
                        </tbody>
                    </table>
                </div>
            </form>
            
            <!-- IF {TOTAL_ENTRIES} -->
            <div class="pagination-container">
                <div class="pagination-info">
                    <span>{PHP.L.Total}: {TOTAL_ENTRIES}, {PHP.L.Onpage}: {ENTRIES_ON_CURRENT_PAGE}</span>
                </div>
                <ul class="pagination">
                    {PREVIOUS_PAGE}
                    {PAGINATION}
                    {NEXT_PAGE}
                </ul>
            </div>
            <!-- ENDIF -->
        </div>
    </div>
</div>

<style>
    .filter-select select {
        width: calc(100% - .150rem);
    }
    
    .page-text-preview {
        max-height: 150px;
        overflow-y: auto;
        padding: 10px;
        background-color: #f8f9fa;
        border-radius: var(--border-radius);
        margin-top: 5px;
    }
    
    .admin-toolbar {
        display: flex;
        flex-wrap: wrap;
        gap: 0.5rem;
        margin-bottom: 1.5rem;
    }
    
    .table.cells {
        width: 100%;
        border-collapse: collapse;
    }
    
    .table.cells th, .table.cells td {
        padding: 0.75rem;
        text-align: left;
        border-bottom: 1px solid var(--border-color);
    }
    
    .table.cells th {
        background-color: var(--light-color);
        font-weight: bold;
    }
    
    .table.cells tbody tr:hover {
        background-color: rgba(52, 152, 219, 0.05);
    }
    
    .centerall {
        text-align: center;
        vertical-align: middle;
    }
    
    .admin-actions-compact {
        display: flex;
        flex-wrap: wrap;
        gap: 0.5rem;
    }
    
    .btn-sm {
        padding: 0.25rem 0.5rem;
        font-size: 0.875rem;
    }
    
    .no-items-message {
        padding: 2rem;
        color: var(--text-light);
    }
    
    .pagination-info {
        margin-bottom: 1rem;
        color: var(--text-light);
        font-size: 0.875rem;
    }
    
    @media (max-width: 768px) {
        .admin-actions-compact {
            flex-direction: column;
        }
        
        .admin-actions-compact .btn {
            width: 100%;
            margin-bottom: 0.25rem;
        }
        
        .table.cells th:nth-child(1), 
        .table.cells td:nth-child(1),
        .table.cells th:nth-child(2), 
        .table.cells td:nth-child(2) {
            display: none;
        }
    }
</style>

<script type="text/javascript">
    $(document).ready(function() {
        $('.moreinfo').hide();
        $('.mor_info_on_off').click(function() {
            let kk = $(this).attr('id');
            $('#' + kk).children('.moreinfo').slideToggle(100);
        });

        let submitButtons = document.querySelectorAll('.confirm');
        let form = document.getElementById('form_valqueue');
        submitButtons.forEach(function(elem) {
            elem.addEventListener('click', function(e) {
                let checkedCnt = form.querySelectorAll('input[type=checkbox]:checked').length;
                if (checkedCnt < 1) {
                    e.preventDefault();
                    return false;
                }

                let message = 'Are you sure?';
                switch (this.value) {
                    case 'delete':
                        message = '{PHP.L.page_confirm_delete}';
                        break;

                    case 'validate':
                        message = '{PHP.L.page_confirm_validate}';
                        break;
                }

                if (!confirm(message)) {
                    e.preventDefault();
                }
            });
        });
    });
</script>
<!-- END: MAIN -->
