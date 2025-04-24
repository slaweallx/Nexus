<!-- BEGIN: MAIN -->
<div class="container">
    <div class="content-section">
        <div class="section-header forum-header">
            <h1><i class="fa fa-edit"></i> {FORUMS_EDITPOST_BREADCRUMBS}</h1>
        </div>
        
        <div class="section-body">
            <!-- IF {FORUMS_EDITPOST_SUBTITLE} -->
            <div class="forum-subtitle">
                {FORUMS_EDITPOST_SUBTITLE}
            </div>
            <!-- ENDIF -->
            
            {FILE "{PHP.cfg.themes_dir}/{PHP.usr.theme}/warnings.tpl"}
            
            <form action="{FORUMS_EDITPOST_FORM_ACTION}" method="POST" name="editpost" class="form-container">
                <div class="form-grid">
                    <!-- BEGIN: FORUMS_EDITPOST_FIRSTPOST -->
                    <div class="form-row">
                        <div class="form-label">{PHP.L.forums_topic}:</div>
                        <div class="form-field">{FORUMS_EDITPOST_FORM_TOPIC_TITTLE}</div>
                    </div>
                    
                    <div class="form-row">
                        <div class="form-label">{PHP.L.Description}:</div>
                        <div class="form-field">{FORUMS_EDITPOST_FORM_TOPIC_DESCRIPTION}</div>
                    </div>
                    <!-- END: FORUMS_EDITPOST_FIRSTPOST -->
                    
                    <!-- BEGIN: FORUMS_EDITPOST_TAGS -->
                    <div class="form-row">
                        <div class="form-label">{PHP.L.Tags}:</div>
                        <div class="form-field">
                            {FORUMS_EDITPOST_FORM_TAGS}
                            <span class="form-hint">({FORUMS_EDITPOST_TOP_TAGS_HINT})</span>
                        </div>
                    </div>
                    <!-- END: FORUMS_EDITPOST_TAGS -->
                    
                    <div class="form-row editor-row">
                        <div class="form-editor">
                            {FORUMS_EDITPOST_FORM_TEXT}
                            <div class="editor-tools">
                                <!-- IF {FORUMS_EDITPOST_PFS} -->{FORUMS_EDITPOST_PFS}<!-- ENDIF -->
                                <!-- IF {FORUMS_EDITPOST_SFS} --><span class="spaced">{PHP.cfg.separator}</span>{FORUMS_EDITPOST_SFS}<!-- ENDIF -->
                            </div>
                            
                            <!-- IF {FORUMS_EDITPOST_EDIT_TIMEOUT} -->
                            <div class="forum-timeout-info">
                                {PHP.L.forums_edittimeoutnote} {FORUMS_EDITPOST_EDIT_TIMEOUT}
                            </div>
                            <!-- ENDIF -->
                        </div>
                    </div>
                    
                    <!-- BEGIN: POLL -->
                    <div class="form-row poll-title-row">
                        <div class="form-label">{PHP.L.poll}:</div>
                        <div class="form-field">
                            <script type="text/javascript" src="{PHP.cfg.modules_dir}/polls/js/polls.js"></script>
                            <script type="text/javascript">
                                var ansMax = {PHP.cfg.polls.max_options_polls};
                            </script>
                            {EDIT_POLL_IDFIELD}
                            {EDIT_POLL_TEXT}
                        </div>
                    </div>
                    
                    <div class="form-row poll-options-row">
                        <div class="form-label">{PHP.L.Options}:</div>
                        <div class="form-field">
                            <div class="poll-options-container">
                                <!-- BEGIN: OPTIONS -->
                                <div class="poll-option-item">
                                    {EDIT_POLL_OPTION_TEXT}
                                    <button name="deloption" value="x" type="button" class="deloption btn btn-sm btn-danger">
                                        <i class="fa fa-times"></i>
                                    </button>
                                </div>
                                <!-- END: OPTIONS -->
                            </div>
                            <button id="addoption" name="addoption" value="{PHP.L.Add}" type="button" class="btn btn-sm btn-primary mt-2">
                                <i class="fa fa-plus"></i> {PHP.L.Add}
                            </button>
                        </div>
                    </div>
                    
                    <div class="form-row">
                        <div class="form-label"></div>
                        <div class="form-field">{EDIT_POLL_MULTIPLE}</div>
                    </div>
                    
                    <!-- BEGIN: EDIT -->
                    <div class="form-row">
                        <div class="form-label"></div>
                        <div class="form-field poll-controls">
                            {EDIT_POLL_LOCKED} 
                            {EDIT_POLL_RESET} 
                            {EDIT_POLL_DELETE}
                        </div>
                    </div>
                    <!-- END: EDIT -->
                    <!-- END: POLL -->
                </div>
                
                <div class="form-actions">
                    <button type="submit" class="btn btn-primary"><i class="fa fa-check"></i> {PHP.L.Update}</button>
                </div>
            </form>
        </div>
    </div>
</div>

<script>
document.addEventListener('DOMContentLoaded', function() {
    // Anket seçeneğini silme butonlarını aktifleştir
    const delOptions = document.querySelectorAll('.deloption');
    delOptions.forEach(function(button) {
        button.style.display = 'inline-flex';
        button.className = 'deloption btn btn-sm btn-danger';
        button.innerHTML = '<i class="fa fa-times"></i>';
    });
    
    // Anket seçeneği ekleme butonunu aktifleştir
    const addOption = document.getElementById('addoption');
    if (addOption) {
        addOption.style.display = 'inline-flex';
        addOption.className = 'btn btn-sm btn-primary';
        addOption.innerHTML = '<i class="fa fa-plus"></i> ' + addOption.value;
    }
    
    // Anket kontrol butonlarını modernize et
    const pollControls = document.querySelectorAll('.poll-controls input[type="checkbox"], .poll-controls input[type="submit"]');
    pollControls.forEach(function(control) {
        if (control.type === 'submit') {
            control.className = 'btn btn-sm';
            
            // Silme düğmesi için özel stil
            if (control.name.includes('delete')) {
                control.className += ' btn-danger';
            }
            
            // Sıfırlama düğmesi için özel stil
            if (control.name.includes('reset')) {
                control.className += ' btn-warning';
            }
        }
    });
});
</script>
<!-- END: MAIN -->
