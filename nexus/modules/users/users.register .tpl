<!-- BEGIN: MAIN -->
<div class="content-section">
    <div class="section-header">
        <h1><i class="fas fa-user-plus"></i> {USERS_REGISTER_TITLE}</h1>
        <!-- IF {PHP.cfg.homebreadcrumb} -->
        <div class="breadcrumbs">{USERS_REGISTER_BREADCRUMBS}</div>
        <!-- ENDIF -->
    </div>
    
    <div class="section-body">
        {FILE "{PHP.cfg.themes_dir}/{PHP.usr.theme}/warnings.tpl"}
        
        <form id="user-register" name="register" action="{USERS_REGISTER_SEND}" method="post" enctype="multipart/form-data" class="form-container">
            <div class="form-grid">
                <div class="form-row">
                    <div class="form-label">{PHP.L.Username}:</div>
                    <div class="form-field">
                        <div class="input-group">
                            <span class="input-icon"><i class="fas fa-user"></i></span>
                            {USERS_REGISTER_USER}
                        </div>
                        <span class="form-required">*</span>
                    </div>
                </div>
                
                <div class="form-row">
                    <div class="form-label">{PHP.L.users_validemail}:</div>
                    <div class="form-field">
                        <div class="input-group">
                            <span class="input-icon"><i class="fas fa-envelope"></i></span>
                            {USERS_REGISTER_EMAIL}
                        </div>
                        <span class="form-required">*</span>
                        <p class="form-hint">{PHP.L.users_validemailhint}</p>
                    </div>
                </div>
                
                <div class="form-row">
                    <div class="form-label">{PHP.L.Password}:</div>
                    <div class="form-field">
                        <div class="input-group">
                            <span class="input-icon"><i class="fas fa-lock"></i></span>
                            {USERS_REGISTER_PASSWORD}
                        </div>
                        <span class="form-required">*</span>
                    </div>
                </div>
                
                <div class="form-row">
                    <div class="form-label">{PHP.L.users_confirmpass}:</div>
                    <div class="form-field">
                        <div class="input-group">
                            <span class="input-icon"><i class="fas fa-check-circle"></i></span>
                            {USERS_REGISTER_PASSWORDREPEAT}
                        </div>
                        <span class="form-required">*</span>
                    </div>
                </div>
                
                <!-- IF {PHP.cfg.captchamain|cot_plugin_active($this)} -->
                <div class="form-row captcha-row">
                    <div class="form-label">Güvenlik Doğrulaması:</div>
                    <div class="form-field">
                        <div class="captcha-container">
                            {USERS_REGISTER_VERIFY_IMG}
                        </div>
                        <div class="input-group captcha-input">
                            <span class="input-icon"><i class="fas fa-shield-alt"></i></span>
                            {USERS_REGISTER_VERIFY_INPUT}
                        </div>
                        <span class="form-required">*</span>
                    </div>
                </div>
                <!-- ENDIF -->
            </div>
            
            <div class="form-actions">
                <button type="submit" class="btn btn-primary"><i class="fas fa-user-plus"></i> {PHP.L.Submit}</button>
                <a href="{PHP|cot_url('login')}" class="btn btn-outline"><i class="fas fa-sign-in-alt"></i> {PHP.L.Login}</a>
            </div>
            
            <div class="form-info">
                <p><i class="fas fa-info-circle"></i> <span class="form-required">*</span> işaretli alanlar zorunludur.</p>
            </div>
        </form>
    </div>
</div>

<style>
/* Register Form Özel Stilleri */
.captcha-row {
    margin-top: var(--spacing-6);
    border-top: 1px solid var(--border-color);
    padding-top: var(--spacing-6);
}

.captcha-container {
    margin-bottom: var(--spacing-2);
    background-color: var(--lighter-grey);
    padding: var(--spacing-2);
    border-radius: var(--border-radius);
    display: inline-block;
}

.form-required {
    color: var(--danger-color);
    margin-left: var(--spacing-1);
    font-weight: var(--font-weight-bold);
}

.form-info {
    margin-top: var(--spacing-6);
    padding: var(--spacing-3);
    background-color: var(--lighter-grey);
    border-radius: var(--border-radius);
    color: var(--text-secondary);
    font-size: var(--font-size-sm);
}

.form-info p {
    margin: 0;
    display: flex;
    align-items: center;
}

.form-info i {
    margin-right: var(--spacing-2);
    color: var(--info-color);
}

.input-icon {
    position: absolute;
    top: 50%;
    left: var(--spacing-3);
    transform: translateY(-50%);
    color: var(--text-secondary);
    z-index: 1;
}

.input-group input, 
.captcha-input input {
    padding-left: var(--spacing-8) !important;
}

/* Girişleri daha gösterişli yap */
.form-field input[type="text"],
.form-field input[type="email"],
.form-field input[type="password"] {
    background-color: var(--bg-color);
    transition: all 0.3s ease;
    box-shadow: var(--shadow-sm);
}

.form-field input[type="text"]:focus,
.form-field input[type="email"]:focus,
.form-field input[type="password"]:focus {
    transform: translateY(-2px);
    box-shadow: var(--shadow-md);
}

.btn-outline {
    background-color: transparent;
    border: 1px solid var(--primary-color);
    color: var(--primary-color);
}

.btn-outline:hover {
    background-color: var(--primary-light);
    color: white;
    border-color: var(--primary-light);
}
</style>
<!-- END: MAIN -->
