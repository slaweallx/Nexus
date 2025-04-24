<!-- BEGIN: MAIN -->
<div class="container">
    <!-- BEGIN: FORUMS_POSTS_TOPICPRIVATE -->
    <div class="error">
        <i class="fa fa-lock"></i> {PHP.L.forums_privatetopic}
    </div>
    <!-- END: FORUMS_POSTS_TOPICPRIVATE -->

    <!-- BEGIN: POLLS_VIEW -->
    <div class="content-section">
        <div class="section-header forum-poll-header">
            <h2><i class="fa fa-bar-chart"></i> {POLLS_TITLE}</h2>
        </div>
        <div class="section-body">
            {POLLS_FORM}
        </div>
    </div>
    <!-- END: POLLS_VIEW -->

    <div class="content-section">
        <div class="section-header forum-header">
            <h1>
                <i class="fa fa-comments"></i> 
                <span class="forum-title">{FORUMS_POSTS_TITLE}</span>
                <span class="breadcrumb-path">
                    {FORUMS_POSTS_BREADCRUMBS}
                </span>
            </h1>
            <a href="{FORUMS_POSTS_RSS}" class="rss-link"><i class="fa fa-rss"></i></a>
        </div>
        
        <!-- BEGIN: FORUMS_POSTS_ADMIN -->
        <div class="forum-admin-controls">
            <div class="forum-options">
                <span class="forum-option-label">{PHP.L.forums_topicoptions}:</span>
                <div class="forum-option-links">
                    <a href="{FORUMS_POSTS_BUMP_URL}" title="{PHP.L.forums_explainbump}" class="forum-admin-link"><i class="fa fa-arrow-up"></i> {PHP.L.forums_bump}</a>
                    <a href="{FORUMS_POSTS_LOCK_URL}" title="{PHP.L.forums_explainlock}" class="forum-admin-link"><i class="fa fa-lock"></i> {PHP.L.Lock}</a>
                    <a href="{FORUMS_POSTS_STICKY_URL}" title="{PHP.L.forums_explainsticky}" class="forum-admin-link"><i class="fa fa-thumb-tack"></i> {PHP.L.forums_makesticky}</a>
                    <a href="{FORUMS_POSTS_ANNOUNCE_URL}" title="{PHP.L.forums_explainannounce}" class="forum-admin-link"><i class="fa fa-bullhorn"></i> {PHP.L.forums_announcement}</a>
                    <a href="{FORUMS_POSTS_PRIVATE_URL}" title="{PHP.L.forums_explainprivate}" class="forum-admin-link"><i class="fa fa-user-secret"></i> {PHP.L.forums_private} (#)</a>
                    <a href="{FORUMS_POSTS_CLEAR_URL}" title="{PHP.L.forums_explaindefault}" class="forum-admin-link"><i class="fa fa-refresh"></i> {PHP.L.Default}</a>
                    <a href="{FORUMS_POSTS_DELETE_URL}" title="{PHP.L.forums_explaindelete}" class="forum-admin-link confirmLink"><i class="fa fa-trash"></i> {PHP.L.Delete}</a>
                </div>
            </div>
            
            <div class="forum-move-topic">
                <form id="movetopic" action="{FORUMS_POSTS_MOVE_URL}" method="post" class="form-container">
                    <div class="forum-move-controls">
                        <span class="forum-move-label">{PHP.L.Move}:</span>
                        <div class="forum-move-select">
                            {FORUMS_POSTS_MOVEBOX_SELECT}
                        </div>
                        <div class="forum-move-options">
                            <label class="forum-move-option">
                                {FORUMS_POSTS_MOVEBOX_KEEP} {PHP.L.forums_keepmovedlink}
                            </label>
                        </div>
                        <button type="submit" class="btn"><i class="fa fa-exchange"></i> {PHP.L.Move}</button>
                    </div>
                </form>
            </div>
        </div>
        <!-- END: FORUMS_POSTS_ADMIN -->
        
        <div class="section-body">
            {FILE "{PHP.cfg.themes_dir}/{PHP.usr.theme}/warnings.tpl"}
            
            <div class="forum-tags">
                {FORUMS_POSTS_TAGS}
            </div>
            
            <div class="forum-posts">
                <div class="table-responsive">
                    <table class="forum-posts-table">
                        <thead>
                            <tr>
                                <th class="post-author-col">{PHP.L.Author}</th>
                                <th class="post-message-col">{PHP.L.Message}</th>
                            </tr>
                        </thead>
                        <tbody>
                            <!-- BEGIN: FORUMS_POSTS_ROW -->
                            <tr class="post-row">
                                <td class="post-info-cell">
                                    {FORUMS_POSTS_ROW_ANCHORLINK}
                                    <div class="post-author">
                                        <h4>
                                            <!-- IF {PHP|cot_plugin_active('whosonline')} -->
                                            <img src="themes/{PHP.theme}/img/online{FORUMS_POSTS_ROW_USER_ONLINE}.png" 
                                                 title="{PHP.L.Status}: {FORUMS_POSTS_ROW_USER_ONLINE_TITLE}" 
                                                 alt="" class="userstatus" />
                                            <!-- ENDIF -->
                                            {FORUMS_POSTS_ROW_USER_NAME}
                                        </h4>
                                    </div>
                                    <div class="post-avatar">
                                        <!-- IF {FORUMS_POSTS_ROW_USER_AVATAR} -->
                                        {FORUMS_POSTS_ROW_USER_AVATAR}
                                        <!-- ELSE -->
                                        {PHP.R.forums_noavatar}
                                        <!-- ENDIF -->
                                    </div>
                                    <div class="post-usergroup">
                                        {FORUMS_POSTS_ROW_USER_MAIN_GROUP_TITLE}
                                    </div>
                                    <div class="post-userdetails">
                                        <span class="post-user-posts">{PHP.L.forums_posts}: {FORUMS_POSTS_ROW_USER_POSTCOUNT}</span>
                                    </div>
                                </td>
                                <td class="post-content-cell">
                                    <div class="post-header">
                                        <div class="post-meta">
                                            <a name="{FORUMS_POSTS_ROW_ID}" id="{FORUMS_POSTS_ROW_POSTID}" href="{FORUMS_POSTS_ROW_IDURL}" rel="nofollow" class="post-number">#{FORUMS_POSTS_ROW_ORDER}</a>
                                            <span class="post-date">{FORUMS_POSTS_ROW_CREATION}</span>
                                            <!-- IF {FORUMS_POSTS_ROW_POSTERIP} -->
                                            <span class="post-ip">{FORUMS_POSTS_ROW_POSTERIP}</span>
                                            <!-- ENDIF -->
                                        </div>
                                        <div class="post-actions">
                                            <!-- IF {FORUMS_POSTS_ROW_QUOTE} -->
                                            {FORUMS_POSTS_ROW_QUOTE}
                                            <!-- ENDIF -->
                                            <!-- IF {FORUMS_POSTS_ROW_EDIT} -->
                                            {FORUMS_POSTS_ROW_EDIT}
                                            <!-- ENDIF -->
                                            <!-- IF {FORUMS_POSTS_ROW_DELETE} -->
                                            {FORUMS_POSTS_ROW_DELETE}
                                            <!-- ENDIF -->
                                            {FORUMS_POSTS_ROW_BOTTOM}
                                        </div>
                                    </div>
                                    <div class="post-body">
                                        {FORUMS_POSTS_ROW_TEXT}
                                    </div>
                                    <!-- IF {FORUMS_POSTS_ROW_UPDATEDBY} -->
                                    <div class="post-updated">
                                        {FORUMS_POSTS_ROW_UPDATEDBY}
                                    </div>
                                    <!-- ENDIF -->
                                    <div class="post-signature">
                                        {FORUMS_POSTS_ROW_USER_TEXT}
                                    </div>
                                </td>
                            </tr>
                            <!-- END: FORUMS_POSTS_ROW -->
                        </tbody>
                    </table>
                </div>
                
                <!-- IF {PAGINATION} -->
                <div class="pagination-container">
                    <ul class="pagination">
                        {PREVIOUS_PAGE}{PAGINATION}{NEXT_PAGE}
                    </ul>
                </div>
                <!-- ENDIF -->
            </div>
            
            <!-- BEGIN: FORUMS_POSTS_TOPICLOCKED -->
            <div class="forum-locked">
                <i class="fa fa-lock"></i> {FORUMS_POSTS_TOPICLOCKED_BODY}
            </div>
            <!-- END: FORUMS_POSTS_TOPICLOCKED -->
            
            <!-- BEGIN: FORUMS_POSTS_ANTIBUMP -->
            <div class="forum-antibump">
                <i class="fa fa-info-circle"></i> {FORUMS_POSTS_ANTIBUMP_BODY}
            </div>
            <!-- END: FORUMS_POSTS_ANTIBUMP -->
            
            <!-- BEGIN: FORUMS_POSTS_NEWPOST -->
            <div class="forum-reply">
                <div class="forum-reply-header">
                    <h3><i class="fa fa-reply"></i> {PHP.L.Reply}</h3>
                </div>
                <form action="{FORUMS_POSTS_NEWPOST_SEND}" method="post" name="newpost" class="form-container">
                    <div class="forum-editor">
                        {FORUMS_POSTS_NEWPOST_TEXT}
                    </div>
                    <div class="forum-editor-tools">
                        <!-- IF {FORUMS_POSTS_NEWPOST_PFS} -->
                        {FORUMS_POSTS_NEWPOST_PFS}
                        <!-- ENDIF -->
                        <!-- IF {FORUMS_POSTS_NEWPOST_SFS} -->
                        <span class="forum-editor-tool">{FORUMS_POSTS_NEWPOST_SFS}</span>
                        <!-- ENDIF -->
                    </div>
                    <!-- IF {PHP.cfg.forums.edittimeout} != 0 -->
                    <div class="forum-timeout-info">
                        {PHP.L.forums_edittimeoutnote} {FORUMS_POSTS_NEWPOST_EDITTIMEOUT}
                    </div>
                    <!-- ENDIF -->
                    <div class="forum-submit">
                        <button type="submit" class="btn btn-primary"><i class="fa fa-paper-plane"></i> {PHP.L.Reply}</button>
                    </div>
                </form>
            </div>
            <!-- END: FORUMS_POSTS_NEWPOST -->
        </div>
    </div>
</div>
<!-- END: MAIN -->
