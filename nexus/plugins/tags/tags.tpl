<!-- BEGIN: MAIN -->
<div class="container">
    <div class="article-layout">
        <div class="main-column">
            <div class="content-section">
                <div class="section-header">
                    <h1><i class="fa fa-tags"></i> {TAGS_TITLE}</h1>
                </div>
                <div class="section-body">
                    <div class="tags-search">
                        <form id="tags-search-form" action="{TAGS_FORM_ACTION}" method="GET" class="form-container">
                            <div class="tags-search-input">
                                {TAGS_FORM_PARAMS}
                                <div class="input-group">
                                    <input type="text" name="t" value="{TAGS_QUERY}" class="form-control" placeholder="{PHP.L.Search}..."/>
                                    <button type="submit" class="btn btn-primary"><i class="fa fa-search"></i></button>
                                </div>
                                <div class="tags-order-by">
                                    {TAGS_FORM_ORDER}
                                </div>
                            </div>
                        </form>
                        
                        <!-- {PHP|count({PHP.tagAreas})} > 1 -->
                        <div class="tags-areas">
                            <a href="{PHP.urlParams.t|cot_url('tags', 't=$this')}" 
                               class="tag-area-link<!-- IF {PHP.area} === 'all' --> active<!-- ENDIF -->">{PHP.L.tags_All}</a>
                            
                            <!-- FOR {AREA}, {TITLE} IN {PHP.tagAreas} -->
                            <a href="{PHP.urlParams.t|cot_url('tags','a={AREA}&t=$this')}" 
                               class="tag-area-link<!-- IF {PHP.area} === {AREA} --> active<!-- ENDIF -->">{PHP|htmlspecialchars({TITLE})}</a>
                            <!-- ENDFOR -->
                        </div>
                        <!-- ENDIF -->
                    </div>
                    
                    <!-- BEGIN: TAGS_CLOUD -->
                    <div class="tags-cloud-container">
                        <h3 class="tags-section-title"><i class="fa fa-cloud"></i> {PHP.L.tags_All}</h3>
                        <div class="tags-cloud">
                            {TAGS_CLOUD_BODY}
                        </div>
                    </div>
                    <!-- END: TAGS_CLOUD -->
                    
                    <!-- BEGIN: TAGS_RESULT -->
                    <div class="tags-results">
                        <h3 class="tags-section-title"><i class="fa fa-search"></i> {TAGS_RESULT_TITLE}</h3>
                        
                        <!-- BEGIN: TAGS_RESULT_NONE -->
                        <div class="no-items-message">
                            <i class="fa fa-info-circle"></i> {PHP.L.Noitemsfound}
                        </div>
                        <!-- END: TAGS_RESULT_NONE -->
                        
                        <div class="tags-result-list">
                            <!-- BEGIN: TAGS_RESULT_ROW -->
                            <div class="tags-result-item">
                                <h4 class="result-title">
                                    <a href="{TAGS_RESULT_ROW_URL}">{TAGS_RESULT_ROW_TITLE}</a>
                                </h4>
                                <div class="result-meta">
                                    <span class="result-section">
                                        <i class="fa fa-folder"></i> {PHP.L.Sections}: {TAGS_RESULT_ROW_PATH}
                                    </span>
                                    <span class="result-tags">
                                        <i class="fa fa-tags"></i> {PHP.L.Tags}: {TAGS_RESULT_ROW_TAGS}
                                    </span>
                                </div>
                                <!-- IF {TAGS_RESULT_ROW_PREVIEW} -->
                                <div class="result-preview">
                                    {TAGS_RESULT_ROW_PREVIEW}
                                </div>
                                <!-- ENDIF -->
                            </div>
                            <!-- END: TAGS_RESULT_ROW -->
                        </div>
                    </div>
                    <!-- END: TAGS_RESULT -->
                    
                    <!-- IF {PAGINATION} -->
                    <div class="pagination-container">
                        <ul class="pagination">
                            {PREVIOUS_PAGE}{PAGINATION}{NEXT_PAGE}
                        </ul>
                    </div>
                    <!-- ENDIF -->
                </div>
            </div>
        </div>
        
        <div class="sidebar">
            <div class="widget">
                <div class="widget-header">
                    <h3><i class="fa fa-info-circle"></i> {PHP.L.Tags}</h3>
                </div>
                <div class="widget-content">
                    {TAGS_HINT}
                </div>
            </div>
            
            <!-- IF {PHP.cot_plugins_active.search} -->
            <div class="widget">
                <div class="widget-header">
                    <h3><i class="fa fa-search"></i> {PHP.L.Search}</h3>
                </div>
                <div class="widget-content">
                    <p>{PHP.L.tags_Search_hint}</p>
                    <a href="{PHP|cot_url('search')}" class="btn btn-primary"><i class="fa fa-search"></i> {PHP.L.search_advanced}</a>
                </div>
            </div>
            <!-- ENDIF -->
        </div>
    </div>
</div>
<!-- END: MAIN -->
