<!-- BEGIN: MAIN -->
<div class="container">
    <div class="content-section">
        <div class="section-header forum-header">
            <h1><i class="fa fa-comments"></i> {FORUMS_SECTIONS_PAGETITLE}</h1>
            <a href="{FORUMS_RSS}" class="rss-link"><i class="fa fa-rss"></i></a>
        </div>
        
        <div class="section-body">
            <!-- BEGIN: FORUMS_SECTIONS -->
            <div class="forums-sections-container">
                <div class="table-responsive">
                    <table class="forum-table">
                        <thead>
                            <tr>
                                <th class="forum-icon-col"></th>
                                <th class="forum-title-col">
                                    <div class="forum-fold-controls">
                                        <a href="{PHP|cot_url('forums','c=fold#top')}" rel="nofollow" onclick="return toggleAll('hide')" class="fold-link">
                                            <i class="fa fa-minus-square"></i> {PHP.L.forums_foldall}
                                        </a>
                                        <span class="fold-separator">/</span>
                                        <a href="{PHP|cot_url('forums','c=unfold#top')}" rel="nofollow" onclick="return toggleAll('show')" class="fold-link">
                                            <i class="fa fa-plus-square"></i> {PHP.L.forums_unfoldall}
                                        </a>
                                    </div>
                                </th>
                                <th class="forum-lastpost-col">{PHP.L.Lastpost}</th>
                                <th class="forum-topics-col">{PHP.L.forums_topics}</th>
                                <th class="forum-posts-col">{PHP.L.forums_posts}</th>
                                <th class="forum-activity-col">{PHP.L.Activity}</th>
                            </tr>
                        </thead>
                        
                        <!-- BEGIN: CAT -->
                        <tbody id="{FORUMS_SECTIONS_ROW_CAT}">
                            <tr>
                                <td class="forum-category" colspan="6">
                                    <a href="{FORUMS_SECTIONS_ROW_SECTIONSURL}" onclick="return toggleblock('blk_{FORUMS_SECTIONS_ROW_CAT}')" class="forum-category-toggle">
                                        <i class="fa fa-folder-open category-icon"></i> {FORUMS_SECTIONS_ROW_TITLE}
                                    </a>
                                </td>
                            </tr>
                        </tbody>
                        <tbody id="blk_{FORUMS_SECTIONS_ROW_CAT}"<!-- IF {FORUMS_SECTIONS_ROW_FOLD} --> style="display:none;"<!-- ENDIF -->>
                            <!-- BEGIN: SECTION -->
                            <tr class="forum-section-row">
                                <td class="forum-icon-cell">
                                    {FORUMS_SECTIONS_ROW_ICON}
                                </td>
                                <td class="forum-title-cell">
                                    <h4><a href="{FORUMS_SECTIONS_ROW_URL}">{FORUMS_SECTIONS_ROW_TITLE}</a></h4>
                                    <!-- IF {FORUMS_SECTIONS_ROW_DESC} -->
                                    <p class="forum-desc">{FORUMS_SECTIONS_ROW_DESC}</p>
                                    <!-- ENDIF -->
                                    
                                    <!-- BEGIN: SUBSECTION -->
                                    <ul class="forum-subsections">
                                        <li class="subsection-item">
                                            <a href="{FORUMS_SECTIONS_ROW_URL}" class="subsection-link">
                                                <i class="fa fa-level-down-alt subsection-icon"></i> {FORUMS_SECTIONS_ROW_TITLE}
                                            </a>
                                        </li>
                                    </ul>
                                    <!-- END: SUBSECTION -->
                                </td>
                                <td class="forum-lastpost-cell">
                                    {FORUMS_SECTIONS_ROW_LASTPOST}<br/>
                                    <span class="forum-lastpost-date">{FORUMS_SECTIONS_ROW_LASTPOSTDATE}</span> 
                                    <span class="forum-lastposter">{FORUMS_SECTIONS_ROW_LASTPOSTER}</span>
                                </td>
                                <td class="forum-count-cell">
                                    {FORUMS_SECTIONS_ROW_TOPICCOUNT}
                                </td>
                                <td class="forum-count-cell">
                                    {FORUMS_SECTIONS_ROW_POSTCOUNT}
                                </td>
                                <td class="forum-activity-cell">
                                    <div class="forum-activity-meter" title="{FORUMS_SECTIONS_ROW_ACTIVITY}%">
                                        <div class="activity-bar" style="width: {FORUMS_SECTIONS_ROW_ACTIVITY}%;"></div>
                                    </div>
                                </td>
                            </tr>
                            <!-- END: SECTION -->
                        </tbody>
                        <!-- END: CAT -->
                    </table>
                </div>
            </div>
            <!-- END: FORUMS_SECTIONS -->
            
            <div class="forum-footer">
                <div class="forum-actions">
                    <!-- IF {PHP|cot_plugin_active('search')} -->
                    <a href="{PHP|cot_url('plug','e=search&amp;tab=frm')}" class="forum-action-link">
                        <i class="fa fa-search"></i> {PHP.L.forums_searchinforums}
                    </a>
                    <!-- ENDIF -->
                    
                    <!-- IF {PHP|cot_plugin_active('forumstats')} -->
                    <a href="{PHP|cot_url('plug','e=forumstats')}" class="forum-action-link">
                        <i class="fa fa-chart-bar"></i> {PHP.L.Statistics}
                    </a>
                    <!-- ENDIF -->
                    
                    <a href="{FORUMS_SECTIONS_MARKALL_URL}" rel="nofollow" class="forum-action-link">
                        <i class="fa fa-check-double"></i> {PHP.L.forums_markasread}
                    </a>
                </div>
            </div>
        </div>
    </div>
    
    <div class="content-section">
        <div class="section-header">
            <h2><i class="fa fa-tags"></i> {PHP.L.Tags}</h2>
        </div>
        <div class="section-body">
            <div class="tags-cloud">
                {FORUMS_SECTIONS_TAG_CLOUD}
            </div>
        </div>
    </div>
</div>
<!-- END: MAIN -->
