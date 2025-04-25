<!-- BEGIN: MAIN -->
<div class="container">
    <div class="content-section">
        <div class="section-header">
            <h1><i class="fa fa-file-text"></i> {PAGEADD_PAGETITLE}</h1>
            <div class="breadcrumbs">{PAGEADD_BREADCRUMBS}</div>
        </div>
        
        <div class="section-body">
            {FILE "{PHP.cfg.themes_dir}/{PHP.usr.theme}/warnings.tpl"}
            
            <form action="{PAGEADD_FORM_SEND}" enctype="multipart/form-data" method="post" name="pageform" class="form-container">
                <div class="form-grid">
                    <!-- Kategori & Temel Bilgiler -->
                    <div class="form-row">
                        <div class="form-label">{PHP.L.Category}:</div>
                        <div class="form-field">{PAGEADD_FORM_CAT}</div>
                    </div>
                    
                    <div class="form-row">
                        <div class="form-label">{PHP.L.Title}:</div>
                        <div class="form-field">{PAGEADD_FORM_TITLE}</div>
                    </div>
                    
                    <div class="form-row">
                        <div class="form-label">{PHP.L.Description}:</div>
                        <div class="form-field">{PAGEADD_FORM_DESCRIPTION}</div>
                    </div>
                    
                    <div class="form-row">
                        <div class="form-label">{PHP.L.Author}:</div>
                        <div class="form-field">{PAGEADD_FORM_AUTHOR}</div>
                    </div>
                    
                    <div class="form-row">
                        <div class="form-label">{PHP.L.Alias}:</div>
                        <div class="form-field">{PAGEADD_FORM_ALIAS}</div>
                    </div>
                    
                    <!-- Meta Bilgileri -->
                    <div class="form-row">
                        <div class="form-label">{PHP.L.page_metakeywords}:</div>
                        <div class="form-field">{PAGEADD_FORM_KEYWORDS}</div>
                    </div>
                    
                    <div class="form-row">
                        <div class="form-label">{PHP.L.page_metatitle}:</div>
                        <div class="form-field">{PAGEADD_FORM_METATITLE}</div>
                    </div>
                    
                    <div class="form-row">
                        <div class="form-label">{PHP.L.page_metadesc}:</div>
                        <div class="form-field">{PAGEADD_FORM_METADESC}</div>
                    </div>
                    
                    <!-- Etiketler -->
                    <!-- BEGIN: TAGS -->
                    <div class="form-row">
                        <div class="form-label">{PAGEADD_TOP_TAGS}:</div>
                        <div class="form-field">
                            {PAGEADD_FORM_TAGS} 
                            <span class="form-hint">({PAGEADD_TOP_TAGS_HINT})</span>
                        </div>
                    </div>
                    <!-- END: TAGS -->
                    
                    <!-- Sahiplik & Zaman Ayarları -->
                    <div class="form-row">
                        <div class="form-label">{PHP.L.Owner}:</div>
                        <div class="form-field">{PAGEADD_FORM_OWNER}</div>
                    </div>
                    
                    <div class="form-row">
                        <div class="form-label">{PHP.L.Begin}:</div>
                        <div class="form-field">{PAGEADD_FORM_BEGIN}</div>
                    </div>
                    
                    <div class="form-row">
                        <div class="form-label">{PHP.L.Expire}:</div>
                        <div class="form-field">{PAGEADD_FORM_EXPIRE}</div>
                    </div>
                    
                    <!-- Format Ayarları -->
                    <div class="form-row">
                        <div class="form-label">{PHP.L.Parser}:</div>
                        <div class="form-field">{PAGEADD_FORM_PARSER}</div>
                    </div>
                    
                    <!-- İçerik Editörü -->
                    <div class="container">
                        <div class="form-editor">
                            {PAGEADD_FORM_TEXT}
                            <div class="editor-tools">
                                <!-- IF {PAGEADD_FORM_PFS} -->{PAGEADD_FORM_PFS}<!-- ENDIF -->
                                <!-- IF {PAGEADD_FORM_SFS} --><span class="spaced">{PHP.cfg.separator}</span>{PAGEADD_FORM_SFS}<!-- ENDIF -->
                            </div>
                        </div>
                    </div>
                    
                    <!-- Dosya Ayarları -->
                    <div class="form-row">
                        <div class="form-label">{PHP.L.page_file}:</div>
                        <div class="form-field">
                            {PAGEADD_FORM_FILE}
                            <span class="form-hint">{PHP.L.page_filehint}</span>
                        </div>
                    </div>
                    
                    <div class="form-row">
                        <div class="form-label">{PHP.L.URL}:</div>
                        <div class="form-field">
                            {PAGEADD_FORM_URL}
                            <div class="form-actions-compact">
                                {PAGEADD_FORM_URL_PFS} &nbsp; {PAGEADD_FORM_URL_SFS}
                            </div>
                            <span class="form-hint">{PHP.L.page_urlhint}</span>
                        </div>
                    </div>
                    
                    <div class="form-row">
                        <div class="form-label">{PHP.L.Filesize}:</div>
                        <div class="form-field">
                            <div class="input-group">
                                {PAGEADD_FORM_SIZE}
                                <span class="input-addon">{PHP.L.kb}</span>
                            </div>
                            <span class="form-hint">{PHP.L.page_filesizehint}</span>
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
            
            <div class="help">
                <h4><i class="fa fa-info-circle"></i> {PHP.L.Help}</h4>
                <p>{PHP.L.page_formhint}</p>
            </div>
        </div>
    </div>
</div>
<!-- END: MAIN -->
