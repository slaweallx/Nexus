<!-- BEGIN: MAIN -->
<div class="content-section">
    <div class="section-header">
        <h1><i class="fas fa-user-edit"></i> {USERS_EDIT_BREADCRUMBS}</h1>
        <div class="breadcrumbs">{USERS_EDIT_BREADCRUMBS}</div>
    </div>
    
    <div class="section-body">
        {FILE "{PHP.cfg.themes_dir}/{PHP.usr.theme}/warnings.tpl"}
        
        <div class="info-panel">
            <div class="info-panel-header">
                <i class="fas fa-user-cog"></i> {PHP.L.Profile} #{USERS_EDIT_ID}
            </div>
            <div class="info-panel-body">
                <form action="{USERS_EDIT_SEND}" method="post" name="useredit" enctype="multipart/form-data" class="user-edit-form">
                    <input type="hidden" name="id" value="{USERS_EDIT_ID}" />
                    
                    <table class="form-table">
                        <tr>
                            <td class="form-label">
                                <div class="label-icon"><i class="fas fa-id-card"></i></div>
                                <div class="label-text">{PHP.L.users_id}:</div>
                            </td>
                            <td class="form-field">#{USERS_EDIT_ID}</td>
                        </tr>
                        <tr>
                            <td class="form-label">
                                <div class="label-icon"><i class="fas fa-user"></i></div>
                                <div class="label-text">{PHP.L.Username}:</div>
                            </td>
                            <td class="form-field">{USERS_EDIT_NAME}</td>
                        </tr>
                        <tr>
                            <td class="form-label">
                                <div class="label-icon"><i class="fas fa-users"></i></div>
                                <div class="label-text">{PHP.L.Groupsmembership}:</div>
                            </td>
                            <td class="form-field">
                                <div class="form-field-group">
                                    <div class="field-label">{PHP.L.Maingroup}:</div>
                                    <div class="field-value">{USERS_EDIT_GROUPS}</div>
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td class="form-label">
                                <div class="label-icon"><i class="fas fa-globe"></i></div>
                                <div class="label-text">{PHP.L.Country}:</div>
                            </td>
                            <td class="form-field">{USERS_EDIT_COUNTRY}</td>
                        </tr>
                        <tr>
                            <td class="form-label">
                                <div class="label-icon"><i class="fas fa-clock"></i></div>
                                <div class="label-text">{PHP.L.Timezone}:</div>
                            </td>
                            <td class="form-field">{USERS_EDIT_TIMEZONE}</td>
                        </tr>
                        <tr>
                            <td class="form-label">
                                <div class="label-icon"><i class="fas fa-palette"></i></div>
                                <div class="label-text">{PHP.L.Theme}:</div>
                            </td>
                            <td class="form-field">{USERS_EDIT_THEME}</td>
                        </tr>
                        <tr>
                            <td class="form-label">
                                <div class="label-icon"><i class="fas fa-language"></i></div>
                                <div class="label-text">{PHP.L.Language}:</div>
                            </td>
                            <td class="form-field">{USERS_EDIT_LANG}</td>
                        </tr>
                        <!-- IF {USERS_EDIT_AVATAR} -->
                        <tr>
                            <td class="form-label">
                                <div class="label-icon"><i class="fas fa-user-circle"></i></div>
                                <div class="label-text">{PHP.L.Avatar}:</div>
                            </td>
                            <td class="form-field">{USERS_EDIT_AVATAR}</td>
                        </tr>
                        <!-- ENDIF -->
                        <!-- IF {USERS_EDIT_PHOTO} -->
                        <tr>
                            <td class="form-label">
                                <div class="label-icon"><i class="fas fa-image"></i></div>
                                <div class="label-text">{PHP.L.Photo}:</div>
                            </td>
                            <td class="form-field">{USERS_EDIT_PHOTO}</td>
                        </tr>
                        <!-- ENDIF -->
                        <tr>
                            <td class="form-label">
                                <div class="label-icon"><i class="fas fa-key"></i></div>
                                <div class="label-text">{PHP.L.users_newpass}:</div>
                            </td>
                            <td class="form-field">
                                {USERS_EDIT_NEWPASS}
                                <p class="field-hint">{PHP.L.users_newpasshint1}</p>
                            </td>
                        </tr>
                        <tr>
                            <td class="form-label">
                                <div class="label-icon"><i class="fas fa-envelope"></i></div>
                                <div class="label-text">{PHP.L.Email}:</div>
                            </td>
                            <td class="form-field">{USERS_EDIT_EMAIL}</td>
                        </tr>
                        <tr>
                            <td class="form-label">
                                <div class="label-icon"><i class="fas fa-eye-slash"></i></div>
                                <div class="label-text">{PHP.L.users_hideemail}:</div>
                            </td>
                            <td class="form-field">{USERS_EDIT_HIDEEMAIL}</td>
                        </tr>
                        <!-- IF {PHP|cot_module_active('pm')} -->
                        <tr>
                            <td class="form-label">
                                <div class="label-icon"><i class="fas fa-bell"></i></div>
                                <div class="label-text">{PHP.L.users_pmnotify}:</div>
                            </td>
                            <td class="form-field">
                                {USERS_EDIT_PMNOTIFY}
                                <p class="field-hint">{PHP.L.users_pmnotifyhint}</p>
                            </td>
                        </tr>
                        <!-- ENDIF -->
                        <tr>
                            <td class="form-label">
                                <div class="label-icon"><i class="fas fa-birthday-cake"></i></div>
                                <div class="label-text">{PHP.L.Birthdate}:</div>
                            </td>
                            <td class="form-field">{USERS_EDIT_BIRTHDATE}</td>
                        </tr>
                        <tr>
                            <td class="form-label">
                                <div class="label-icon"><i class="fas fa-venus-mars"></i></div>
                                <div class="label-text">{PHP.L.Gender}:</div>
                            </td>
                            <td class="form-field">{USERS_EDIT_GENDER}</td>
                        </tr>
                        <tr>
                            <td class="form-label">
                                <div class="label-icon"><i class="fas fa-signature"></i></div>
                                <div class="label-text">{PHP.L.Signature}:</div>
                            </td>
                            <td class="form-field">{USERS_EDIT_TEXT}</td>
                        </tr>
                        <tr>
                            <td class="form-label">
                                <div class="label-icon"><i class="fas fa-calendar-check"></i></div>
                                <div class="label-text">{PHP.L.Registered}:</div>
                            </td>
                            <td class="form-field">{USERS_EDIT_REGDATE}</td>
                        </tr>
                        <tr>
                            <td class="form-label">
                                <div class="label-icon"><i class="fas fa-sign-in-alt"></i></div>
                                <div class="label-text">{PHP.L.Lastlogged}:</div>
                            </td>
                            <td class="form-field">{USERS_EDIT_LASTLOG}</td>
                        </tr>
                        <tr>
                            <td class="form-label">
                                <div class="label-icon"><i class="fas fa-network-wired"></i></div>
                                <div class="label-text">{PHP.L.users_lastip}:</div>
                            </td>
                            <td class="form-field">{USERS_EDIT_LASTIP}</td>
                        </tr>
                        <tr>
                            <td class="form-label">
                                <div class="label-icon"><i class="fas fa-list-ol"></i></div>
                                <div class="label-text">{PHP.L.users_logcounter}:</div>
                            </td>
                            <td class="form-field">{USERS_EDIT_LOGCOUNT}</td>
                        </tr>
                        <tr>
                            <td class="form-label">
                                <div class="label-icon"><i class="fas fa-user-times"></i></div>
                                <div class="label-text">{PHP.L.users_deleteuser}:</div>
                            </td>
                            <td class="form-field">{USERS_EDIT_DELETE}</td>
                        </tr>
                        <tr>
                            <td colspan="2" class="form-submit">
                                <button type="submit" class="btn-submit">
                                    <i class="fas fa-save"></i> {PHP.L.Update}
                                </button>
                            </td>
                        </tr>
                    </table>
                </form>
            </div>
        </div>
    </div>
</div>

<style>
/* User Edit Form Styles */
.content-section {
    margin-bottom: var(--spacing-6);
}

.section-header {
    margin-bottom: var(--spacing-4);
}

.section-header h1 {
    display: flex;
    align-items: center;
    font-size: var(--font-size-xl);
    color: var(--text-primary);
    margin-bottom: var(--spacing-2);
}

.section-header h1 i {
    margin-right: var(--spacing-2);
    color: var(--primary-color);
}

.breadcrumbs {
    color: var(--text-secondary);
    font-size: var(--font-size-sm);
}

.info-panel {
    background-color: var(--bg-color);
    border-radius: var(--border-radius);
    box-shadow: var(--shadow);
    overflow: hidden;
    margin-bottom: var(--spacing-4);
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

.user-edit-form {
    width: 100%;
}

.form-table {
    width: 100%;
    border-collapse: collapse;
}

.form-table tr {
    border-bottom: 1px solid var(--border-color-light);
}

.form-table tr:last-child {
    border-bottom: none;
}

.form-label {
    width: 30%;
    padding: var(--spacing-3) var(--spacing-2);
    vertical-align: top;
    display: flex;
    align-items: flex-start;
    gap: var(--spacing-2);
}

.form-field {
    width: 70%;
    padding: var(--spacing-3) var(--spacing-2);
}

.label-icon {
    width: 24px;
    height: 24px;
    background-color: var(--lighter-grey);
    border-radius: var(--border-radius-sm);
    display: flex;
    align-items: center;
    justify-content: center;
    color: var(--primary-color);
    font-size: var(--font-size-sm);
}

.label-text {
    font-weight: var(--font-weight-medium);
    color: var(--text-primary);
}

.field-hint {
    margin-top: var(--spacing-2);
    font-size: var(--font-size-sm);
    color: var(--text-secondary);
}

.form-field-group {
    display: flex;
    flex-direction: column;
    gap: var(--spacing-2);
}

.field-label {
    font-size: var(--font-size-sm);
    color: var(--text-secondary);
}

.form-submit {
    padding-top: var(--spacing-4) !important;
    text-align: right;
}

.btn-submit {
    display: inline-flex;
    align-items: center;
    padding: var(--spacing-2) var(--spacing-4);
    background-color: var(--primary-color);
    color: var(--text-white);
    border: none;
    border-radius: var(--border-radius);
    font-weight: var(--font-weight-medium);
    cursor: pointer;
    transition: all 0.3s ease;
}

.btn-submit:hover {
    background-color: var(--primary-dark);
    transform: translateY(-2px);
    box-shadow: var(--shadow);
}

.btn-submit i {
    margin-right: var(--spacing-2);
}

/* Responsive styles */
@media (max-width: 768px) {
    .form-table, 
    .form-table tbody, 
    .form-table tr, 
    .form-table td {
        display: block;
        width: 100%;
    }
    
    .form-label {
        padding-bottom: var(--spacing-1);
    }
    
    .form-field {
        padding-top: var(--spacing-1);
        padding-bottom: var(--spacing-3);
    }
    
    .form-submit {
        text-align: center;
    }
}
</style>
<!-- END: MAIN -->
