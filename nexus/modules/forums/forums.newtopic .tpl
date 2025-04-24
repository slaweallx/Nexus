<!-- BEGIN: MAIN -->
<div class="container">
    <div class="content-section">
        <div class="section-header forum-header">
            <h1><i class="fa fa-edit"></i> {FORUMS_NEWTOPIC_BREADCRUMBS}</h1>
        </div>
        
        <div class="section-body">
            {FILE "{PHP.cfg.themes_dir}/{PHP.usr.theme}/warnings.tpl"}
            
            <form action="{FORUMS_NEWTOPIC_FORM_ACTION}" method="post" name="newtopic" class="form-container">
                <div class="form-grid">
                    <div class="form-row">
                        <div class="form-label">{PHP.L.Title}:</div>
                        <div class="form-field">{FORUMS_NEWTOPIC_FORM_TITLE}</div>
                    </div>
                    
                    <div class="form-row">
                        <div class="form-label">{PHP.L.Description}:</div>
                        <div class="form-field">{FORUMS_NEWTOPIC_FORM_DESCRIPTION}</div>
                    </div>
                    
                    <!-- BEGIN: PRIVATE -->
                    <div class="form-row">
                        <div class="form-label">{PHP.L.forums_privatetopic1}:</div>
                        <div class="form-field">
                            {FORUMS_NEWTOPIC_FORM_PRIVATE}
                            <span class="form-hint">({PHP.L.forums_privatetopic2})</span>
                        </div>
                    </div>
                    <!-- END: PRIVATE -->
                    
                    <!-- BEGIN: FORUMS_NEWTOPIC_TAGS -->
                    <div class="form-row">
                        <div class="form-label">{PHP.L.Tags}:</div>
                        <div class="form-field">
                            {FORUMS_NEWTOPIC_FORM_TAGS}
                            <span class="form-hint">({FORUMS_NEWTOPIC_TOP_TAGS_HINT})</span>
                        </div>
                    </div>
                    <!-- END: FORUMS_NEWTOPIC_TAGS -->
                    
                    <div class="form-row editor-row">
                        <div class="form-editor">
                            {FORUMS_NEWTOPIC_FORM_TEXT}
                            <div class="editor-tools">
                                <!-- IF {FORUMS_NEWTOPIC_PFS} -->{FORUMS_NEWTOPIC_PFS}<!-- ENDIF -->
                                <!-- IF {FORUMS_NEWTOPIC_SFS} --><span class="spaced">{PHP.cfg.separator}</span>{FORUMS_NEWTOPIC_SFS}<!-- ENDIF -->
                            </div>
                            
                            <!-- IF {FORUMS_NEWTOPIC_EDIT_TIMEOUT} -->
                            <div class="forum-timeout-info">
                                {PHP.L.forums_edittimeoutnote} {FORUMS_NEWTOPIC_EDIT_TIMEOUT}
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
                    <!-- END: POLL -->
                </div>
                
                <div class="form-actions">
                    <button type="submit" class="btn btn-primary"><i class="fa fa-check"></i> {PHP.L.Submit}</button>
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
});
</script>
<!-- END: MAIN -->
