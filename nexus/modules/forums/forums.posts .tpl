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
                                    <h3 class="author-name">
                                        <!-- IF {PHP|cot_plugin_active('whosonline')} -->
                                        <img src="themes/{PHP.theme}/img/online{FORUMS_POSTS_ROW_USER_ONLINE}.png" 
                                             title="{PHP.L.Status}: {FORUMS_POSTS_ROW_USER_ONLINE_TITLE}" 
                                             alt="" class="userstatus" />
                                        <!-- ENDIF -->
                                        {FORUMS_POSTS_ROW_USER_NAME}
                                    </h3>
                                </div>
                                <div class="post-avatar-container">
                                    <div class="post-avatar">
                                        <!-- IF {FORUMS_POSTS_ROW_USER_AVATAR} -->
                                        {FORUMS_POSTS_ROW_USER_AVATAR}
                                        <!-- ELSE -->
                                        {PHP.R.forums_noavatar}
                                        <!-- ENDIF -->
                                        <div class="avatar-overlay">
                                            <a href="{FORUMS_POSTS_ROW_USER_MAINGRP|cot_url('users','m=details&id=$this')}" class="profile-link">
                                                <i class="fas fa-user-circle"></i> Profili Görüntüle
                                            </a>
                                        </div>
                                    </div>
                                </div>
                                <div class="post-usergroup badge">
                                    {FORUMS_POSTS_ROW_USER_MAIN_GROUP_TITLE}
                                </div>
                                <div class="user-details-table">
                                    <table>
                                        <tr>
                                            <td><i class="fas fa-comments"></i> {PHP.L.forums_posts}:</td>
                                            <td>{FORUMS_POSTS_ROW_USER_POSTCOUNT}</td>
                                        </tr>  
                                        <tr>
                                            <td><i class="fas fa-globe"></i> {PHP.L.Country}:</td>
                                            <td>{FORUMS_POSTS_ROW_USER_COUNTRY}</td>
                                        </tr>
                                        <tr>
                                            <td><i class="fas fa-calendar-alt"></i> {PHP.L.Registered}:</td>
                                            <td>{FORUMS_POSTS_ROW_USER_REGDATE}</td>
                                        </tr>
                                    </table>
                                </div>
                                <div class="user-contact-buttons">
                                    <!-- IF {PHP|cot_module_active('pm')} -->
                                    <a href="{PHP|cot_url('pm','m=send&to=$FORUMS_POSTS_ROW_USER_ID')}" class="contact-btn pm-btn">
                                        <i class="fas fa-paper-plane"></i> {PHP.L.PM}
                                    </a>
                                    <!-- ENDIF -->
                                    <!-- IF {FORUMS_POSTS_ROW_USER_EMAIL} -->
                                    <a href="mailto:{FORUMS_POSTS_ROW_USER_EMAIL}" class="contact-btn email-btn">
                                        <i class="fas fa-at"></i> {PHP.L.Email}
                                    </a>
                                    <!-- ENDIF -->
                                    <!-- IF {FORUMS_POSTS_ROW_USER_WEBSITE} -->
                                    <a href="{FORUMS_POSTS_ROW_USER_WEBSITE}" target="_blank" class="contact-btn website-btn">
                                        <i class="fas fa-globe"></i> {PHP.L.Website}
                                    </a>
                                    <!-- ENDIF -->
                                </div>
                            </td>
                            <td class="post-content-cell">
                                <div class="post-header">
                                    <div class="post-meta">
                                        <a name="{FORUMS_POSTS_ROW_ID}" id="{FORUMS_POSTS_ROW_POSTID}" href="{FORUMS_POSTS_ROW_IDURL}" rel="nofollow" class="post-number">#{FORUMS_POSTS_ROW_ORDER}</a>
                                        <span class="post-date"><i class="far fa-clock"></i> {FORUMS_POSTS_ROW_CREATION}</span>
                                        <!-- IF {FORUMS_POSTS_ROW_POSTERIP} -->
                                        <span class="post-ip"><i class="fas fa-network-wired"></i> {FORUMS_POSTS_ROW_POSTERIP}</span>
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
                                    <i class="fas fa-edit"></i> {FORUMS_POSTS_ROW_UPDATEDBY}
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
<style>
.post-info-cell {
    width: 240px;
    padding: 20px;
    background-color: var(--lighter-grey, #f8f9fa);
    border-right: 1px solid var(--border-color, #e0e0e0);
    text-align: center;
}

.author-name {
    font-size: 1.4rem;
    margin-bottom: 15px;
    color: var(--primary-color, #2c3e50);
    font-weight: 600;
    position: relative;
    display: inline-block;
}

.author-name:after {
    content: '';
    position: absolute;
    width: 50%;
    height: 2px;
    bottom: -5px;
    left: 25%;
    background-color: var(--primary-color, #2c3e50);
    transition: all 0.3s ease;
}

.author-name:hover:after {
    width: 80%;
    left: 10%;
}

.post-avatar-container {
    margin: 15px auto;
    width: 250px;
    height: 250px;
    position: relative;
    overflow: hidden;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0,0,0,0.1);
}

.post-avatar {
    width: 100%;
    height: 100%;
    transition: transform 0.5s ease;
}

.post-avatar img {
    width: 100%;
    height: 100%;
    object-fit: cover;
}

.avatar-overlay {
    position: absolute;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    background-color: rgba(0,0,0,0.6);
    display: flex;
    align-items: center;
    justify-content: center;
    opacity: 0;
    transition: opacity 0.3s ease;
}

.post-avatar-container:hover .post-avatar {
    transform: scale(1.1);
}

.post-avatar-container:hover .avatar-overlay {
    opacity: 1;
}

.profile-link {
    display: inline-block;
    padding: 8px 16px;
    background-color: var(--primary-color, #2c3e50);
    color: white !important;
    text-decoration: none;
    border-radius: 20px;
    font-weight: 500;
    transition: all 0.3s ease;
    transform: translateY(20px);
    opacity: 0;
}

.post-avatar-container:hover .profile-link {
    transform: translateY(0);
    opacity: 1;
    transition-delay: 0.1s;
}

.profile-link:hover {
    background-color: var(--primary-dark, #1a242f);
    box-shadow: 0 4px 8px rgba(0,0,0,0.2);
    color: white !important;
}

.profile-link i {
    margin-right: 5px;
}

.post-usergroup {
    margin: 15px 0;
    font-weight: 500;
    color: white !important;
    display: inline-block;
    padding: 5px 15px;
    border-radius: 20px;
    background-color: var(--primary-color, #2c3e50);
    box-shadow: 0 2px 4px rgba(0,0,0,0.1);
    min-width: 80px; /* Minimum genişlik ekledim */
    text-align: center; /* Ortalamak için */
}
 
.post-usergroup  a {
  color: #000;
  text-decoration:
none;
  transition: color var(--transition-fast) var(--transition-timing);
}
.post-usergroup span {
    color: white !important;
}

.user-details-table {
    margin: 20px 0;
    border: 1px solid var(--border-color-light, #e9ecef);
    border-radius: 8px;
    overflow: hidden;
    box-shadow: 0 2px 4px rgba(0,0,0,0.05);
}

.user-details-table table {
    width: 100%;
    border-collapse: collapse;
}

.user-details-table td {
    padding: 6px 10px;
    font-size: 0.85rem;
    border-bottom: 1px solid var(--border-color-light, #e9ecef);
}

.user-details-table tr:last-child td {
    border-bottom: none;
}

.user-details-table td:first-child {
    font-weight: 500;
    color: var(--text-secondary, #6c757d);
    text-align: left;
}

.user-details-table td:last-child {
    font-weight: 600;
    color: var(--text-primary, #343a40);
    text-align: right;
}

.user-details-table i {
    margin-right: 5px;
    color: var(--primary-color, #2c3e50);
}

.user-contact-buttons {
    display: flex;
    flex-wrap: wrap;
    justify-content: center;
    gap: 8px;
    margin-top: 15px;
}

.contact-btn {
    display: inline-flex;
    align-items: center;
    justify-content: center;
    padding: 6px 12px;
    border-radius: 20px;
    text-decoration: none;
    font-size: 0.85rem;
    font-weight: 500;
    transition: all 0.3s ease;
}

.contact-btn i {
    margin-right: 5px;
}

.pm-btn {
    background-color: #3498db;
    color: white !important;
}

.pm-btn:hover {
    background-color: #2980b9;
    transform: translateY(-2px);
    box-shadow: 0 4px 6px rgba(0,0,0,0.1);
}

.email-btn {
    background-color: #e74c3c;
    color: white !important;
}

.email-btn:hover {
    background-color: #c0392b;
    transform: translateY(-2px);
    box-shadow: 0 4px 6px rgba(0,0,0,0.1);
}

.website-btn {
    background-color: #2ecc71;
    color: white !important;
}

.website-btn:hover {
    background-color: #27ae60;
    transform: translateY(-2px);
    box-shadow: 0 4px 6px rgba(0,0,0,0.1);
}

.post-content-cell {
    padding: 20px;
    position: relative;
}

.post-header {
    display: flex;
    justify-content: space-between;
    align-items: center;
    margin-bottom: 15px;
    padding-bottom: 10px;
    border-bottom: 1px solid var(--border-color-light, #e9ecef);
}

.post-meta {
    display: flex;
    align-items: center;
    gap: 15px;
    font-size: 0.9rem;
    color: var(--text-secondary, #6c757d);
}

.post-number {
    font-weight: 600;
    color: var(--primary-color, #2c3e50);
    text-decoration: none;
}

.post-date, .post-ip {
    display: inline-flex;
    align-items: center;
}

.post-date i, .post-ip i {
    margin-right: 5px;
}

.post-actions {
    display: flex;
    gap: 8px;
}

.post-body {
    font-size: 1rem;
    line-height: 1.6;
    margin-bottom: 20px;
}

.post-updated {
    font-size: 0.85rem;
    color: var(--text-secondary, #6c757d);
    font-style: italic;
    margin-bottom: 15px;
    padding: 8px 12px;
    background-color: var(--lighter-grey, #f8f9fa);
    border-radius: 4px;
}

.post-signature {
    margin-top: 20px;
    padding-top: 15px;
    border-top: 1px dashed var(--border-color-light, #e9ecef);
    font-size: 0.9rem;
    font-style: italic;
    color: var(--text-secondary, #6c757d);
}

@media (max-width: 768px) {
    .post-row {
        display: flex;
        flex-direction: column;
    }
    
    .post-info-cell {
        width: 100%;
        border-right: none;
        border-bottom: 1px solid var(--border-color, #e0e0e0);
    }
    
    .post-avatar-container {
        width: 180px;
        height: 180px;
    }
    
    .user-details-table {
        max-width: 400px;
        margin: 15px auto;
    }
}
</style>
<!-- END: MAIN -->
