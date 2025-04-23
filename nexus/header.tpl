<!-- BEGIN: HEADER -->
<!DOCTYPE html>
<html lang="{PHP.cfg.defaultlang}">
<head>
    <title>{HEADER_TITLE}</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- IF {HEADER_META_DESCRIPTION} --><meta name="description" content="{HEADER_META_DESCRIPTION}" /><!-- ENDIF -->
    <!-- IF {HEADER_META_KEYWORDS} --><meta name="keywords" content="{HEADER_META_KEYWORDS}" /><!-- ENDIF -->
    <meta http-equiv="content-type" content="{HEADER_META_CONTENTTYPE}; charset=UTF-8" />
    <meta name="generator" content="Cotonti https://www.cotonti.com" />
    <!-- IF {HEADER_CANONICAL_URL} --><link rel="canonical" href="{HEADER_CANONICAL_URL}" /><!-- ENDIF -->
    {HEADER_BASEHREF}
    {HEADER_HEAD}
    <link rel="shortcut icon" href="favicon.ico" />
    <link rel="icon" href="{PHP.cfg.themes_dir}/{PHP.theme}/img/favicon.svg" type="image/svg+xml">
    <link rel="apple-touch-icon" href="apple-touch-icon.png" />
    <!-- Modern fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap" rel="stylesheet">
    <!-- Font Awesome for icons -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">
    <link rel="stylesheet" href="css/nexus.css">
    <style>
    /* Additional Header Styles */
    
    /* Header Right Section */
    .header-right {
        display: flex;
        align-items: center;
    }
    
    /* Search Toggle */
    .search-toggle, .menu-toggle {
        background: none;
        border: none;
        width: 40px;
        height: 40px;
        display: flex;
        align-items: center;
        justify-content: center;
        border-radius: 50%;
        cursor: pointer;
        margin-left: 10px;
        transition: background 0.3s;
    }
    
    .search-toggle:hover, .menu-toggle:hover {
        background: #f5f9ff;
    }
    
    .search-toggle i, .menu-toggle i {
        font-size: 18px;
        color: #555;
    }
    
    /* Search Container 
    .search-container {
        display: none;
        padding: 15px;
        background: #f5f9ff;
        border-top: 1px solid #e5e9f2;
        border-radius:5px;
    }
      */
    
    .search-container.active {
        display: block;
    }
    
    .search-input-group {
        display: flex;
        margin: 0 auto;
    }
    
    .search-input-group input {
        flex: 1;
        padding: 12px 12px;
        border: 1px solid #e5e9f2;
        border-right: none;
        border-radius: 6px 0 0 6px;
        font-size: 16px;
    }
    
    .search-input-group button {
        background: #3498db;
        color: white;
        border: none;
        padding: 0 20px;
        border-radius: 0 6px 6px 0;
        cursor: pointer;
        transition: background 0.3s;
    }
    
    .search-input-group button:hover {
        background: #2980b9;
    }
    
    /* User Account */
    .user-account {
        position: relative;
        margin-left: 15px;
    }
    
    .user-toggle {
        display: flex;
        align-items: center;
        background: none;
        border: none;
        cursor: pointer;
        padding: 5px;
        border-radius: 6px;
        transition: background 0.3s;
    }
    
    .user-toggle:hover {
        background: #f5f9ff;
    }
    
    .user-avatar-small {
        width: 32px;
        height: 32px;
        border-radius: 50%;
        overflow: hidden;
        margin-right: 10px;
    }
    
    .user-avatar-small img {
        width: 100%;
        height: 100%;
        object-fit: cover;
    }
    
    .user-name {
        font-weight: 500;
        max-width: 120px;
        white-space: nowrap;
        overflow: hidden;
        text-overflow: ellipsis;
    }
    
    .dropdown-icon {
        margin-left: 5px;
        font-size: 12px;
        opacity: 0.7;
    }
    
    /* Dropdown Menu */
    .user-dropdown {
        position: absolute;
        top: 100%;
        right: 0;
        background: white;
        min-width: 280px;
        border-radius: 8px;
        box-shadow: 0 5px 20px rgba(0,0,0,0.15);
        padding: 15px;
        display: none;
        z-index: 100;
    }
    
    .user-dropdown.active {
        display: block;
    }
    
    .dropdown-header {
        padding-bottom: 10px;
        margin-bottom: 10px;
        border-bottom: 1px solid #eee;
    }
    
    .dropdown-header h3 {
        font-size: 16px;
        margin: 0 0 5px 0;
    }
    
    .user-info {
        display: flex;
        align-items: flex-start;
    }
    
    .user-avatar {
        width: 50px;
        height: 50px;
        border-radius: 50%;
        overflow: hidden;
        margin-right: 15px;
        flex-shrink: 0;
    }
    
    .user-avatar img {
        width: 100%;
        height: 100%;
        object-fit: cover;
    }
    
    .user-links {
        flex: 1;
    }
    
    .admin-link {
        display: inline-block;
        background: #f8f9fa;
        color: #666;
        padding: 5px 10px;
        border-radius: 4px;
        font-size: 13px;
        text-decoration: none;
        margin-bottom: 10px;
        transition: background 0.3s, color 0.3s;
    }
    
    .admin-link:hover {
        background: #e9ecef;
        color: #333;
    }
    
    .admin-link i {
        margin-right: 5px;
    }
    
    .user-notices {
        background: #fff8e1;
        color: #856404;
        padding: 8px 12px;
        border-radius: 4px;
        font-size: 13px;
        margin-bottom: 10px;
    }
    
    .user-menu {
        list-style: none;
        padding: 0;
        margin: 0;
    }
    
    .user-menu li {
        margin-bottom: 8px;
    }
    
    .user-menu li:last-child {
        margin-bottom: 0;
    }
    
    .user-menu a {
        display: flex;
        align-items: center;
        text-decoration: none;
        color: #333;
        padding: 8px 0;
        border-radius: 4px;
        transition: color 0.3s;
    }
    
    .user-menu a:hover {
        color: #3498db;
    }
    
    .user-menu i {
        margin-right: 10px;
        width: 16px;
        text-align: center;
        color: #3498db;
    }
    
    /* Login/Register buttons */
    .auth-buttons {
        display: flex;
    }
    
    .auth-btn {
        display: flex;
        align-items: center;
        padding: 8px 15px;
        border-radius: 6px;
        font-weight: 500;
        font-size: 14px;
        text-decoration: none;
        margin-left: 8px;
        transition: background 0.3s, color 0.3s;
    }
    
    .login-btn {
        background: #f5f9ff;
        color: #3498db;
    }
    
    .login-btn:hover {
        background: #e1efff;
    }
    
    .register-btn {
        background: #3498db;
        color: white;
    }
    
    .register-btn:hover {
        background: #2980b9;
    }
    
    .auth-btn i {
        margin-right: 8px;
    }
    
    /* Mobile Menu */
    .menu-toggle {
        display: none;
        flex-direction: column;
    }
    
    .menu-toggle span {
        width: 22px;
        height: 2px;
        background: #333;
        margin: 2px 0;
        transition: transform 0.3s, opacity 0.3s;
    }
    
    @media (max-width: 992px) {
        .main-nav {
            position: fixed;
            top: 70px;
            left: 0;
            width: 100%;
            background: white;
            box-shadow: 0 5px 10px rgba(0,0,0,0.1);
            padding: 15px;
            transform: translateY(-100%);
            opacity: 0;
            transition: transform 0.3s, opacity 0.3s;
            z-index: 90;
            margin: 0;
            visibility: hidden;
        }
        
        .main-nav.active {
            transform: translateY(0);
            opacity: 1;
            visibility: visible;
        }
        
        .main-nav ul {
            flex-direction: column;
        }
        
        .main-nav li {
            margin-right: 0;
            margin-bottom: 10px;
        }
        
        .main-nav li:last-child {
            margin-bottom: 0;
        }
        
        .main-nav a {
            padding: 12px 15px;
        }
        
        .menu-toggle {
            display: flex;
        }
        
        .menu-toggle.active span:nth-child(1) {
            transform: translateY(6px) rotate(45deg);
        }
        
        .menu-toggle.active span:nth-child(2) {
            opacity: 0;
        }
        
        .menu-toggle.active span:nth-child(3) {
            transform: translateY(-6px) rotate(-45deg);
        }
        
        .user-name {
            display: none;
        }
    }
    
    @media (max-width: 576px) {
        .header-content {
            padding: 12px 0;
        }
        
        .logo h1 {
            font-size: 20px;
        }
        
        .logo .subtitle {
            display: none;
        }
        
        .auth-btn {
            padding: 8px 10px;
        }
        
        .auth-btn span {
            display: none;
        }
        
        .auth-btn i {
            margin-right: 0;
        }
    }
    </style>
</head>
<body>
    <header class="header">
        <div class="container">
            <div class="header-content">
                <div class="logo">
                    <a href="{PHP.cfg.mainurl}" title="{PHP.cfg.maintitle} {PHP.cfg.separator} {PHP.cfg.subtitle}">
                        <h1>{PHP.cfg.maintitle}</h1>
                        <p class="subtitle">{PHP.cfg.subtitle}</p>
                    </a>
                </div>
                
                <!-- Mobile menu toggle -->
                <div class="menu-toggle" id="menu-toggle">
                    <span></span>
                    <span></span>
                    <span></span>
                </div>
                
                <nav class="main-nav" id="main-nav">
                    <ul>
                        <li>
                            <a href="{PHP.cfg.mainurl}" title="{PHP.L.Home}">
                                <i class="fas fa-home"></i> {PHP.L.Home}
                                <span>Start here</span>
                            </a>
                        </li>
                        <!-- IF {PHP|cot_module_active('forums')} -->
                        <li>
                            <a href="{PHP|cot_url('forums')}" title="{PHP.L.Forums}">
                                <i class="fas fa-comments"></i> {PHP.L.Forums}
                                <span>Discussions</span>
                            </a>
                        </li>
                        <!-- ENDIF -->
                        <li>
                            <a href="{PHP|cot_url('page','c=news')}" title="{PHP.structure.page.news.title}">
                                <i class="fas fa-newspaper"></i> {PHP.structure.page.news.title}
                                <span>Our updates</span>
                            </a>
                        </li>
                        <!-- IF {PHP|cot_module_active('rss')} -->
                        <li>
                            <a href="{PHP|cot_url('rss')}" title="{PHP.L.RSS_Feeds}">
                                <i class="fas fa-rss"></i> RSS
                                <span>Subscribe me</span>
                            </a>
                        </li>
                        <!-- ENDIF -->
                    </ul>
                </nav>
                
                <div class="header-right">
                    <!-- IF {PHP|cot_plugin_active('search')} -->
                    <button class="search-toggle" id="search-toggle">
                        <i class="fas fa-search"></i>
                    </button>
                    <!-- ENDIF -->
                    
                    <!-- BEGIN: GUEST -->
                    <div class="auth-buttons">
                        <a href="{PHP|cot_url('login')}" class="auth-btn login-btn">
                            <i class="fas fa-sign-in-alt"></i> <span>{PHP.L.Login}</span>
                        </a>
                        <a href="{PHP|cot_url('users','m=register')}" class="auth-btn register-btn">
                            <i class="fas fa-user-plus"></i> <span>{PHP.L.Register}</span>
                        </a>
                    </div>
                    <!-- END: GUEST -->
                    
                    <!-- BEGIN: USER -->
                    <div class="user-account">
                        <button class="user-toggle" id="user-toggle">
                            <div class="user-avatar-small">
                                <img src="<!-- IF {PHP.usr.profile.user_avatar} -->{PHP.usr.profile.user_avatar}<!-- ELSE -->{PHP.R.users_defaultAvatarSrc}<!-- ENDIF -->" alt="{PHP.L.Avatar}"/>
                            </div>
                            <span class="user-name">{PHP.usr.name}</span>
                            <i class="fas fa-chevron-down dropdown-icon"></i>
                        </button>
                        
                        <div class="user-dropdown" id="user-dropdown">
                            <div class="dropdown-header">
                                <h3>Hello, {PHP.usr.name}</h3>
                            </div>
                            
                            <div class="user-info">
                                <div class="user-avatar">
                                    <img src="<!-- IF {PHP.usr.profile.user_avatar} -->{PHP.usr.profile.user_avatar}<!-- ELSE -->{PHP.R.users_defaultAvatarSrc}<!-- ENDIF -->" alt="{PHP.L.Avatar}"/>
                                </div>
                                <div class="user-links">
                                    <!-- IF {PHP.usr.maingrp} == 5 -->
                                    <a href="{PHP|cot_url('admin')}" class="admin-link"><i class="fas fa-cog"></i> {PHP.L.Adminpanel}</a>
                                    <!-- ENDIF -->
                                    
                                    <!-- IF {PHP.out.notices} -->
                                    <div class="user-notices">{PHP.out.notices}</div>
                                    <!-- ENDIF -->
                                    
                                    <ul class="user-menu">
                                        <li><a href="{PHP|cot_url('users','m=profile')}"><i class="fas fa-user-edit"></i> {PHP.L.Profile}</a></li>
                                        <!-- IF {PHP|cot_module_active('pm')} -->
                                        <li><a href="{PHP|cot_url('pm')}"><i class="fas fa-envelope"></i> {PHP.L.Private_Messages}</a></li>
                                        <!-- ENDIF -->
                                        <!-- IF {PHP|cot_module_active('pfs')} -->
                                        <li><a href="{PHP|cot_url('pfs')}"><i class="fas fa-folder-open"></i> {PHP.L.PFS}</a></li>
                                        <!-- ENDIF -->
                                        <li>{PHP.out.loginout}</li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- END: USER -->
                </div>
            </div>
            
            <!-- Search form -->
            <!-- IF {PHP|cot_plugin_active('search')} -->
            <div id="search-container" class="search-container">
                <form class="search-form" action="{PHP|cot_url('search')}" method="GET">
                    <!-- IF {PHP.cfg.plugin.urleditor.preset} !== 'handy' --><input type="hidden" name="e" value="search" /><!-- ENDIF -->
                    <div class="search-input-group">
                        <input type="text" name="sq" value="" placeholder="{PHP.L.Search}..." />
                        <button type="submit" title="{PHP.L.Search}!">
                            <i class="fas fa-search"></i>
                        </button>
                    </div>
                </form>
            </div>
            <!-- ENDIF -->
        </div>
    </header>
    
    <script>
    document.addEventListener('DOMContentLoaded', function() {
        // Toggle mobile menu
        const menuToggle = document.getElementById('menu-toggle');
        const mainNav = document.getElementById('main-nav');
        
        if (menuToggle && mainNav) {
            menuToggle.addEventListener('click', function() {
                menuToggle.classList.toggle('active');
                mainNav.classList.toggle('active');
            });
        }
        
        // Toggle search container
        const searchToggle = document.getElementById('search-toggle');
        const searchContainer = document.getElementById('search-container');
        
        if (searchToggle && searchContainer) {
            searchToggle.addEventListener('click', function() {
                searchContainer.classList.toggle('active');
            });
        }
        
        // Toggle user dropdown
        const userToggle = document.getElementById('user-toggle');
        const userDropdown = document.getElementById('user-dropdown');
        
        if (userToggle && userDropdown) {
            userToggle.addEventListener('click', function(e) {
                e.stopPropagation();
                userDropdown.classList.toggle('active');
            });
            
            // Close dropdown when clicking outside
            document.addEventListener('click', function(e) {
                if (userDropdown.classList.contains('active') && !userDropdown.contains(e.target)) {
                    userDropdown.classList.remove('active');
                }
            });
        }
    });
    </script>
    
    <main class="main-content">
        <div class="container">
<!-- END: HEADER -->