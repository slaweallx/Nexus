<!-- BEGIN: FOOTER -->
        </div><!-- .container -->
    </main><!-- .main-content -->

    <footer class="footer">
        <div class="container">
            <div class="footer-top">
                <div class="footer-grid">
                    <div class="footer-col brand-col">
                        <div class="footer-logo">
                            <a href="{PHP.cfg.mainurl}">
                                <h2>{PHP.cfg.maintitle}</h2>
                            </a>
                        </div>
                        <div class="footer-description">
                          <p>Your go-to platform for community interactions, discussions, and content sharing. Join our growing network today.</p>
                            <p>Your go-to platform for community interactions, discussions, and content sharing. Join our growing network today.</p>
                        </div>
                        <div class="social-icons">
                            <a href="#" class="social-icon" title="Facebook"><i class="fab fa-facebook-f"></i></a>
                            <a href="#" class="social-icon" title="Twitter"><i class="fab fa-twitter"></i></a>
                            <a href="#" class="social-icon" title="Instagram"><i class="fab fa-instagram"></i></a>
                            <a href="#" class="social-icon" title="LinkedIn"><i class="fab fa-linkedin-in"></i></a>
                            <a href="#" class="social-icon" title="GitHub"><i class="fab fa-github"></i></a>
                        </div>
                    </div>

                    <div class="footer-col">
                        <h3>Quick Links</h3>
                        <ul class="footer-links">
                            <li><a href="{PHP.cfg.mainurl}"><i class="fas fa-home"></i> {PHP.L.Home}</a></li>
                            <!-- IF {PHP|cot_module_active('forums')} -->
                            <li><a href="{PHP|cot_url('forums')}"><i class="fas fa-comments"></i> {PHP.L.Forums}</a></li>
                            <!-- ENDIF -->
                            <li><a href="{PHP|cot_url('page','c=news')}"><i class="fas fa-newspaper"></i> {PHP.L.News}</a></li>
                            <li><a href="{PHP|cot_url('users')}"><i class="fas fa-users"></i> {PHP.L.Users}</a></li>
                            <!-- IF {PHP|cot_plugin_active('search')} -->
                            <li><a href="{PHP|cot_url('search')}"><i class="fas fa-search"></i> {PHP.L.Search}</a></li>
                            <!-- ENDIF -->
                            <li><a href="{PHP|cot_url('contact')}"><i class="fas fa-envelope"></i> {PHP.L.Contact}</a></li>
                        </ul>
                    </div>

                    <div class="footer-col">
                        <h3>Community</h3>
                        <ul class="footer-links">
                            <li><a href="{PHP|cot_url('page','c=guidelines')}"><i class="fas fa-gavel"></i> Community Guidelines</a></li>
                            <li><a href="{PHP|cot_url('forums','m=posts&s=unread')}"><i class="fas fa-bell"></i> Unread Posts</a></li>
                            <li><a href="{PHP|cot_url('forums','m=topics&s=unread')}"><i class="fas fa-bullhorn"></i> Unread Topics</a></li>
                            <li><a href="{PHP|cot_url('users','m=online')}"><i class="fas fa-user-clock"></i> Who's Online</a></li>
                            <li><a href="{PHP|cot_url('page','c=faq')}"><i class="fas fa-question-circle"></i> FAQ</a></li>
                        </ul>
                    </div>

                    <div class="footer-col">
                        <h3>Resources</h3>
                        <div class="footer-resources">
                            <!-- IF {PHP|cot_module_active('rss')} -->
                            <div class="resource-item">
                                <div class="resource-icon">
                                    <i class="fas fa-rss"></i>
                                </div>
                                <div class="resource-content">
                                    <h4>RSS Feeds</h4>
                                    <a href="{PHP|cot_url('rss')}" class="resource-link">Subscribe <i class="fas fa-arrow-right"></i></a>
                                </div>
                            </div>
                            <!-- ENDIF -->
                            
                            <div class="newsletter-signup">
                                <h4>Subscribe to Newsletter</h4>
                                <p>Get the latest updates</p>
                                <form class="newsletter-form">
                                    <input type="email" placeholder="Your email address" required>
                                    <button type="submit"><i class="fas fa-paper-plane"></i></button>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            
            <div class="footer-divider"></div>
            
            <div class="footer-bottom">
                <div class="copyright">
                    {FOOTER_COPYRIGHT}
                </div>
                <div class="credits">
                    <span class="theme-by">Theme by <a href="https://rootali.net">Rootali</a></span>
                </div>
            </div>
        </div>
    </footer>

    <!-- IF {FOOTER_DEVMODE} -->
    <div class="dev-info container">
        <div class="dev-card">
            <div class="dev-header">
                <i class="fas fa-code"></i> Development Mode Information
            </div>
            <div class="dev-body">
                <p>{FOOTER_CREATIONTIME}</p>
                <div class="dev-section">
                    <h4><i class="fas fa-plug"></i> Hooks fired:</h4>
                    <div class="dev-hooks">
                        {FOOTER_HOOKS}
                    </div>
                </div>
                <!-- IF {FOOTER_SQLSTATISTICS} -->
                <div class="dev-section">
                    <h4><i class="fas fa-database"></i> SQL Statistics:</h4>
                    <div class="dev-sql">
                        {FOOTER_SQLSTATISTICS}
                    </div>
                </div>
                <!-- ENDIF -->
                <div class="dev-section">
                    <h4><i class="fas fa-info-circle"></i> Additional Info:</h4>
                    <div class="dev-extra">
                        {FOOTER_DEVMODE}
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- ENDIF -->
    
    {FOOTER_RC}
    
    <script>
        // Toggle mobile menu
        document.addEventListener('DOMContentLoaded', function() {
            // Toggle mobile menu
            const menuToggle = document.querySelector('.menu-toggle');
            if (menuToggle) {
                menuToggle.addEventListener('click', function() {
                    document.querySelector('.main-nav').classList.toggle('active');
                    this.classList.toggle('active');
                });
            }
            
            // Toggle search on mobile
            const searchToggle = document.querySelector('.search-toggle');
            if (searchToggle) {
                searchToggle.addEventListener('click', function() {
                    document.querySelector('.search-container').classList.toggle('active');
                });
            }

            // Newsletter form submission (prevent default for demo)
            const newsletterForm = document.querySelector('.newsletter-form');
            if (newsletterForm) {
                newsletterForm.addEventListener('submit', function(e) {
                    e.preventDefault();
                    alert('Thank you for subscribing to our newsletter!');
                    this.reset();
                });
            }
        });
    </script>

    <style>
    /* Footer Styles */
    .footer {
        background: #1e2a3a;
        color: #f0f2f5;
        padding: 50px 0 0;
        margin-top: 50px;
    }

    .footer-top {
        padding-bottom: 30px;
    }

    .footer-grid {
        display: flex;
        flex-wrap: wrap;
        gap: 30px;
    }

    .footer-col {
        flex: 1;
        min-width: 250px;
    }

    .footer-col.brand-col {
        flex: 1.5;
    }

    .footer-logo a {
        text-decoration: none;
        color: #fff;
    }

    .footer-logo h2 {
        font-size: 24px;
        margin: 0 0 15px;
        font-weight: 700;
    }

    .footer-description {
        margin-bottom: 20px;
        color: #a8b6c7;
        line-height: 1.6;
    }

    .footer-description p {
        margin: 0;
    }

    .social-icons {
        display: flex;
        gap: 12px;
        margin-top: 20px;
    }

    .social-icon {
        display: flex;
        align-items: center;
        justify-content: center;
        width: 36px;
        height: 36px;
        background: rgba(255, 255, 255, 0.1);
        border-radius: 50%;
        color: #fff;
        text-decoration: none;
        transition: background 0.3s, transform 0.3s;
    }

    .social-icon:hover {
        background: #3498db;
        transform: translateY(-3px);
    }

    .footer-col h3 {
        font-size: 18px;
        margin: 0 0 20px;
        color: #fff;
        position: relative;
        padding-bottom: 10px;
    }

    .footer-col h3:after {
        content: '';
        position: absolute;
        bottom: 0;
        left: 0;
        width: 40px;
        height: 3px;
        background: #3498db;
    }

    .footer-links {
        list-style: none;
        padding: 0;
        margin: 0;
    }

    .footer-links li {
        margin-bottom: 12px;
    }

    .footer-links a {
        color: #a8b6c7;
        text-decoration: none;
        display: inline-flex;
        align-items: center;
        transition: color 0.3s;
    }

    .footer-links a:hover {
        color: #3498db;
    }

    .footer-links a i {
        margin-right: 10px;
        width: 16px;
        text-align: center;
    }

    /* Resources section */
    .footer-resources {
        display: flex;
        flex-direction: column;
        gap: 20px;
    }

    .resource-item {
        display: flex;
        gap: 15px;
    }

    .resource-icon {
        flex-shrink: 0;
        width: 40px;
        height: 40px;
        background: rgba(255, 255, 255, 0.1);
        border-radius: 8px;
        display: flex;
        align-items: center;
        justify-content: center;
        color: #3498db;
        font-size: 18px;
    }

    .resource-content {
        flex: 1;
    }

    .resource-content h4 {
        margin: 0 0 5px;
        font-size: 16px;
        color: #f0f2f5;
    }

    .resource-content p {
        margin: 0 0 8px;
        font-size: 14px;
        color: #a8b6c7;
    }

    .resource-link {
        color: #3498db;
        font-size: 14px;
        text-decoration: none;
        display: inline-flex;
        align-items: center;
        font-weight: 500;
        transition: color 0.3s;
    }

    .resource-link:hover {
        color: #2980b9;
    }

    .resource-link i {
        margin-left: 5px;
        font-size: 12px;
        transition: transform 0.3s;
    }

    .resource-link:hover i {
        transform: translateX(3px);
    }

    /* Newsletter */
    .newsletter-signup {
        margin-top: 10px;
        background: rgba(255, 255, 255, 0.05);
        padding: 15px;
        border-radius: 8px;
    }

    .newsletter-signup h4 {
        margin: 0 0 5px;
        font-size: 16px;
        color: #f0f2f5;
    }

    .newsletter-signup p {
        margin: 0 0 15px;
        font-size: 14px;
        color: #a8b6c7;
    }

    .newsletter-form {
        display: flex;
        overflow: hidden;
        border-radius: 6px;
        background: rgba(255, 255, 255, 0.1);
    }

    .newsletter-form input {
        flex: 1;
        border: none;
        background: transparent;
        padding: 12px 15px;
        color: #fff;
        outline: none;
    }

    .newsletter-form input::placeholder {
        color: #a8b6c7;
    }

    .newsletter-form button {
        background: #3498db;
        border: none;
        color: white;
        padding: 0 15px;
        cursor: pointer;
        transition: background 0.3s;
    }

    .newsletter-form button:hover {
        background: #2980b9;
    }

    /* Footer Bottom */
    .footer-divider {
        height: 1px;
        background: rgba(255, 255, 255, 0.1);
        margin: 10px 0;
    }

    .footer-bottom {
        display: flex;
        justify-content: space-between;
        align-items: center;
        padding: 20px 0;
        color: #a8b6c7;
        font-size: 14px;
    }

    .credits {
        display: flex;
        gap: 20px;
    }

    .credits a {
        color: #3498db;
        text-decoration: none;
        transition: color 0.3s;
    }

    .credits a:hover {
        color: #2980b9;
    }

    /* Dev Info Section */
    .dev-info {
        margin-top: 30px;
        margin-bottom: 30px;
    }

    .dev-card {
        background: #f8f9fa;
        border-radius: 8px;
        box-shadow: 0 2px 8px rgba(0,0,0,0.1);
        overflow: hidden;
    }

    .dev-header {
        background: #e9ecef;
        padding: 12px 20px;
        font-weight: 600;
        color: #495057;
        border-bottom: 1px solid #dee2e6;
        display: flex;
        align-items: center;
    }

    .dev-header i {
        margin-right: 10px;
        color: #3498db;
    }

    .dev-body {
        padding: 20px;
    }

    .dev-section {
        margin-bottom: 20px;
    }

    .dev-section:last-child {
        margin-bottom: 0;
    }

    .dev-section h4 {
        margin: 0 0 10px;
        font-size: 16px;
        color: #495057;
        display: flex;
        align-items: center;
    }

    .dev-section h4 i {
        margin-right: 8px;
        color: #3498db;
    }

    .dev-hooks, .dev-sql, .dev-extra {
        background: #fff;
        padding: 15px;
        border-radius: 6px;
        border: 1px solid #e5e9f2;
        overflow-x: auto;
        font-size: 14px;
        color: #666;
    }

    /* Responsive */
    @media (max-width: 992px) {
        .footer-grid {
            gap: 40px 20px;
        }
        
        .footer-col.brand-col {
            flex: 100%;
        }
        
        .footer-col {
            min-width: calc(50% - 20px);
        }
    }

    @media (max-width: 768px) {
        .footer {
            padding: 40px 0 0;
        }
        
        .footer-bottom {
            flex-direction: column;
            gap: 15px;
            text-align: center;
        }
        
        .credits {
            flex-direction: column;
            gap: 10px;
        }
    }

    @media (max-width: 576px) {
        .footer-col {
            min-width: 100%;
        }
    }
    </style>
</body>
</html>
<!-- END: FOOTER -->