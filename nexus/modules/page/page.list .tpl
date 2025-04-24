<!-- BEGIN: MAIN -->
<div class="container">
    <div class="article-layout">
        <div class="main-column">
            <div class="content-section">
                <div class="section-header">
                    <h1><i class="fa fa-folder"></i> {LIST_BREADCRUMBS}</h1>
                </div>
                <div class="section-body">
                    {FILE "{PHP.cfg.themes_dir}/{PHP.usr.theme}/warnings.tpl"}
                    
                    <!-- BEGIN: LIST_CAT_ROW -->
                    <div class="article-item">
                        <div class="article-content">
                            <h2 class="article-title">
                                <a href="{LIST_CAT_ROW_URL}" title="{LIST_CAT_ROW_TITLE}">{LIST_CAT_ROW_TITLE}</a>
                                <span class="category-count">{LIST_CAT_ROW_COUNT}</span>
                            </h2>
                            <!-- IF {LIST_CAT_ROW_DESCRIPTION} -->
                            <p class="category-desc">{LIST_CAT_ROW_DESCRIPTION}</p>
                            <!-- ENDIF -->
                        </div>
                    </div>
                    <!-- END: LIST_CAT_ROW -->
                    
                    <!-- IF {LIST_CAT_PAGINATION} -->
                    <div class="pagination-container">
                        <ul class="pagination">
                            <li><span>{PHP.L.Page} {LIST_CAT_CURRENT_PAGE} {PHP.L.Of} {LIST_CAT_TOTAL_PAGES}</span></li>
                            <li>{LIST_CAT_PREVIOUS_PAGE}</li>
                            {LIST_CAT_PAGINATION}
                            <li>{LIST_CAT_NEXT_PAGE}</li>
                        </ul>
                    </div>
                    <!-- ENDIF -->
                    
                    <div class="article-list">
                        <!-- BEGIN: LIST_ROW -->
                        <div class="article-item">
                            <!-- IF {LIST_ROW_THUMB} -->
                            <div class="article-image">
                                <img src="{LIST_ROW_THUMB}" alt="{LIST_ROW_TITLE}" class="article-thumbnail">
                            </div>
                            <!-- ENDIF -->
                            <div class="article-content">
                                <h3 class="article-title">
                                    <a href="{LIST_ROW_URL}">{LIST_ROW_TITLE}</a>
                                    <!-- IF {LIST_ROW_ADMIN} -->
                                    {LIST_ROW_ADMIN}
                                    <!-- ENDIF -->
                                </h3>
                                
                                <div class="article-meta">
                                    <span><i class="fa fa-calendar"></i> {LIST_ROW_DATE}</span>
                                    <span><i class="fa fa-user"></i> {LIST_ROW_OWNER}</span>
                                    <span><i class="fa fa-eye"></i> {LIST_ROW_HITS}</span>
                                </div>
                                
                                <!-- IF {LIST_ROW_DESCRIPTION} -->
                                <p class="article-description">{LIST_ROW_DESCRIPTION}</p>
                                <!-- ELSE -->
                                <div class="article-text">
                                    {LIST_ROW_TEXT_CUT}
                                </div>
                                <!-- ENDIF -->
                                
                                <div class="article-footer">
                                    <!-- IF {LIST_ROW_TEXT_IS_CUT} -->
                                    <a href="{LIST_ROW_URL}" class="read-more">{PHP.L.ReadMore} <i class="fa fa-arrow-right"></i></a>
                                    <!-- ENDIF -->
                                    
                                    <!-- IF {LIST_ROW_ADMIN} -->
                                    <div class="form-actions-compact">
                                        {LIST_ROW_ADMIN_CLONE}
                                        {LIST_ROW_ADMIN_DELETE}
                                    </div>
                                    <!-- ENDIF -->
                                </div>
                            </div>
                        </div>
                        <!-- END: LIST_ROW -->
                    </div>
                    
                    <!-- IF !{LIST_TOTALITEMS} -->
                    <div class="no-items-message">
                        <i class="fa fa-info-circle"></i> {PHP.L.None}
                    </div>
                    <!-- ENDIF -->
                </div>
            </div>
            
            <!-- IF {PAGINATION} -->
            <div class="pagination-container">
                <ul class="pagination">
                    <li><span>{PHP.L.Page} {CURRENT_PAGE} {PHP.L.Of} {TOTAL_PAGES}</span></li>
                    <li>{PREVIOUS_PAGE}</li>
                    {PAGINATION}
                    <li>{NEXT_PAGE}</li>
                </ul>
            </div>
            <!-- ENDIF -->
        </div>
        
        <div class="sidebar">
            <!-- IF {PHP.usr.auth_write} -->
            <div class="widget">
                <div class="widget-header">
                    <h3><i class="fa fa-cog"></i> {PHP.L.Admin}</h3>
                </div>
                <div class="widget-content">
                    <ul class="admin-actions">
                        <!-- IF {PHP.usr.isadmin} -->
                        <li><a href="{PHP|cot_url('admin')}"><i class="fa fa-tachometer"></i> {PHP.L.Adminpanel}</a></li>
                        <!-- ENDIF -->
                        <li>{LIST_SUBMIT_NEW_PAGE}</li>
                    </ul>
                </div>
            </div>
            <!-- ENDIF -->
            
            <div class="widget">
                <div class="widget-header">
                    <h3><i class="fa fa-tags"></i> {PHP.L.Tags}</h3>
                </div>
                <div class="widget-content">
                    <div class="tags-cloud">
                        {LIST_TAG_CLOUD}
                    </div>
                </div>
            </div>
            
            <!-- IF {PHP.cot_modules.categories} -->
            <div class="widget">
                <div class="widget-header">
                    <h3><i class="fa fa-folder-open"></i> {PHP.L.Categories}</h3>
                </div>
                <div class="widget-content">
                    <ul class="category-list">
                        {PHP|cot_build_structure_page_tree('', 0, 0)}
                    </ul>
                </div>
            </div>
            <!-- ENDIF -->
            
            {FILE "{PHP.cfg.themes_dir}/{PHP.theme}/inc/contact.tpl"}
        </div>
    </div>
</div>
<!-- END: MAIN -->
