<!-- BEGIN: MAIN -->
<div class="container">
    <div class="content-section">
        <div class="section-header">
            <h1><i class="fa fa-cogs"></i> {PHP.L.Forums}</h1>
        </div>
        
        <div class="section-body">
            <div class="admin-toolbar">
                <a href="{ADMIN_FORUMS_URL_CONFIG}" class="btn"><i class="fa fa-cog"></i> {PHP.L.Configuration}</a>
                <a href="{ADMIN_FORUMS_URL_STRUCTURE}" class="btn"><i class="fa fa-sitemap"></i> {PHP.L.Categories}</a>
            </div>
            
            <div class="forums-statistics">
                <h3 class="block-title"><i class="fa fa-chart-bar"></i> {PHP.L.Statistics}</h3>
                
                <div class="table-responsive">
                    <table class="table cells">
                        <tbody>
                            <tr>
                                <td class="stat-label">{PHP.L.forums_topics}:</td>
                                <td class="stat-value">{ADMIN_FORUMS_TOTALTOPICS}</td>
                            </tr>
                            <tr>
                                <td class="stat-label">{PHP.L.forums_posts}:</td>
                                <td class="stat-value">{ADMIN_FORUMS_TOTALPOSTS}</td>
                            </tr>
                            <tr>
                                <td class="stat-label">{PHP.L.Views}:</td>
                                <td class="stat-value">{ADMIN_FORUMS_TOTALVIEWS}</td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
            
            <div class="forums-new-topics">
                <h3 class="block-title"><i class="fa fa-comments"></i> {PHP.L.home_newtopics}</h3>
                
                <div class="table-responsive">
                    <table class="table cells">
                        <thead>
                            <tr>
                                <th class="topic-number-col">#</th>
                                <th class="topic-title-col">{PHP.L.Topic}</th>
                                <th class="topic-posts-col">{PHP.L.forums_posts}</th>
                            </tr>
                        </thead>
                        <tbody>
                            <!-- BEGIN: ADMIN_FORUMS_ROW_USER -->
                            <tr>
                                <td class="topic-number-cell">{ADMIN_FORUMS_ROW_II}.</td>
                                <td class="topic-title-cell">
                                    <span class="topic-forum">{ADMIN_FORUMS_ROW_FORUMS}</span>
                                    <span class="topic-separator">{PHP.cfg.separator}</span>
                                    <a href="{ADMIN_FORUMS_ROW_URL}" class="topic-link">{ADMIN_FORUMS_ROW_TITLE}</a>
                                </td>
                                <td class="topic-posts-cell">{ADMIN_FORUMS_ROW_POSTCOUNT}</td>
                            </tr>
                            <!-- END: ADMIN_FORUMS_ROW_USER -->
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- END: MAIN -->
