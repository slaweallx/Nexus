<!-- BEGIN: MAIN -->

<!-- Hero section - Slider -->
<!-- IF {PHP.env.ext} == "index" -->
<div class="hero-slider">
    <div class="slider-container">
        <div class="slider-wrapper">
            <div class="slide active">
                <img src="{PHP.cfg.themes_dir}/{PHP.theme}/img/front_image.jpg" alt="Hero Image 1">
                <div class="slide-content">
                    <h2>Welcome</h2>
                    <p>Join our community and explore our content</p>
                    <a href="{PHP|cot_url('users','m=register')}" class="btn btn-primary">Register Now</a>
                </div>
            </div>
            <div class="slide">
                <img src="{PHP.cfg.themes_dir}/{PHP.theme}/img/front_image2.jpg" alt="Hero Image 2">
                <div class="slide-content">
                    <h2>Latest News</h2>
                    <p>Current developments and announcements</p>
                    <a href="{PHP|cot_url('page','c=news')}" class="btn btn-primary">Browse News</a>
                </div>
            </div>
            <div class="slide">
                <img src="{PHP.cfg.themes_dir}/{PHP.theme}/img/front_image3.jpg" alt="Hero Image 3">
                <div class="slide-content">
                    <h2>Active Forum</h2>
                    <p>Join discussions, ask questions</p>
                    <a href="{PHP|cot_url('forums')}" class="btn btn-primary">Go to Forum</a>
                </div>
            </div>
        </div>
        <div class="slider-controls">
            <button class="prev-btn"><i class="fas fa-chevron-left"></i></button>
            <div class="slider-dots">
                <span class="dot active" data-slide="0"></span>
                <span class="dot" data-slide="1"></span>
                <span class="dot" data-slide="2"></span>
            </div>
            <button class="next-btn"><i class="fas fa-chevron-right"></i></button>
        </div>
    </div>
</div>
<!-- ENDIF -->

<!-- Featured Events & Infographics Section -->
<div class="featured-boxes">
    <div class="container">
        <div class="box-grid">
            <div class="feature-box">
                <div class="icon-wrap">
                    <i class="fas fa-calendar-alt"></i>
                </div>
                <h3>Upcoming Events</h3>
                <p>Don't miss events organized by our community</p>
                <a href="#" class="read-more">Read More <i class="fas fa-arrow-right"></i></a>
            </div>
            <div class="feature-box">
                <div class="icon-wrap">
                    <i class="fas fa-users"></i>
                </div>
                <h3>Member Community</h3>
                <p>Knowledge sharing and collaboration with active members</p>
                <a href="{PHP|cot_url('users')}" class="read-more">View Members <i class="fas fa-arrow-right"></i></a>
            </div>
            <div class="feature-box">
                <div class="icon-wrap">
                    <i class="fas fa-newspaper"></i>
                </div>
                <h3>Latest Content</h3>
                <p>Recently added articles and posts</p>
                <a href="{PHP|cot_url('page')}" class="read-more">Browse Content <i class="fas fa-arrow-right"></i></a>
            </div>
        </div>
    </div>
</div>

<!-- Main Content Section -->
<div class="main-content">
    <div class="container">
        <div class="content-grid">
            <!-- Left Section (Main Content) -->
            <div class="main-column">
                {FILE "{PHP.cfg.themes_dir}/{PHP.theme}/warnings.tpl"}
                
                <!-- News Section -->
                <!-- IF {INDEX_NEWS} -->
                <div class="content-section news-section">
                    <div class="section-header">
                        <h2><i class="fas fa-newspaper"></i> {PHP.L.News}</h2>
                        <a href="{PHP|cot_url('page','c=news')}" class="view-all">View All</a>
                    </div>
                    <div class="news-content limited-text">
                        {INDEX_NEWS}
                    </div>
                </div>
                <!-- ENDIF -->
                
                <!-- Content Table -->
                <div class="content-section content-table">
                    <div class="section-header">
                        <h2><i class="fas fa-table"></i> Content Directory</h2>
                    </div>
                    <div class="content-categories">
                        <div class="category-row">
                            <div class="category-box">
                                <i class="fas fa-file-alt"></i>
                                <h3>Articles</h3>
                                <p>Informative articles</p>
                                <a href="{PHP|cot_url('page','c=articles')}">Browse</a>
                            </div>
                            <div class="category-box">
                                <i class="fas fa-book"></i>
                                <h3>Guides</h3>
                                <p>User manuals</p>
                                <a href="{PHP|cot_url('page','c=guides')}">Browse</a>
                            </div>
                        </div>
                        <div class="category-row">
                            <div class="category-box">
                                <i class="fas fa-download"></i>
                                <h3>Downloads</h3>
                                <p>Files and resources</p>
                                <a href="{PHP|cot_url('page','c=downloads')}">Browse</a>
                            </div>
                            <div class="category-box">
                                <i class="fas fa-question-circle"></i>
                                <h3>FAQ</h3>
                                <p>Frequently asked questions</p>
                                <a href="{PHP|cot_url('page','c=faq')}">Browse</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            
            <!-- Right Section (Sidebar) -->
            <div class="sidebar">
                <!-- Admin Panel -->
                <!-- IF {PHP.usr.isadmin} -->
                <div class="sidebar-widget admin-panel">
                    <div class="widget-header">
                        <h3><i class="fas fa-cog"></i> {PHP.L.Admin}</h3>
                    </div>
                    <div class="widget-content">
                        <ul class="admin-links">
                            <li><a href="{PHP|cot_url('admin')}"><i class="fas fa-tachometer-alt"></i> {PHP.L.Adminpanel}</a></li>
                            <li><a href="{PHP|cot_url('users')}"><i class="fas fa-users"></i> {PHP.L.Users}</a></li>
                            <li><a href="{PHP|cot_url('users','m=profile')}"><i class="fas fa-user-edit"></i> {PHP.L.Profile}</a></li>
                            <li><a href="{PHP|cot_url('pfs')}"><i class="fas fa-folder-open"></i> {PHP.L.PFS}</a></li>
                        </ul>
                    </div>
                </div>
                <!-- ENDIF -->
                
                <!-- Polls -->
                <!-- IF {INDEX_POLLS} -->
                <div class="sidebar-widget polls-widget">
                    <div class="widget-header">
                        <h3><i class="fas fa-chart-bar"></i> {PHP.L.Polls}</h3>
                    </div>
                    <div class="widget-content">
                        {INDEX_POLLS}
                    </div>
                </div>
                <!-- ENDIF -->
                
                <!-- Tags -->
                <!-- IF {INDEX_TAG_CLOUD} -->
                <div class="sidebar-widget tags-widget">
                    <div class="widget-header">
                        <h3><i class="fas fa-tags"></i> {PHP.L.Tags}</h3>
                    </div>
                    <div class="widget-content">
                        <div class="tag-cloud">
                            {INDEX_TAG_CLOUD}
                        </div>
                        <!-- IF {INDEX_TAG_CLOUD_ALL_LINK} -->
                        <div class="tag-cloud-all">{INDEX_TAG_CLOUD_ALL_LINK}</div>
                        <!-- ENDIF -->
                    </div>
                </div>
                <!-- ENDIF -->
                
                <!-- Who's Online -->
                <!-- IF {PHP.out.whosonline} -->
                <div class="sidebar-widget online-widget">
                    <div class="widget-header">
                        <h3><i class="fas fa-user-circle"></i> {PHP.L.Online}</h3>
                    </div>
                    <div class="widget-content">
                        <div class="online-count">
                            <a href="{PHP|cot_url('plug','e=whosonline')}">{PHP.out.whosonline}</a>
                        </div>
                        <!-- IF {PHP.out.whosonline_reg_list} -->
                        <div class="online-users">{PHP.out.whosonline_reg_list}</div>
                        <!-- ENDIF -->
                    </div>
                </div>
                <!-- ENDIF -->
            </div>
        </div>
    </div>
</div>

<!-- Recent Activity Section (Redesigned) -->
<!-- IF {PHP|cot_plugin_active('recentitems')} -->
<div class="recent-activity">
    <div class="container">
        <div class="section-header">
            <h2><i class="fas fa-history"></i> <a href="{PHP|cot_url('plug','e=recentitems')}">{PHP.L.recentitems_title}</a></h2>
        </div>
        
        <div class="recent-tabs">
            <button class="tab-btn active" data-tab="pages"><i class="fas fa-file-alt"></i> {PHP.L.recentitems_pages}</button>
            <button class="tab-btn" data-tab="forums"><i class="fas fa-comments"></i> {PHP.L.recentitems_forums}</button>
        </div>
        
        <div class="tab-content">
            <div class="tab-pane active" id="pages-tab">
                <!-- IF {RECENT_PAGES} -->
                <div class="recent-list">
                    {RECENT_PAGES}
                </div>
                <!-- ELSE -->
                <div class="info-message">
                    <i class="fas fa-info-circle"></i> {PHP.L.recentitems_nonewpages}
                </div>
                <!-- ENDIF -->
            </div>
            
            <div class="tab-pane" id="forums-tab">
                <!-- IF {RECENT_FORUMS} -->
                <div class="recent-list">
                    {RECENT_FORUMS}
                </div>
                <!-- ELSE -->
                <div class="info-message">
                    <i class="fas fa-info-circle"></i> {PHP.L.recentitems_nonewposts}
                </div>
                <!-- ENDIF -->
            </div>
        </div>
    </div>
</div>
<!-- ENDIF -->

<!-- JavaScript - Slider and Tab functionality -->
<script>
document.addEventListener('DOMContentLoaded', function() {
    // Slider Functions
    const slides = document.querySelectorAll('.slide');
    const dots = document.querySelectorAll('.dot');
    const prevBtn = document.querySelector('.prev-btn');
    const nextBtn = document.querySelector('.next-btn');
    let currentSlide = 0;
    
    function showSlide(index) {
        slides.forEach(slide => slide.classList.remove('active'));
        dots.forEach(dot => dot.classList.remove('active'));
        
        slides[index].classList.add('active');
        dots[index].classList.add('active');
        currentSlide = index;
    }
    
    function nextSlide() {
        let next = currentSlide + 1;
        if (next >= slides.length) next = 0;
        showSlide(next);
    }
    
    function prevSlide() {
        let prev = currentSlide - 1;
        if (prev < 0) prev = slides.length - 1;
        showSlide(prev);
    }
    
    // Event listeners for slider
    if (prevBtn && nextBtn) {
        prevBtn.addEventListener('click', prevSlide);
        nextBtn.addEventListener('click', nextSlide);
    }
    
    dots.forEach((dot, index) => {
        dot.addEventListener('click', () => showSlide(index));
    });
    
    // Auto slide every 5 seconds
    setInterval(nextSlide, 5000);
    
    // Tab Functions
    const tabBtns = document.querySelectorAll('.tab-btn');
    const tabPanes = document.querySelectorAll('.tab-pane');
    
    tabBtns.forEach(btn => {
        btn.addEventListener('click', function() {
            const tabId = this.getAttribute('data-tab');
            
            // Remove active class from all buttons and panes
            tabBtns.forEach(btn => btn.classList.remove('active'));
            tabPanes.forEach(pane => pane.classList.remove('active'));
            
            // Add active class to current button and pane
            this.classList.add('active');
            document.getElementById(tabId + '-tab').classList.add('active');
        });
    });
    
    // Limit news text to 25 words
    function limitWords(selector, limit = 25) {
        const elements = document.querySelectorAll(selector);
        
        elements.forEach(element => {
            const text = element.innerText;
            const words = text.split(/\s+/);
            
            if (words.length > limit) {
                const limitedText = words.slice(0, limit).join(' ') + '...';
                element.innerText = limitedText;
            }
        });
    }
    
    // Limit news text
    limitWords('.news-content p');
});
</script>

<!-- CSS Styles -->
<style>
/* General Styles */
.container {
    max-width: 1200px;
    margin: 0 auto;
    padding: 0 15px;
}

/* Hero Slider */
.hero-slider {
    position: relative;
    overflow: hidden;
    height: 400px;
    margin-bottom: 30px;
    box-shadow: 0 4px 12px rgba(0,0,0,0.1);
    border-radius: 8px;
}

.slider-container {
    width: 100%;
    height: 100%;
    position: relative;
}

.slider-wrapper {
    height: 100%;
    position: relative;
}

.slide {
    position: absolute;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    opacity: 0;
    transition: opacity 0.5s ease;
    overflow: hidden;
}

.slide.active {
    opacity: 1;
    z-index: 1;
}

.slide img {
    width: 100%;
    height: 100%;
    object-fit: cover;
}

.slide-content {
    position: absolute;
    bottom: 0;
    left: 0;
    right: 0;
    padding: 30px;
    color: #fff;
    background: linear-gradient(to top, rgba(0,0,0,0.8), rgba(0,0,0,0));
    z-index: 2;
}

.slide-content h2 {
    font-size: 32px;
    margin-bottom: 10px;
    text-shadow: 1px 1px 3px rgba(0,0,0,0.5);
}

.slide-content p {
    font-size: 16px;
    margin-bottom: 20px;
    max-width: 600px;
}

.btn {
    display: inline-block;
    padding: 10px 20px;
    background-color: #3498db;
    color: #fff;
    border-radius: 5px;
    text-decoration: none;
    font-weight: bold;
    transition: background-color 0.3s;
}

.btn:hover {
    background-color: #2980b9;
}

.slider-controls {
    position: absolute;
    bottom: 20px;
    right: 20px;
    z-index: 10;
    display: flex;
    align-items: center;
}

.prev-btn, .next-btn {
    background: rgba(255,255,255,0.3);
    border: none;
    width: 36px;
    height: 36px;
    border-radius: 50%;
    display: flex;
    align-items: center;
    justify-content: center;
    color: #fff;
    font-size: 16px;
    cursor: pointer;
    transition: background 0.3s;
}

.prev-btn:hover, .next-btn:hover {
    background: rgba(255,255,255,0.5);
}

.slider-dots {
    display: flex;
    margin: 0 10px;
}

.dot {
    width: 10px;
    height: 10px;
    border-radius: 50%;
    background: rgba(255,255,255,0.5);
    margin: 0 5px;
    cursor: pointer;
    transition: background 0.3s;
}

.dot.active {
    background: #fff;
}

/* Featured Boxes */
.featured-boxes {
    margin-bottom: 30px;
}

.box-grid {
    display: flex;
    gap: 20px;
    flex-wrap: wrap;
}

.feature-box {
    flex: 1;
    min-width: 250px;
    background: #fff;
    padding: 25px;
    border-radius: 8px;
    box-shadow: 0 2px 8px rgba(0,0,0,0.1);
    transition: transform 0.3s, box-shadow 0.3s;
    text-align: center;
}

.feature-box:hover {
    transform: translateY(-5px);
    box-shadow: 0 5px 15px rgba(0,0,0,0.1);
}

.icon-wrap {
    width: 60px;
    height: 60px;
    background: #f5f9ff;
    border-radius: 50%;
    display: flex;
    align-items: center;
    justify-content: center;
    margin: 0 auto 15px;
}

.icon-wrap i {
    font-size: 24px;
    color: #3498db;
}

.feature-box h3 {
    font-size: 18px;
    margin-bottom: 10px;
    color: #333;
}

.feature-box p {
    color: #666;
    margin-bottom: 15px;
    font-size: 14px;
}

.read-more {
    color: #3498db;
    text-decoration: none;
    font-weight: 600;
    font-size: 14px;
    display: inline-flex;
    align-items: center;
}

.read-more i {
    margin-left: 5px;
    transition: transform 0.3s;
}

.read-more:hover i {
    transform: translateX(3px);
}

/* Main Content Layout */
.main-content {
    margin-bottom: 30px;
}

.content-grid {
    display: flex;
    gap: 30px;
}

.main-column {
    flex: 3;
    min-width: 0; /* Prevents overflow in flexbox */
}

.sidebar {
    flex: 1;
    min-width: 250px;
}

/* Content Sections */
.content-section {
    background: #fff;
    border-radius: 8px;
    box-shadow: 0 2px 8px rgba(0,0,0,0.1);
    margin-bottom: 25px;
    overflow: hidden;
}

.section-header {
    display: flex;
    align-items: center;
    justify-content: space-between;
    padding: 15px 20px;
    background: #f5f9ff;
    border-bottom: 1px solid #e5e9f2;
}

.section-header h2 {
    font-size: 18px;
    color: #333;
    display: flex;
    align-items: center;
    margin: 0;
}

.section-header h2 i {
    margin-right: 10px;
    color: #3498db;
}

.view-all {
    font-size: 14px;
    color: #3498db;
    text-decoration: none;
}

.view-all:hover {
    text-decoration: underline;
}

/* News Section */
.news-content {
    padding: 20px;
}

.limited-text p {
    margin-bottom: 15px;
    line-height: 1.6;
    overflow: hidden;
    text-overflow: ellipsis;
    display: -webkit-box;
    -webkit-line-clamp: 3;
    -webkit-box-orient: vertical;
}

/* Content Table */
.content-categories {
    padding: 20px;
}

.category-row {
    display: flex;
    gap: 15px;
    margin-bottom: 15px;
}

.category-row:last-child {
    margin-bottom: 0;
}

.category-box {
    flex: 1;
    background: #f5f9ff;
    padding: 15px;
    border-radius: 5px;
    text-align: center;
    transition: background 0.3s;
}

.category-box:hover {
    background: #e1efff;
}

.category-box i {
    font-size: 24px;
    color: #3498db;
    margin-bottom: 10px;
}

.category-box h3 {
    font-size: 16px;
    margin-bottom: 5px;
    color: #333;
}

.category-box p {
    font-size: 12px;
    color: #666;
    margin-bottom: 10px;
}

.category-box a {
    display: inline-block;
    font-size: 14px;
    color: #3498db;
    text-decoration: none;
    font-weight: 600;
}

.category-box a:hover {
    text-decoration: underline;
}

/* Sidebar Widgets */
.sidebar-widget {
    background: #fff;
    border-radius: 8px;
    box-shadow: 0 2px 8px rgba(0,0,0,0.1);
    margin-bottom: 25px;
    overflow: hidden;
}

.widget-header {
    padding: 15px;
    background: #f5f9ff;
    border-bottom: 1px solid #e5e9f2;
}

.widget-header h3 {
    font-size: 16px;
    color: #333;
    margin: 0;
    display: flex;
    align-items: center;
}

.widget-header h3 i {
    margin-right: 10px;
    color: #3498db;
}

.widget-content {
    padding: 15px;
}

/* Admin Links */
.admin-links {
    list-style: none;
    padding: 0;
    margin: 0;
}

.admin-links li {
    margin-bottom: 10px;
}

.admin-links li:last-child {
    margin-bottom: 0;
}

.admin-links a {
    display: flex;
    align-items: center;
    text-decoration: none;
    color: #333;
    transition: color 0.3s;
}

.admin-links a i {
    margin-right: 10px;
    color: #3498db;
    width: 16px;
    text-align: center;
}

.admin-links a:hover {
    color: #3498db;
}

/* Tag Cloud */
.tag-cloud {
    display: flex;
    flex-wrap: wrap;
    gap: 5px;
}

.tag-cloud a {
    display: inline-block;
    padding: 5px 10px;
    background: #f5f9ff;
    border-radius: 3px;
    font-size: 12px;
    color: #3498db;
    text-decoration: none;
    transition: background 0.3s;
}

.tag-cloud a:hover {
    background: #e1efff;
}

.tag-cloud-all {
    margin-top: 10px;
    text-align: right;
}

/* Online Users */
.online-count {
    margin-bottom: 10px;
}

.online-users {
    font-size: 13px;
}

/* Recent Activity Section */
.recent-activity {
    background: #f8fafd;
    padding: 30px 0;
    margin-bottom: 30px;
    border-top: 1px solid #e5e9f2;
    border-bottom: 1px solid #e5e9f2;
}

.recent-tabs {
    display: flex;
    margin-bottom: 20px;
    border-bottom: 1px solid #e5e9f2;
    padding: 0 10px;
}

.tab-btn {
    background: none;
    border: none;
    padding: 10px 20px;
    font-size: 15px;
    font-weight: 600;
    color: #666;
    cursor: pointer;
    position: relative;
    transition: color 0.3s;
    display: flex;
    align-items: center;
}

.tab-btn i {
    margin-right: 8px;
}

.tab-btn:after {
    content: '';
    position: absolute;
    bottom: -1px;
    left: 0;
    width: 100%;
    height: 3px;
    background: transparent;
    transition: background 0.3s;
}

.tab-btn.active {
    color: #3498db;
}

.tab-btn.active:after {
    background: #3498db;
}

.tab-content {
    position: relative;
}

.tab-pane {
    display: none;
    opacity: 0;
    transition: opacity 0.3s;
}

.tab-pane.active {
    display: block;
    opacity: 1;
}

.recent-list {
    background: #fff;
    border-radius: 8px;
    box-shadow: 0 2px 8px rgba(0,0,0,0.1);
    padding: 15px;
}

.recent-list li {
    margin-bottom: 10px;
    padding-bottom: 10px;
    border-bottom: 1px solid #f0f0f0;
}

.recent-list li:last-child {
    margin-bottom: 0;
    padding-bottom: 0;
    border-bottom: none;
}

.recent-list a {
    color: #333;
    text-decoration: none;
    transition: color 0.3s;
}

.recent-list a:hover {
    color: #3498db;
}

.info-message {
    background: #f8f9fa;
    padding: 15px;
    border-radius: 5px;
    color: #666;
    display: flex;
    align-items: center;
}

.info-message i {
    margin-right: 10px;
    color: #3498db;
}

/* Responsive Design */
@media (max-width: 992px) {
    .content-grid {
        flex-direction: column;
    }
    
    .sidebar {
        min-width: 100%;
    }
    
    .feature-box {
        min-width: calc(50% - 20px);
    }
    
    .hero-slider {
        height: 350px;
    }
}

@media (max-width: 768px) {
    .feature-box {
        min-width: 100%;
    }
    
    .category-row {
        flex-direction: column;
        gap: 10px;
    }
    
    .hero-slider {
        height: 300px;
    }
    
    .slide-content h2 {
        font-size: 24px;
    }
}

@media (max-width: 576px) {
    .hero-slider {
        height: 250px;
    }
    
    .slide-content {
        padding: 15px;
    }
    
    .slide-content h2 {
        font-size: 20px;
    }
    
    .slide-content p {
        font-size: 14px;
        margin-bottom: 10px;
    }
    
    .btn {
        padding: 8px 15px;
        font-size: 14px;
    }
}
</style>

<!-- END: MAIN -->