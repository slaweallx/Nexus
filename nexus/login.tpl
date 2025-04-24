<!-- BEGIN: MAIN -->
<div class="grid">
    <div class="col-8">
        <div class="block">
            <h2 class="users">{USERS_AUTH_TITLE}</h2>
            
            <!-- IF {PHP.usr.id} -->
            <div class="already-logged">
                <p>{PHP.L.users_loggedinas} <strong>{PHP.usr.name}</strong></p>
                <p>{PHP.L.users_logoutfirst}</p>
                <a class="button" href="{PHP.sys.xk|cot_url('login','out=1&x=$this', '', 0, 1)}">
                    <i class="fas fa-sign-out-alt"></i> {PHP.L.Logout}
                </a>
            </div>
            <!-- ELSE -->
            <form id="login" name="login" action="{USERS_AUTH_SEND}" method="post">
                <div class="form-group">
                    <label for="username">{PHP.L.users_nameormail}:</label>
                    <div class="input-group">
                        <span class="input-icon"><i class="fas fa-user"></i></span>
                        {USERS_AUTH_USER}
                    </div>
                </div>
                
                <div class="form-group">
                    <label for="password">{PHP.L.Password}:</label>
                    <div class="input-group">
                        <span class="input-icon"><i class="fas fa-key"></i></span>
                        {USERS_AUTH_PASSWORD}
                    </div>
                </div>
                
                <div class="form-group checkbox-group">
                    {USERS_AUTH_REMEMBER} 
                    <label for="rmember">{PHP.L.users_rememberme}</label>
                </div>

                <!-- Cloudflare Turnstile Captcha -->
                <!-- IF {USERS_AUTH_VERIFY_IMG} -->
                <div class="form-group textcenter">
                    {USERS_AUTH_VERIFY_IMG}
                    {USERS_AUTH_VERIFY_INPUT}
                </div>
                <!-- ENDIF -->
                
                <div class="form-actions">
                    <button type="submit" name="rlogin" value="0" class="button">
                        <i class="fas fa-sign-in-alt"></i> {PHP.L.Login}
                    </button>
                    
                    <div class="login-links">
                        <a href="{PHP|cot_url('users','m=register')}">
                            <i class="fas fa-user-plus"></i> {PHP.L.Register}
                        </a>
                        <a href="{PHP|cot_url('users','m=passrecover')}">
                            <i class="fas fa-question-circle"></i> {PHP.L.users_lostpass}
                        </a>
                    </div>
                </div>
            </form>
            <!-- ENDIF -->
        </div>
    </div>

    <div class="col-4">
        {FILE "./{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/inc/contact.tpl"}
    </div>
</div>

<!-- BEGIN: USERS_AUTH_MAINTENANCE -->
<div class="error">
    <h4>{PHP.L.users_maintenance1}</h4>
    <p>{PHP.L.users_maintenance2}</p>
</div>
<!-- END: USERS_AUTH_MAINTENANCE -->
<!-- END: MAIN -->
