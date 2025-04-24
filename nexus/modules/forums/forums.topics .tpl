<!-- BEGIN: MAIN -->
<div class="container">
    <div class="content-section">
        <div class="section-header forum-header">
            <h1>
                <i class="fa fa-comments"></i> 
                <span class="forum-title">{FORUMS_TOPICS_TITLE}</span>
                <span class="breadcrumb-path">
                    <!-- Breadcrumb yolu burada. Bu kısmı Cotonti'nin breadcrumb verilerine göre düzenleyin -->
                    {FORUMS_TOPICS_BREADCRUMBS}
                </span>
            </h1>
            <a href="{FORUMS_TOPICS_SECTION_RSS}" class="rss-link"><i class="fa fa-rss"></i></a>
        </div>
        
        <div class="section-body">
            {FILE "{PHP.cfg.themes_dir}/{PHP.usr.theme}/warnings.tpl"}
            
            <!-- BEGIN: FORUMS_SECTIONS -->
            <div class="subforum-container">
                <div class="subforum-header">
                    <h3>{PHP.L.Subforums}</h3>
                </div>
                
                <div class="table-responsive">
                    <table class="forum-table">
                        <thead>
                            <tr>
                                <th class="forum-icon-col"></th>
                                <th class="forum-title-col">{PHP.L.Subforums}</th>
                                <th class="forum-lastpost-col">{PHP.L.Lastpost}</th>
                                <th class="forum-posts-col">{PHP.L.forums_posts}</th>
                                <th class="forum-topics-col">{PHP.L.forums_topics}</th>
                            </tr>
                        </thead>
                        <tbody>
                            <!-- BEGIN: FORUMS_SECTIONS_ROW_SECTION -->
                            <tr>
                                <td class="forum-icon-cell">
                                    <i class="fa fa-folder forum-icon"></i>
                                </td>
                                <td class="forum-title-cell">
                                    <h4><a href="{FORUMS_SECTIONS_ROW_URL}">{FORUMS_SECTIONS_ROW_TITLE}</a></h4>
                                    <p class="forum-desc">{FORUMS_SECTIONS_ROW_DESC}</p>
                                </td>
                                <td class="forum-lastpost-cell">
                                    {FORUMS_SECTIONS_ROW_LASTPOST}<br/>
                                    <span class="forum-lastposter">{FORUMS_SECTIONS_ROW_LASTPOSTER}</span> {FORUMS_SECTIONS_ROW_TIMEAGO}
                                </td>
                                <td class="forum-count-cell">
                                    {FORUMS_SECTIONS_ROW_POSTCOUNT}
                                </td>
                                <td class="forum-count-cell">
                                    {FORUMS_SECTIONS_ROW_TOPICCOUNT}
                                </td>
                            </tr>
                            <!-- END: FORUMS_SECTIONS_ROW_SECTION -->
                        </tbody>
                    </table>
                </div>
            </div>
            <!-- END: FORUMS_SECTIONS -->
            
            <!-- Yeni Konu Oluştur Butonu -->
            <div class="new-topic-container">
                <a href="{FORUMS_TOPICS_NEWTOPICURL}" class="new-topic-btn btn btn-accent">
                    <i class="fa fa-plus-circle"></i> {PHP.L.forums_newtopic}
                </a>
            </div>
            
            <!-- Konular Listesi -->
            <div class="topics-container">
                <div class="topics-header">
                    <h3>{FORUMS_TOPICS_TITLE_TOPICS}</h3>
                </div>
                
                <div class="table-responsive">
                    <table class="forum-table">
                        <thead>
                            <tr>
                                <th class="forum-icon-col"></th>
                                <th class="forum-title-col">{FORUMS_TOPICS_TITLE_TOPICS} / {FORUMS_TOPICS_TITLE_STARTED}</th>
                                <th class="forum-lastpost-col">{FORUMS_TOPICS_TITLE_LASTPOST}</th>
                                <th class="forum-posts-col">{FORUMS_TOPICS_TITLE_POSTS}</th>
                                <th class="forum-views-col">{FORUMS_TOPICS_TITLE_VIEWS}</th>
                            </tr>
                        </thead>
                        <tbody>
                            <!-- BEGIN: FORUMS_TOPICS_ROW -->
                            <tr class="topic-row">
                                <td class="forum-icon-cell">
                                    {FORUMS_TOPICS_ROW_ICON}
                                </td>
                                <td class="forum-title-cell">
                                    <h4>
                                        <a href="{FORUMS_TOPICS_ROW_URL}" title="{FORUMS_TOPICS_ROW_PREVIEW}">{FORUMS_TOPICS_ROW_TITLE}</a>
                                    </h4>
                                    <!-- IF {FORUMS_TOPICS_ROW_DESC} -->
                                    <p class="forum-desc">{FORUMS_TOPICS_ROW_DESC}</p>
                                    <!-- ENDIF -->
                                    <p class="forum-starter">
                                        {FORUMS_TOPICS_ROW_CREATIONDATE}: <span class="forum-poster">{FORUMS_TOPICS_ROW_FIRSTPOSTER}</span>
                                        &nbsp; {FORUMS_TOPICS_ROW_PAGES}
                                    </p>
                                    <!-- IF {FORUMS_TOPICS_ROW_TAGS} -->
                                    <div class="forum-tags">
                                        {FORUMS_TOPICS_ROW_TAGS}
                                    </div>
                                    <!-- ENDIF -->
                                </td>
                                <td class="forum-lastpost-cell">
                                    {FORUMS_TOPICS_ROW_UPDATED}<br/>
                                    <span class="forum-lastposter">{FORUMS_TOPICS_ROW_LASTPOSTER}</span> 
                                    <span class="forum-timeago">{FORUMS_TOPICS_ROW_TIMEAGO}</span>
                                </td>
                                <td class="forum-count-cell">
                                    {FORUMS_TOPICS_ROW_POSTCOUNT}
                                </td>
                                <td class="forum-count-cell">
                                    {FORUMS_TOPICS_ROW_VIEWCOUNT}
                                </td>
                            </tr>
                            <!-- END: FORUMS_TOPICS_ROW -->
                        </tbody>
                    </table>
                </div>
            </div>
            
            <!-- Sayfalama ve İzleyiciler -->
            <div class="forum-footer">
                <!-- BEGIN: FORUMS_SECTIONS_VIEWERS -->
                <div class="forum-viewers">
                    <i class="fa fa-users"></i> {PHP.L.forums_viewers}: <span>{FORUMS_TOPICS_VIEWERS}</span> {FORUMS_TOPICS_VIEWER_NAMES}
                </div>
                <!-- END: FORUMS_SECTIONS_VIEWERS -->
                
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
    
    <!-- Forum Bilgi Kutusu -->
    <div class="content-section">
        <div class="section-header forum-info-header">
            <h2><i class="fa fa-info-circle"></i> {PHP.L.Help}</h2>
        </div>
        
        <div class="section-body">
            <div class="forum-legend">
                <div class="legend-item">{PHP.R.forums_icon_posts} <span>{PHP.L.forums_nonewposts}</span></div>
                <div class="legend-item">{PHP.R.forums_icon_posts_new} <span>{PHP.L.forums_newposts}</span></div>
                <div class="legend-item">{PHP.R.forums_icon_posts_hot} <span>{PHP.L.forums_nonewpostspopular}</span></div>
                <div class="legend-item">{PHP.R.forums_icon_posts_new_hot} <span>{PHP.L.forums_newpostspopular}</span></div>
                <div class="legend-item">{PHP.R.forums_icon_posts_sticky} <span>{PHP.L.forums_sticky}</span></div>
                <div class="legend-item">{PHP.R.forums_icon_posts_new_sticky} <span>{PHP.L.forums_newpostssticky}</span></div>
                <div class="legend-item">{PHP.R.forums_icon_posts_locked} <span>{PHP.L.forums_locked}</span></div>
                <div class="legend-item">{PHP.R.forums_icon_posts_new_locked} <span>{PHP.L.forums_newpostslocked}</span></div>
                <div class="legend-item">{PHP.R.forums_icon_posts_sticky_locked} <span>{PHP.L.forums_announcment}</span></div>
                <div class="legend-item">{PHP.R.forums_icon_posts_new_sticky_locked} <span>{PHP.L.forums_newannouncment}</span></div>
                <div class="legend-item">{PHP.R.forums_icon_posts_moved} <span>{PHP.L.forums_movedoutofthissection}</span></div>
            </div>
        </div>
    </div>
</div>
<!-- END: MAIN -->
