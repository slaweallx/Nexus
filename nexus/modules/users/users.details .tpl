<!-- BEGIN: MAIN -->
<div class="content-section">
    <div class="section-header">
        <h1><i class="fas fa-user"></i> {USERS_DETAILS_TITLE}</h1>
        <div class="header-actions">
            <!-- BEGIN: USERS_DETAILS_ADMIN -->
            {USERS_DETAILS_ADMIN_EDIT}
            <!-- END: USERS_DETAILS_ADMIN -->
        </div>
        <div class="breadcrumbs">{USERS_DETAILS_BREADCRUMBS}</div>
    </div>
    
    <div class="section-body">
        <div class="user-profile-container">
            <!-- Banner Section -->
            <div class="user-banner">
                <!-- IF {USERS_DETAILS_PHOTO} -->
                <div class="banner-image">
                    {USERS_DETAILS_PHOTO}
                </div>
                <!-- ELSE -->
                <div class="banner-image banner-placeholder">
                    <div class="banner-overlay"></div>
                </div>
                <!-- ENDIF -->
                
                <!-- User Avatar on Banner -->
                <div class="banner-avatar">
                    <!-- IF {USERS_DETAILS_AVATAR} -->
                    <div class="user-avatar" style="width:150px; height:150px;">
                        {USERS_DETAILS_AVATAR}
                    </div>
                    <!-- ELSE -->
                    <div class="user-avatar user-avatar-placeholder">
                        <i class="fas fa-user-circle"></i>
                    </div>
                    <!-- ENDIF -->
                </div>
                
                <!-- User Basic Info on Banner -->
                <div class="banner-user-info">
                    <h2 class="user-name">{USERS_DETAILS_TITLE}</h2>
                    
                    <div class="user-main-group">
                        <span class="main-group-badge">{USERS_DETAILS_MAIN_GROUP}</span>
                    </div>
                    
                    <!-- IF {PHP|cot_module_active('pm')} -->
                    <div class="user-actions">
                        <div class="pm-user">
                            {USERS_DETAILS_PM}
                        </div>
                    </div>
                    <!-- ENDIF -->
                </div>
            </div>
            
            <div class="user-profile-grid">
                <!-- Left Sidebar - User Groups -->
                <div class="user-profile-sidebar">
                    <!-- User Groups -->
                    <div class="info-panel">
                        <div class="info-panel-header">
                            <i class="fas fa-users"></i> {PHP.L.Groupsmembership}
                        </div>
                        <div class="info-panel-body">
                            <div class="group-list">
                                {USERS_DETAILS_GROUPS}
                            </div>
                        </div>
                    </div>
                </div>
                
                <!-- Right Content - User Details -->
                <div class="user-profile-details">
                    <div class="info-panel">
                        <div class="info-panel-header">
                            <i class="fas fa-info-circle"></i> {PHP.L.Information}
                        </div>
                        <div class="info-panel-body">
                            <div class="info-grid">
                                <div class="info-item">
                                    <div class="info-icon"><i class="fas fa-globe"></i></div>
                                    <div class="info-content">
                                        <div class="info-label">{PHP.L.Country}</div>
                                        <div class="info-value">
                                            <span class="country-flag">{USERS_DETAILS_COUNTRY_FLAG}</span>
                                            <span class="country-name">{USERS_DETAILS_COUNTRY}</span>
                                        </div>
                                    </div>
                                </div>
                                
                                <div class="info-item">
                                    <div class="info-icon"><i class="fas fa-clock"></i></div>
                                    <div class="info-content">
                                        <div class="info-label">{PHP.L.Timezone}</div>
                                        <div class="info-value">{USERS_DETAILS_TIMEZONE}</div>
                                    </div>
                                </div>
                                
                                <div class="info-item">
                                    <div class="info-icon"><i class="fas fa-birthday-cake"></i></div>
                                    <div class="info-content">
                                        <div class="info-label">{PHP.L.Birthdate}</div>
                                        <div class="info-value">{USERS_DETAILS_BIRTHDATE}</div>
                                    </div>
                                </div>
                                
                                <div class="info-item">
                                    <div class="info-icon"><i class="fas fa-user-clock"></i></div>
                                    <div class="info-content">
                                        <div class="info-label">{PHP.L.Age}</div>
                                        <div class="info-value">{USERS_DETAILS_AGE}</div>
                                    </div>
                                </div>
                                
                                <div class="info-item">
                                    <div class="info-icon"><i class="fas fa-venus-mars"></i></div>
                                    <div class="info-content">
                                        <div class="info-label">{PHP.L.Gender}</div>
                                        <div class="info-value">{USERS_DETAILS_GENDER}</div>
                                    </div>
                                </div>
                                
                                <div class="info-item">
                                    <div class="info-icon"><i class="fas fa-calendar-alt"></i></div>
                                    <div class="info-content">
                                        <div class="info-label">{PHP.L.Registered}</div>
                                        <div class="info-value">{USERS_DETAILS_REGDATE}</div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    
                    <!-- Signature Panel -->
                    <!-- IF {USERS_DETAILS_TEXT} -->
                    <div class="info-panel">
                        <div class="info-panel-header">
                            <i class="fas fa-signature"></i> {PHP.L.Signature}
                        </div>
                        <div class="info-panel-body">
                            <div class="user-signature">
                                {USERS_DETAILS_TEXT}
                            </div>
                        </div>
                    </div>
                    <!-- ENDIF -->
                    
                    <!-- Additional User Stats Panel - Can be extended with plugins -->
                    <div class="info-panel">
                        <div class="info-panel-header">
                            <i class="fas fa-chart-bar"></i> {PHP.L.Statistics}
                        </div>
                        <div class="info-panel-body">
                            <div class="stats-grid">
                                <!-- The HTML below is a placeholder for stats that may come from plugins -->
                                <!-- You can integrate forum posts, page counts, etc. here -->
                                <div class="stat-item">
                                    <div class="stat-icon"><i class="fas fa-comments"></i></div>
                                    <div class="stat-content">
                                        <div class="stat-value">-</div>
                                        <div class="stat-label">{PHP.L.Forums}</div>
                                    </div>
                                </div>
                                
                                <div class="stat-item">
                                    <div class="stat-icon"><i class="fas fa-file-alt"></i></div>
                                    <div class="stat-content">
                                        <div class="stat-value">-</div>
                                        <div class="stat-label">{PHP.L.Pages}</div>
                                    </div>
                                </div>
                                
                                <div class="stat-item">
                                    <div class="stat-icon"><i class="fas fa-thumbs-up"></i></div>
                                    <div class="stat-content">
                                        <div class="stat-value">-</div>
                                        <div class="stat-label">{PHP.L.Reputation}</div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<style>
/* User Profile Details Styles */
.user-profile-container {
    display: flex;
    flex-direction: column;
    gap: var(--spacing-6);
}

.user-banner {
    position: relative;
    width: 100%;
    height: 250px;
    border-radius: var(--border-radius);
    box-shadow: var(--shadow);
    overflow: hidden;
    margin-bottom: var(--spacing-6);
}

.banner-image {
    width: 100%;
    height: 100%;
    position: absolute;
    top: 0;
    left: 0;
}

.banner-image img {
    width: 100%;
    height: 100%;
    object-fit: cover;
    object-position: center;
}

.banner-placeholder {
    background: linear-gradient(to bottom right, var(--primary-color), var(--primary-dark));
}

.banner-overlay {
    position: absolute;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    background: linear-gradient(to bottom, rgba(0,0,0,0.1), rgba(0,0,0,0.7));
}

.banner-avatar {
    position: absolute;
    bottom: 20px;
    left: 30px;
    z-index: 2;
}

.banner-user-info {
    position: absolute;
    bottom: 30px;
    left: 180px;
    z-index: 2;
    color: var(--text-white);
    text-shadow: 1px 1px 3px rgba(0,0,0,0.5);
}

.user-avatar img {
    width: 150px;
    height: 150px;
    border-radius: 50%;
    border: 4px solid var(--bg-color);
    box-shadow: var(--shadow);
    background-color: var(--bg-color);
    object-fit: cover;
}

.user-avatar-placeholder {
    display: flex;
    align-items: center;
    justify-content: center;
    width: 120px;
    height: 120px;
    background-color: var(--lighter-grey);
    border-radius: 50%;
    border: 4px solid var(--bg-color);
    box-shadow: var(--shadow);
}

.user-avatar-placeholder i {
    font-size: 60px;
    color: var(--primary-color);
}

.user-profile-grid {
    display: grid;
    grid-template-columns: 300px 1fr;
    gap: var(--spacing-6);
}

.user-profile-sidebar {
    display: flex;
    flex-direction: column;
    gap: var(--spacing-4);
}

.user-name {
    margin: 0 0 var(--spacing-2);
    font-size: var(--font-size-xl);
}

.user-main-group {
    margin: var(--spacing-2) 0;
}

.main-group-badge {
    display: inline-block;
    padding: var(--spacing-1) var(--spacing-2);
    background-color: var(--primary-light);
    color: var(--text-white);
    border-radius: var(--border-radius-full);
    font-size: var(--font-size-sm);
    font-weight: var(--font-weight-medium);
}

.user-actions {
    margin-top: var(--spacing-3);
}

.pm-user a {
    display: inline-flex;
    align-items: center;
    padding: var(--spacing-2) var(--spacing-4);
    background-color: var(--primary-color);
    color: var(--text-white);
    border-radius: var(--border-radius);
    text-decoration: none;
    font-weight: var(--font-weight-medium);
    transition: all 0.3s ease;
}

.pm-user a:hover {
    background-color: var(--primary-dark);
    transform: translateY(-2px);
    box-shadow: var(--shadow);
}

.pm-user a i {
    margin-right: var(--spacing-2);
}

.info-panel {
    background-color: var(--bg-color);
    border-radius: var(--border-radius);
    box-shadow: var(--shadow);
    overflow: hidden;
    margin-bottom: var(--spacing-4);
}

.info-panel:last-child {
    margin-bottom: 0;
}

.info-panel-header {
    background-color: var(--lighter-grey);
    padding: var(--spacing-3) var(--spacing-4);
    border-bottom: 1px solid var(--border-color);
    font-weight: var(--font-weight-medium);
    color: var(--text-primary);
    display: flex;
    align-items: center;
}

.info-panel-header i {
    margin-right: var(--spacing-2);
    color: var(--primary-color);
}

.info-panel-body {
    padding: var(--spacing-4);
}

.group-list {
    display: flex;
    flex-wrap: wrap;
    gap: var(--spacing-2);
}

.group-list a {
    display: inline-block;
    padding: var(--spacing-1) var(--spacing-2);
    background-color: var(--lighter-grey);
    color: var(--text-secondary);
    border-radius: var(--border-radius-full);
    font-size: var(--font-size-sm);
    text-decoration: none;
    transition: all 0.3s ease;
}

.group-list a:hover {
    background-color: var(--primary-light);
    color: var(--text-white);
    transform: translateY(-2px);
}

.info-grid {
    display: grid;
    grid-template-columns: repeat(auto-fill, minmax(250px, 1fr));
    gap: var(--spacing-4);
}

.info-item {
    display: flex;
    align-items: flex-start;
    gap: var(--spacing-3);
}

.info-icon {
    width: 40px;
    height: 40px;
    background-color: var(--lighter-grey);
    border-radius: var(--border-radius);
    display: flex;
    align-items: center;
    justify-content: center;
    color: var(--primary-color);
    font-size: var(--font-size-lg);
    flex-shrink: 0;
}

.info-content {
    flex: 1;
}

.info-label {
    font-size: var(--font-size-sm);
    color: var(--text-secondary);
    margin-bottom: var(--spacing-1);
}

.info-value {
    color: var(--text-primary);
    font-weight: var(--font-weight-medium);
}

.country-flag {
    margin-right: var(--spacing-2);
}

.user-signature {
    padding: var(--spacing-2);
    background-color: var(--lighter-grey);
    border-radius: var(--border-radius-sm);
    border-left: 3px solid var(--primary-light);
    font-style: italic;
}

.stats-grid {
    display: grid;
    grid-template-columns: repeat(auto-fill, minmax(120px, 1fr));
    gap: var(--spacing-4);
}

.stat-item {
    display: flex;
    flex-direction: column;
    align-items: center;
    text-align: center;
}

.stat-icon {
    width: 50px;
    height: 50px;
    background-color: var(--lighter-grey);
    border-radius: 50%;
    display: flex;
    align-items: center;
    justify-content: center;
    color: var(--primary-color);
    font-size: var(--font-size-xl);
    margin-bottom: var(--spacing-2);
}

.stat-value {
    font-size: var(--font-size-xl);
    font-weight: var(--font-weight-bold);
    color: var(--text-primary);
}

.stat-label {
    font-size: var(--font-size-sm);
    color: var(--text-secondary);
}

.text-center {
    text-align: center;
}

.header-actions {
    display: flex;
    align-items: center;
}

.header-actions a {
    display: inline-flex;
    align-items: center;
    padding: var(--spacing-1) var(--spacing-3);
    background-color: var(--primary-color);
    color: var(--text-white);
    border-radius: var(--border-radius);
    text-decoration: none;
    font-weight: var(--font-weight-medium);
    font-size: var(--font-size-sm);
    transition: all 0.3s ease;
}

.header-actions a:hover {
    background-color: var(--primary-dark);
    transform: translateY(-2px);
    box-shadow: var(--shadow-sm);
}

.header-actions a i {
    margin-right: var(--spacing-2);
}

/* Mobile responsive styles */
@media (max-width: 992px) {
    .user-profile-grid {
        grid-template-columns: 1fr;
    }
    
    .info-grid {
        grid-template-columns: 1fr;
    }
    
    .banner-user-info {
        left: 170px;
    }
}

@media (max-width: 768px) {
    .stats-grid {
        grid-template-columns: repeat(2, 1fr);
    }
    
    .banner-user-info {
        left: 20px;
        top: 30px;
    }
    
    .banner-avatar {
        bottom: -40px;
        left: 20px;
    }
    
    .user-banner {
        margin-bottom: var(--spacing-10);
    }
}

@media (max-width: 480px) {
    .user-avatar img,
    .user-avatar-placeholder {
        width: 100px;
        height: 100px;
    }
    
    .info-panel-body {
        padding: var(--spacing-3);
    }
    
    .user-name {
        font-size: var(--font-size-lg);
    }
    
    .banner-user-info {
        left: 130px;
    }
}
</style>
<!-- END: MAIN -->
