<!-- BEGIN: MAIN -->
<div class="content-section">
    <div class="section-header">
        <h1><i class="fas fa-user-edit"></i> {USERS_PROFILE_TITLE}</h1>
        <div class="breadcrumbs">{USERS_PROFILE_BREADCRUMBS}</div>
    </div>
    
    <div class="section-body">
        {FILE "{PHP.cfg.themes_dir}/{PHP.usr.theme}/warnings.tpl"}
        
        <form action="{USERS_PROFILE_FORM_SEND}" method="post" enctype="multipart/form-data" name="profile" class="form-container">
            <input type="hidden" name="userid" value="{USERS_PROFILE_ID}"/>
            
            <div class="profile-grid">
                <div class="profile-sidebar">
                    <div class="profile-avatar-container">
                        <!-- IF {USERS_PROFILE_AVATAR} -->
                        <div class="profile-avatar">
                            <h3><i class="fas fa-user-circle"></i> {PHP.L.Avatar}</h3>
                            <div class="avatar-preview">
                                {USERS_PROFILE_AVATAR}
                            </div>
                        </div>
                        <!-- ENDIF -->
                        
                        <!-- IF {USERS_PROFILE_PHOTO} -->
                        <div class="profile-photo">
                            <h3><i class="fas fa-camera"></i> {PHP.L.Photo}</h3>
                            <div class="photo-preview">
                                {USERS_PROFILE_PHOTO}
                            </div>
                        </div>
                        <!-- ENDIF -->
                    </div>
                    
                    <div class="profile-info-card">
                        <div class="info-card-header">
                            <i class="fas fa-info-circle"></i> {PHP.L.Information}
                        </div>
                        <div class="info-card-body">
                            <div class="info-item">
                                <div class="info-label">{PHP.L.Username}:</div>
                                <div class="info-value">{USERS_PROFILE_NAME}</div>
                            </div>
                            
                            <div class="info-item">
                                <div class="info-label">{PHP.L.Registered}:</div>
                                <div class="info-value">{USERS_PROFILE_REGDATE}</div>
                            </div>
                            
                            <div class="info-item">
                                <div class="info-label">{PHP.L.Groupsmembership}:</div>
                                <div class="info-value" id="usergrouplist">
                                    {USERS_PROFILE_GROUPS}
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                
                <div class="profile-main">
                    <div class="profile-section">
                        <div class="profile-section-header">
                            <h3><i class="fas fa-cog"></i> {PHP.L.Settings}</h3>
                        </div>
                        <div class="profile-section-body">
                            <!-- BEGIN: USERS_PROFILE_EMAILCHANGE -->
                            <div class="form-row">
                                <div class="form-label">{PHP.L.Email}:</div>
                                <div class="form-field" id="emailtd">
                                    <div class="email-container">
                                        <div class="current-email">
                                            <div class="input-group">
                                                <span class="input-icon"><i class="fas fa-envelope"></i></span>
                                                {USERS_PROFILE_EMAIL}
                                            </div>
                                        </div>
                                        
                                        <!-- BEGIN: USERS_PROFILE_EMAILPROTECTION -->
                                        <div class="email-password">
                                            <div class="input-group">
                                                <span class="input-icon"><i class="fas fa-key"></i></span>
                                                {USERS_PROFILE_EMAILPASS}
                                            </div>
                                            <div class="form-hint">{PHP.themelang.usersprofile_Emailpassword}</div>
                                        </div>
                                        
                                        <div class="email-notes info-box" id="emailnotes">
                                            <i class="fas fa-info-circle"></i> {PHP.themelang.usersprofile_Emailnotes}
                                        </div>
                                        <!-- END: USERS_PROFILE_EMAILPROTECTION -->
                                    </div>
                                </div>
                            </div>
                            <!-- END: USERS_PROFILE_EMAILCHANGE -->
                            
                            <div class="form-row">
                                <div class="form-label">{PHP.L.users_hideemail}:</div>
                                <div class="form-field">
                                    <div class="toggle-switch">
                                        {USERS_PROFILE_HIDEEMAIL}
                                    </div>
                                </div>
                            </div>
                            
                            <!-- IF {PHP|cot_module_active('pm')} -->
                            <div class="form-row">
                                <div class="form-label">{PHP.L.users_pmnotify}:</div>
                                <div class="form-field">
                                    <div class="toggle-switch">
                                        {USERS_PROFILE_PMNOTIFY}
                                    </div>
                                    <p class="form-hint">{PHP.L.users_pmnotifyhint}</p>
                                </div>
                            </div>
                            <!-- ENDIF -->
                            
                            <!-- IF !{PHP.cfg.forcedefaulttheme} -->
                            <div class="form-row">
                                <div class="form-label">{PHP.L.Theme}:</div>
                                <div class="form-field">
                                    <div class="select-wrapper">
                                        <span class="input-icon"><i class="fas fa-palette"></i></span>
                                        {USERS_PROFILE_THEME}
                                    </div>
                                </div>
                            </div>
                            <!-- ENDIF -->
                            
                            <div class="form-row">
                                <div class="form-label">{PHP.L.Language}:</div>
                                <div class="form-field">
                                    <div class="select-wrapper">
                                        <span class="input-icon"><i class="fas fa-language"></i></span>
                                        {USERS_PROFILE_LANG}
                                    </div>
                                </div>
                            </div>
                            
                            <div class="form-row">
                                <div class="form-label">{PHP.L.Country}:</div>
                                <div class="form-field">
                                    <div class="select-wrapper">
                                        <span class="input-icon"><i class="fas fa-globe"></i></span>
                                        {USERS_PROFILE_COUNTRY}
                                    </div>
                                </div>
                            </div>
                            
                            <div class="form-row">
                                <div class="form-label">{PHP.L.Timezone}:</div>
                                <div class="form-field">
                                    <div class="select-wrapper">
                                        <span class="input-icon"><i class="fas fa-clock"></i></span>
                                        {USERS_PROFILE_TIMEZONE}
                                    </div>
                                </div>
                            </div>
                            
                            <div class="form-row">
                                <div class="form-label">{PHP.L.Birthdate}:</div>
                                <div class="form-field">
                                    <div class="input-group">
                                        <span class="input-icon"><i class="fas fa-birthday-cake"></i></span>
                                        {USERS_PROFILE_BIRTHDATE}
                                    </div>
                                </div>
                            </div>
                            
                            <div class="form-row">
                                <div class="form-label">{PHP.L.Gender}:</div>
                                <div class="form-field">
                                    <div class="select-wrapper">
                                        <span class="input-icon"><i class="fas fa-venus-mars"></i></span>
                                        {USERS_PROFILE_GENDER}
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    
                    <div class="profile-section">
                        <div class="profile-section-header">
                            <h3><i class="fas fa-signature"></i> {PHP.L.Signature}</h3>
                        </div>
                        <div class="profile-section-body">
                            <div class="form-row editor-row">
                                <div class="form-editor">{USERS_PROFILE_TEXT}</div>
                            </div>
                        </div>
                    </div>
                    
                    <div class="profile-section">
                        <div class="profile-section-header">
                            <h3><i class="fas fa-lock"></i> {PHP.L.users_newpass}</h3>
                        </div>
                        <div class="profile-section-body" id="change-password">
                            <div class="form-row">
                                <div class="form-label">{PHP.L.users_oldpasshint}:</div>
                                <div class="form-field">
                                    <div class="input-group">
                                        <span class="input-icon"><i class="fas fa-key"></i></span>
                                        {USERS_PROFILE_OLDPASS}
                                    </div>
                                </div>
                            </div>
                            
                            <div class="password-fields">
                                <div class="form-row">
                                    <div class="form-label">{PHP.L.users_newpasshint2}:</div>
                                    <div class="form-field">
                                        <div class="input-group">
                                            <span class="input-icon"><i class="fas fa-lock"></i></span>
                                            {USERS_PROFILE_NEWPASS1} 
                                        </div>
                                    </div>
                                </div>
                                
                                <div class="form-row">
                                    <div class="form-label">{PHP.L.Confirm}:</div>
                                    <div class="form-field">
                                        <div class="input-group">
                                            <span class="input-icon"><i class="fas fa-check-circle"></i></span>
                                            {USERS_PROFILE_NEWPASS2}
                                        </div>
                                    </div>
                                </div>
                            </div>
                            
                            <div class="password-hint info-box">
                                <i class="fas fa-info-circle"></i> {PHP.L.users_newpasshint1}
                            </div>
                        </div>
                    </div>
                    
                    <div class="form-actions">
                        <button type="submit" class="btn btn-primary"><i class="fas fa-save"></i> {PHP.L.Update}</button>
                        <a href="{PHP|cot_url('users')}" class="btn btn-outline"><i class="fas fa-times"></i> {PHP.L.Cancel}</a>
                    </div>
                </div>
            </div>
        </form>
    </div>
</div>

<style>
/* User Profile Styles */
.profile-grid {
    display: grid;
    grid-template-columns: 300px 1fr;
    gap: var(--spacing-6);
}

.profile-sidebar {
    display: flex;
    flex-direction: column;
    gap: var(--spacing-4);
}

.profile-avatar-container {
    display: flex;
    flex-direction: column;
    gap: var(--spacing-4);
}

.profile-avatar, .profile-photo {
    background-color: var(--lighter-grey);
    border-radius: var(--border-radius);
    padding: var(--spacing-4);
    box-shadow: var(--shadow-sm);
}

.profile-avatar h3, .profile-photo h3 {
    font-size: var(--font-size-base);
    margin-top: 0;
    margin-bottom: var(--spacing-3);
    display: flex;
    align-items: center;
    color: var(--text-primary);
}

.profile-avatar h3 i, .profile-photo h3 i {
    margin-right: var(--spacing-2);
    color: var(--primary-color);
}

.avatar-preview, .photo-preview {
    text-align: center;
}

.avatar-preview img, .photo-preview img {
    max-width: 100%;
    height: auto;
    border-radius: var(--border-radius);
    box-shadow: var(--shadow-sm);
}

.profile-info-card {
    background-color: var(--bg-color);
    border-radius: var(--border-radius);
    box-shadow: var(--shadow);
    overflow: hidden;
}

.info-card-header {
    background-color: var(--primary-color);
    color: var(--text-white);
    padding: var(--spacing-3) var(--spacing-4);
    font-weight: var(--font-weight-semibold);
    display: flex;
    align-items: center;
}

.info-card-header i {
    margin-right: var(--spacing-2);
}

.info-card-body {
    padding: var(--spacing-4);
}

.info-item {
    margin-bottom: var(--spacing-3);
    padding-bottom: var(--spacing-3);
    border-bottom: 1px solid var(--border-color);
}

.info-item:last-child {
    margin-bottom: 0;
    padding-bottom: 0;
    border-bottom: none;
}

.info-label {
    font-weight: var(--font-weight-medium);
    color: var(--text-secondary);
    margin-bottom: var(--spacing-1);
    font-size: var(--font-size-sm);
}

.info-value {
    color: var(--text-primary);
}

.profile-section {
    background-color: var(--bg-color);
    border-radius: var(--border-radius);
    box-shadow: var(--shadow);
    overflow: hidden;
    margin-bottom: var(--spacing-6);
}

.profile-section:last-child {
    margin-bottom: 0;
}

.profile-section-header {
    background-color: var(--lighter-grey);
    padding: var(--spacing-3) var(--spacing-4);
    border-bottom: 1px solid var(--border-color);
}

.profile-section-header h3 {
    margin: 0;
    font-size: var(--font-size-lg);
    color: var(--text-primary);
    display: flex;
    align-items: center;
}

.profile-section-header h3 i {
    margin-right: var(--spacing-2);
    color: var(--primary-color);
}

.profile-section-body {
    padding: var(--spacing-4);
}

.email-container {
    display: flex;
    flex-direction: column;
    gap: var(--spacing-3);
}

.current-email, .email-password {
    flex: 1;
}

.email-notes {
    margin-top: var(--spacing-2);
    display: none;
}

.info-box {
    background-color: var(--info-light);
    color: var(--dark-color);
    padding: var(--spacing-3);
    border-radius: var(--border-radius);
    font-size: var(--font-size-sm);
    display: flex;
    align-items: flex-start;
}

.info-box i {
    margin-right: var(--spacing-2);
    margin-top: 2px;
    color: var(--info-color);
}

.password-fields {
    display: grid;
    grid-template-columns: 1fr 1fr;
    gap: var(--spacing-4);
    margin: var(--spacing-4) 0;
}

.password-hint {
    background-color: var(--warning-light);
}

.password-hint i {
    color: var(--warning-color);
}

.toggle-switch input[type="checkbox"] {
    width: 45px;
    height: 22px;
    -webkit-appearance: none;
    appearance: none;
    background-color: var(--light-grey);
    border-radius: 50px;
    position: relative;
    cursor: pointer;
    outline: none;
    transition: all 0.3s;
}

.toggle-switch input[type="checkbox"]::before {
    content: '';
    width: 18px;
    height: 18px;
    border-radius: 50%;
    background-color: var(--bg-color);
    position: absolute;
    top: 2px;
    left: 2px;
    transition: all 0.3s;
    box-shadow: var(--shadow-sm);
}

.toggle-switch input[type="checkbox"]:checked {
    background-color: var(--primary-color);
}

.toggle-switch input[type="checkbox"]:checked::before {
    left: 25px;
}

.select-wrapper {
    position: relative;
}

.select-wrapper .input-icon {
    position: absolute;
    top: 50%;
    left: var(--spacing-3);
    transform: translateY(-50%);
    color: var(--text-secondary);
    z-index: 1;
    pointer-events: none;
}

.select-wrapper select {
    padding-left: var(--spacing-8);
    width: 100%;
    appearance: none;
    background-image: url("data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' width='16' height='16' viewBox='0 0 24 24' fill='none' stroke='%23718096' stroke-width='2' stroke-linecap='round' stroke-linejoin='round'%3E%3Cpolyline points='6 9 12 15 18 9'%3E%3C/polyline%3E%3C/svg%3E");
    background-repeat: no-repeat;
    background-position: right var(--spacing-3) center;
    cursor: pointer;
}

/* Mobile responsive */
@media (max-width: 992px) {
    .profile-grid {
        grid-template-columns: 1fr;
    }
    
    .profile-sidebar {
        margin-bottom: var(--spacing-6);
    }
    
    .profile-avatar-container {
        display: grid;
        grid-template-columns: repeat(auto-fit, minmax(200px, 1fr));
    }
}

@media (max-width: 768px) {
    .password-fields {
        grid-template-columns: 1fr;
    }
    
    .email-container {
        flex-direction: column;
    }
}

@media (max-width: 480px) {
    .form-actions {
        flex-direction: column;
    }
    
    .form-actions .btn {
        width: 100%;
        margin-bottom: var(--spacing-2);
    }
}
</style>

<script>
    document.addEventListener('DOMContentLoaded', function() {
        // Email koruma notları
        const emailTd = document.getElementById('emailtd');
        const emailNotes = document.getElementById('emailnotes');
        
        if (emailTd && emailNotes) {
            emailTd.addEventListener('click', function() {
                emailNotes.style.display = 'flex';
            });
        }
        
        // Form alanlarını iyileştir
        enhanceFormElements();
        
        // Avatar ve fotoğraf yükleme önizlemesi
        setupImagePreview();
    });
    
    function enhanceFormElements() {
        // Checkbox'ları modern toggle switch'lere dönüştür
        document.querySelectorAll('input[type="checkbox"]').forEach(function(checkbox) {
            if (!checkbox.closest('.toggle-switch')) {
                const toggleWrapper = document.createElement('div');
                toggleWrapper.className = 'toggle-switch';
                checkbox.parentNode.insertBefore(toggleWrapper, checkbox);
                toggleWrapper.appendChild(checkbox);
            }
        });
    }
    
    function setupImagePreview() {
        // Avatar ve fotoğraf yükleme için ön izleme
        const fileInputs = document.querySelectorAll('input[type="file"]');
        
        fileInputs.forEach(function(input) {
            input.addEventListener('change', function(e) {
                if (this.files && this.files[0]) {
                    const img = this.parentElement.querySelector('img');
                    if (img) {
                        const reader = new FileReader();
                        reader.onload = function(e) {
                            img.src = e.target.result;
                        };
                        reader.readAsDataURL(this.files[0]);
                    }
                }
            });
        });
    }
</script>
<!-- END: MAIN -->
