<!-- BEGIN: MAIN -->
<div class="container">
    <div class="content-section">
        <div class="section-header">
            <h1><i class="fa fa-edit"></i> {PAGEEDIT_PAGETITLE} #{PAGEEDIT_FORM_ID}</h1>
        </div>
        <div class="section-body">
            {FILE "{PHP.cfg.themes_dir}/{PHP.usr.theme}/warnings.tpl"}
            
            <form action="{PAGEEDIT_FORM_SEND}" enctype="multipart/form-data" method="post" name="pageform" class="form-container">
                <div class="form-grid">
                    <!-- Temel Bilgiler -->
                    <div class="form-row">
                        <div class="form-label">{PHP.L.Category}:</div>
                        <div class="form-field">{PAGEEDIT_FORM_CAT}</div>
                    </div>
                    
                    <div class="form-row">
                        <div class="form-label">{PHP.L.Title}:</div>
                        <div class="form-field">{PAGEEDIT_FORM_TITLE}</div>
                    </div>
                    
                    <div class="form-row">
                        <div class="form-label">{PHP.L.Description}:</div>
                        <div class="form-field">{PAGEEDIT_FORM_DESCRIPTION}</div>
                    </div>
                    
                    <div class="form-row">
                        <div class="form-label">{PHP.L.Author}:</div>
                        <div class="form-field">{PAGEEDIT_FORM_AUTHOR}</div>
                    </div>
                    
                    <!-- Tarih Ayarları -->
                    <div class="form-row">
                        <div class="form-label">{PHP.L.Date}:</div>
                        <div class="form-field">
                            {PAGEEDIT_FORM_DATE}
                            <span class="form-hint">{PAGEEDIT_FORM_DATENOW} {PHP.L.page_date_now}</span>
                        </div>
                    </div>
                    
                    <div class="form-row">
                        <div class="form-label">{PHP.L.Begin}:</div>
                        <div class="form-field">{PAGEEDIT_FORM_BEGIN}</div>
                    </div>
                    
                    <div class="form-row">
                        <div class="form-label">{PHP.L.Expire}:</div>
                        <div class="form-field">{PAGEEDIT_FORM_EXPIRE}</div>
                    </div>
                    
                    <!-- Sayfa Ayarları -->
                    <div class="form-row">
                        <div class="form-label">{PHP.L.Status}:</div>
                        <div class="form-field">{PAGEEDIT_FORM_LOCAL_STATUS}</div>
                    </div>
                    
                    <div class="form-row">
                        <div class="form-label">{PHP.L.Alias}:</div>
                        <div class="form-field">{PAGEEDIT_FORM_ALIAS}</div>
                    </div>
                    
                    <!-- Meta Bilgileri -->
                    <div class="form-row">
                        <div class="form-label">{PHP.L.page_metakeywords}:</div>
                        <div class="form-field">{PAGEEDIT_FORM_KEYWORDS}</div>
                    </div>
                    
                    <div class="form-row">
                        <div class="form-label">{PHP.L.page_metatitle}:</div>
                        <div class="form-field">{PAGEEDIT_FORM_METATITLE}</div>
                    </div>
                    
                    <div class="form-row">
                        <div class="form-label">{PHP.L.page_metadesc}:</div>
                        <div class="form-field">{PAGEEDIT_FORM_METADESC}</div>
                    </div>
                    
                    <!-- Etiketler -->
                    <!-- BEGIN: TAGS -->
                    <div class="form-row">
                        <div class="form-label">{PAGEEDIT_TOP_TAGS}:</div>
                        <div class="form-field">
                            {PAGEEDIT_FORM_TAGS}
                            <span class="form-hint">({PAGEEDIT_TOP_TAGS_HINT})</span>
                        </div>
                    </div>
                    <!-- END: TAGS -->
                    
                    <!-- Admin Özellikleri -->
                    <!-- BEGIN: ADMIN -->
                    <div class="form-row">
                        <div class="form-label">{PHP.L.Owner}:</div>
                        <div class="form-field">{PAGEEDIT_FORM_OWNER_ID}</div>
                    </div>
                    
                    <div class="form-row">
                        <div class="form-label">{PHP.L.Hits}:</div>
                        <div class="form-field">{PAGEEDIT_FORM_HITS}</div>
                    </div>
                    <!-- END: ADMIN -->
                    
                    <div class="form-row">
                        <div class="form-label">{PHP.L.Parser}:</div>
                        <div class="form-field">{PAGEEDIT_FORM_PARSER}</div>
                    </div>
                    
                    <!-- İçerik Editörü -->
                    <div class="container">
                        <div class="form-editor">
                            {PAGEEDIT_FORM_TEXT}
                            <div class="editor-tools">
                                <!-- IF {PAGEEDIT_FORM_PFS} -->{PAGEEDIT_FORM_PFS}<!-- ENDIF -->
                                <!-- IF {PAGEEDIT_FORM_SFS} --><span class="spaced">{PHP.cfg.separator}</span>{PAGEEDIT_FORM_SFS}<!-- ENDIF -->
                            </div>
                        </div>
                    </div>
                    
                    <!-- Dosya Yükleme -->
                    <div class="form-row">
                        <div class="form-label">{PHP.L.page_file}:</div>
                        <div class="form-field">
                            {PAGEEDIT_FORM_FILE}
                            <span class="form-hint">{PHP.L.page_filehint}</span>
                        </div>
                    </div>
                    
                    <div class="form-row">
                        <div class="form-label">{PHP.L.URL}:</div>
                        <div class="form-field">
                            {PAGEEDIT_FORM_URL}
                            <div class="input-group">
                                {PAGEEDIT_FORM_URL_PFS} &nbsp; {PAGEEDIT_FORM_URL_SFS}
                            </div>
                            <span class="form-hint">{PHP.L.page_urlhint}</span>
                        </div>
                    </div>
                    
                    <div class="form-row">
                        <div class="form-label">{PHP.L.page_filesize}:</div>
                        <div class="form-field">
                            {PAGEEDIT_FORM_SIZE}
                            <span class="form-hint">{PHP.L.page_filesizehint}</span>
                        </div>
                    </div>
                    
                    <div class="form-row">
                        <div class="form-label">{PHP.L.page_filehitcount}:</div>
                        <div class="form-field">
                            {PAGEEDIT_FORM_FILE_DOWNLOADS}
                            <span class="form-hint">{PHP.L.page_filehitcounthint}</span>
                        </div>
                    </div>
                    
                    <!-- Sayfa Silme -->
                    <div class="form-row">
                        <div class="form-label">{PHP.L.page_deletepage}:</div>
                        <div class="form-field delete-option">
                            <a href="#" class="btn btn-danger delete-toggle"><i class="fa fa-trash"></i> {PHP.L.page_deletepage}</a>
                            <div class="delete-confirm">
                                {PAGEEDIT_FORM_DELETE}
                            </div>
                        </div>
                    </div>
                </div>
                
                <!-- Form Butonları -->
                <div class="form-actions">
                    <!-- IF {PHP.usr_can_publish} -->
                    <button type="submit" name="rpagestate" value="0" class="btn btn-success"><i class="fa fa-check"></i> {PHP.L.Publish}</button>
                    <!-- ENDIF -->
                    <button type="submit" name="rpagestate" value="2" class="btn"><i class="fa fa-save"></i> {PHP.L.Saveasdraft}</button>
                    <button type="submit" name="rpagestate" value="1" class="btn btn-warning"><i class="fa fa-paper-plane"></i> {PHP.L.Submitforapproval}</button>
                </div>
            </form>
        </div>
    </div>
</div>

<script>
    $(document).ready(function() {
        $('.delete-toggle').click(function(e) {
            e.preventDefault();
            $('.delete-confirm').toggleClass('active');
        });
    });
</script>
<!-- END: MAIN -->
