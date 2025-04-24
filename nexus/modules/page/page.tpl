<!-- BEGIN: MAIN -->
<div class="container">
    <div class="content-section">
        <div class="section-header">
            <h1><i class="fa fa-file-text"></i> {PAGE_BREADCRUMBS}</h1>
        </div>
        <div class="section-body">
            {FILE "{PHP.cfg.themes_dir}/{PHP.usr.theme}/warnings.tpl"}
            
            <article class="page-article">
                <div class="page-header">
                    <h1 class="page-title">{PAGE_TITLE}</h1>
                    <!-- IF {PAGE_DESCRIPTION} -->
                    <p class="page-desc">{PAGE_DESCRIPTION}</p>
                    <!-- ENDIF -->
                </div>
                
                <div class="article-meta" style="padding-left:25px;">
                    <span><i class="fa fa-calendar"></i> {PAGE_DATE}</span>
                    <span><i class="fa fa-user"></i> {PAGE_OWNER}</span>
                    <span><i class="fa fa-folder"></i> {PAGE_CAT_PATH}</span>
                    <span><i class="fa fa-eye"></i> {PAGE_HITS}</span>
                    <span><i class="fa fa-comments"></i> {PAGE_COMMENTS_COUNT}</span>
                </div>
                
                <!-- IF {PAGE_THUMB} -->
                <div class="page-featured-image">
                    <img src="{PAGE_THUMB}" alt="{PAGE_TITLE}" class="featured-image">
                </div>
                <!-- ENDIF -->
                
                <div class="page-content">
                    {PAGE_TEXT}
                </div>
                
                <!-- BEGIN: PAGE_FILE -->
                <div class="page-download">
                    <h3><i class="fa fa-download"></i> {PHP.L.Download}</h3>
                    
                    <!-- BEGIN: MEMBERSONLY -->
                    <div class="members-only">
                        <i class="fa fa-lock"></i> {PHP.L.Members_Only}
                        <span class="members-tag">{PHP.L.Members_Only}</span>
                    </div>
                    <!-- END: MEMBERSONLY -->
                    
                    <!-- BEGIN: DOWNLOAD -->
                    <div class="download-info">
                        <a href="{PAGE_FILE_URL}" class="download-link"><i class="fa fa-file"></i> {PAGE_TITLE}</a>
                        <div class="download-meta">
                            <span><i class="fa fa-weight"></i> {PHP.L.Size}: {PAGE_FILE_SIZE} {PHP.L.kb}</span>
                            <span><i class="fa fa-download"></i> {FILE_DOWNLOADS_TIMES} {PHP.L.Downloaded}</span>
                        </div>
                    </div>
                    <!-- END: DOWNLOAD -->
                </div>
                <!-- END: PAGE_FILE -->
                
                <div class="page-footer">
                    <!-- BEGIN: PAGE_TAGS -->
                    <div class="tags-cloud">
                        <strong>{PHP.L.Tags}:</strong>
                        <!-- BEGIN: PAGE_TAGS_ROW -->
                        <a href="{PAGE_TAGS_ROW_URL}" class="tag-item" title="{PAGE_TAGS_ROW_TAG}" rel="nofollow">{PAGE_TAGS_ROW_TAG}</a>
                        <!-- END: PAGE_TAGS_ROW -->
                        
                        <!-- BEGIN: PAGE_NO_TAGS -->
                        <span class="no-tags">{PAGE_NO_TAGS}</span>
                        <!-- END: PAGE_NO_TAGS -->
                    </div>
                    <!-- END: PAGE_TAGS -->
                    
                    <!-- IF {PAGE_RATINGS_ENABLED} -->
                    <div class="ratings-widget">
                        {PAGE_RATINGS_DISPLAY}
                    </div>
                    <!-- ENDIF -->
                    
                    <!-- BEGIN: PAGE_ADMIN -->
                    <div class="admin-options">
                        <ul class="admin-actions">
                            <!-- IF {PHP.usr.isadmin} -->
                            <li class="admin-btn admin-btn-panel"><a href="{PHP|cot_url('admin')}">{PHP.L.Adminpanel}</a></li>
                            <!-- ENDIF -->
                            <li class="admin-btn admin-btn-edit">{PAGE_ADMIN_EDIT}</li>
                            <li class="admin-btn admin-btn-validate">{PAGE_ADMIN_UNVALIDATE}</li>
                            <li class="admin-btn admin-btn-clone">{PAGE_ADMIN_CLONE}</li>
                            <li class="admin-btn admin-btn-delete">{PAGE_ADMIN_DELETE}</li>
                            <!-- IF {PAGE_I18N_TRANSLATE} -->
                            <li>{PAGE_I18N_TRANSLATE}</li>
                            <!-- ENDIF -->
                            <!-- IF {PAGE_I18N_DELETE} -->
                            <li>{PAGE_I18N_DELETE}</li>
                            <!-- ENDIF -->
                        </ul>
                    </div>
                    <!-- END: PAGE_ADMIN -->
                    
                    <!-- BEGIN: PAGE_MULTI -->
                    <div class="page-summary">
                        <h3>{PHP.L.Summary}</h3>
                        {PAGE_MULTI_TABTITLES}
                        <p class="paging">{PAGE_MULTI_TABNAV}</p>
                    </div>
                    <!-- END: PAGE_MULTI -->
                </div>
            </article>
            
            <!-- IF {PAGE_COMMENTS} -->
            <div class="block">
                <h2 class="comments"><i class="fa fa-comments"></i> {PHP.L.Comments}</h2>
                {PAGE_COMMENTS}
            </div>
            <!-- ENDIF -->
        </div>
    </div>
</div>
<!-- END: MAIN -->
