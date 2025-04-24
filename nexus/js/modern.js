/**
 * NEXUS COTONTI THEME
 * Designer: Rootali
 * Version: 1.0.0
 * Description: Modern, elegant, professional JS functions for Cotonti CMS
 *
 * Bu script vanilla JS ve jQuery uyumluluğu içerir
 */

/* jQuery / $ değişkeni uyumluluk kontrolü */
if (typeof jQuery !== 'undefined') {
    window.$ = jQuery;
}

/**
 * jqModal Uyumluluk Yamasi
 * Modern jQuery sürümleriyle jqModal'ın düzgün çalışmasını sağlar
 */
(function($) {
    // $.browser özelliği artık jQuery'de bulunmuyor, yeniden ekleyelim
    if (!$.browser) {
        $.browser = {};
        $.browser.msie = false;
        $.browser.version = 0;
        
        if (navigator.userAgent.match(/MSIE ([0-9]+)\./)) {
            $.browser.msie = true;
            $.browser.version = RegExp.$1;
        }
    }
    
    // jqModal zaten tanımlıysa, bunu yapmaya gerek yok
    if (typeof $.fn.jqm !== 'undefined') {
        console.log('jqModal desteği etkinleştirildi');
        
        // jqm hash'ini kontrol et ve sorun varsa düzelt
        if (!$.jqm || !$.jqm.hash) {
            $.jqm = $.jqm || {};
            $.jqm.hash = $.jqm.hash || {};
        }
        
        // Orijinal jqModal fonksiyonlarını korumak için yedekle
        var originalOpen = $.jqm.open;
        var originalClose = $.jqm.close;
        
        // Hata yakalama ile jqm.open fonksiyonunu güçlendir
        $.jqm.open = function(arg, trigger) {
            try {
                return originalOpen.call(this, arg, trigger);
            } catch (e) {
                console.warn('jqModal açılırken hata oluştu:', e);
                // Hata durumunda en azından modalı göstermeye çalış
                if (typeof arg === 'number' && $.jqm.hash[arg]) {
                    var modal = $.jqm.hash[arg];
                    if (modal.w) {
                        modal.w.show();
                    }
                }
                return false;
            }
        };
        
        // Hata yakalama ile jqm.close fonksiyonunu güçlendir
        $.jqm.close = function(arg) {
            try {
                return originalClose.call(this, arg);
            } catch (e) {
                console.warn('jqModal kapatılırken hata oluştu:', e);
                // Hata durumunda en azından modalı gizlemeye çalış
                if (typeof arg === 'number' && $.jqm.hash[arg]) {
                    var modal = $.jqm.hash[arg];
                    if (modal.w) {
                        modal.w.hide();
                    }
                    if (modal.o) {
                        modal.o.remove();
                    }
                }
                return false;
            }
        };
        
        // Modal tetikleyicilerin çalışmasını sağla
        $(document).on('click', '.jqModal', function(e) {
            e.preventDefault();
            var targetId = $(this).attr('href') || $(this).data('target');
            if (targetId) {
                // # işaretini kaldır
                if (targetId.startsWith('#')) {
                    targetId = targetId.substring(1);
                }
                
                // Hedef element ile modal aç
                var targetElement = $('#' + targetId);
                if (targetElement.length) {
                    targetElement.jqmShow();
                }
            }
        });
    }
})(jQuery);

document.addEventListener('DOMContentLoaded', function() {
    'use strict';

    // jQuery varsa jQuery özel kodlarını çalıştır
    if (typeof jQuery !== 'undefined') {
        initJQuerySupport();
    }

    // Tüm bileşenleri başlat
    initHeaderEffects();
    initMobileMenu();
    initSearchToggle();
    initUserDropdown();
    initHeroSlider();
    initTabs();
    initTooltips();
    initScrollReveal();
    initDropdowns();
    initFoldableForums();
    initLazyLoad();
    initSmartForms();
    
    /**
     * jQuery uyumluluk özelliklerini başlat
     */
    function initJQuerySupport() {
        // Tabloları duyarlı hale getir
        $('table.cells, table.list').wrap('<div class="table-responsive"></div>');
        
        // Mobil deneyimi iyileştirmek için sınıflar ekle
        $('#nav').addClass('responsive-nav');
        $('#magnifier').addClass('responsive-search');
        
        // Bağlantı linkleri için yumuşak kaydırma
        $('a[href^="#"]:not([href="#"])').on('click', function(e) {
            var target = $(this.hash);
            if (target.length) {
                e.preventDefault();
                $('html, body').animate({
                    scrollTop: target.offset().top - 20
                }, 500);
            }
        });
        
        // jQuery UI yüklüyse ipuçlarını etkinleştir
        if (typeof $.fn.tooltip === 'function') {
            $('[title]').tooltip({
                position: { my: "center bottom-10", at: "center top" }
            });
        }
        
        // Eski jQuery eklentilerinin çalıştığından emin ol
        if (typeof $.fn.jqModal !== 'undefined') {
            $('.jqModal').jqModal();
        }
        
        // İçerikteki resimlere yardımcı sınıf ekle
        $('.textbox img').addClass('img-fluid');
        
        // Kaydırma sırasında yapışkan başlık (jQuery versiyonu)
        var header = $('.header');
        var scrollTimeout;
        
        $(window).on('scroll', function() {
            if (!scrollTimeout) {
                scrollTimeout = setTimeout(function() {
                    if ($(window).scrollTop() > 100) {
                        header.addClass('scrolled');
                    } else {
                        header.removeClass('scrolled');
                    }
                    scrollTimeout = null;
                }, 100);
            }
        });
        
        // Mobil menü geçişi - jQuery versiyonu
        $('.menu-toggle').on('click', function() {
            $('#nav').slideToggle();
            $(this).toggleClass('active');
            
            // Arama açıksa kapat
            if ($('#magnifier').is(':visible')) {
                $('#magnifier').slideUp();
            }
        });
        
        // Mobil için arama geçişi - jQuery versiyonu
        $('.search-toggle').on('click', function() {
            $('#magnifier').slideToggle();
            
            // Mobilde menü açıksa kapat
            if ($(window).width() < 768 && $('#nav').is(':visible')) {
                $('#nav').slideUp();
                $('.menu-toggle').removeClass('active');
            }
        });
        
        // Kullanıcı açılır menü geçişi - jQuery versiyonu
        $('.user-toggle').on('click', function(e) {
            e.preventDefault();
            e.stopPropagation();
            $('.user-dropdown').slideToggle(200);
            $(this).toggleClass('active');
        });
        
        // Dışarı tıklandığında kullanıcı açılır menüsünü kapat
        $(document).on('click', function(e) {
            if (!$(e.target).closest('.user-account').length) {
                $('.user-dropdown').slideUp(200);
                $('.user-toggle').removeClass('active');
            }
        });
        
        // Eski düğmelere, eksikse Font Awesome simgeleri ekle
        $('.button, button').each(function() {
            var btnText = $(this).text().trim();
            
            // Sadece zaten simge yoksa değiştir
            if ($(this).find('i').length === 0) {
                if (btnText.indexOf('Login') !== -1) {
                    $(this).prepend('<i class="fas fa-sign-in-alt"></i> ');
                } else if (btnText.indexOf('Register') !== -1) {
                    $(this).prepend('<i class="fas fa-user-plus"></i> ');
                } else if (btnText.indexOf('Submit') !== -1 || btnText.indexOf('Save') !== -1) {
                    $(this).prepend('<i class="fas fa-save"></i> ');
                } else if (btnText.indexOf('Search') !== -1) {
                    $(this).prepend('<i class="fas fa-search"></i> ');
                } else if (btnText.indexOf('Delete') !== -1) {
                    $(this).prepend('<i class="fas fa-trash-alt"></i> ');
                } else if (btnText.indexOf('Edit') !== -1) {
                    $(this).prepend('<i class="fas fa-edit"></i> ');
                } else if (btnText.indexOf('Cancel') !== -1) {
                    $(this).prepend('<i class="fas fa-times"></i> ');
                }
            }
        });
        
        // Font Awesome mevcutsa eski menü öğelerine simge ekle
        if (typeof FontAwesome !== 'undefined' || $('link[href*="font-awesome"]').length) {
            $('#nav > li > a').each(function() {
                var linkText = $(this).text().trim();
                
                // Sadece zaten simge yoksa değiştir
                if ($(this).find('i').length === 0) {
                    if (linkText.indexOf('Home') !== -1) {
                        $(this).prepend('<i class="fas fa-home"></i> ');
                    } else if (linkText.indexOf('Forum') !== -1) {
                        $(this).prepend('<i class="fas fa-comments"></i> ');
                    } else if (linkText.indexOf('News') !== -1) {
                        $(this).prepend('<i class="fas fa-newspaper"></i> ');
                    } else if (linkText.indexOf('RSS') !== -1) {
                        $(this).prepend('<i class="fas fa-rss"></i> ');
                    } else if (linkText.indexOf('User') !== -1) {
                        $(this).prepend('<i class="fas fa-users"></i> ');
                    }
                }
            });
        }
        
        // Eski resim tabanlı simgeler için düzeltme
        $('img[src*="icons/default"]').each(function() {
            $(this).addClass('legacy-icon');
        });
        
        // Duyarlı düzen işleme
        function handleResponsiveLayout() {
            if ($(window).width() < 768) {
                $('#nav').hide();
                $('#magnifier').hide();
                $('.menu-toggle, .search-toggle').show();
            } else {
                $('#nav').show();
                $('#magnifier').show();
                $('.menu-toggle, .search-toggle').hide();
            }
        }
        
        // İlk çağrı
        handleResponsiveLayout();
        
        // Pencere yeniden boyutlandırılınca çağır
        $(window).on('resize', function() {
            handleResponsiveLayout();
        });
    }
    
    /**
     * Header Efektleri - Kaydırma sırasında gölge ve arka plan değişimi ekler
     */
    function initHeaderEffects() {
        const header = document.querySelector('.header');
        if (!header) return;

        const scrollThreshold = 50;
        
        window.addEventListener('scroll', function() {
            if (window.scrollY > scrollThreshold) {
                header.classList.add('header-scrolled');
            } else {
                header.classList.remove('header-scrolled');
            }
        });
        
        // İlk kontrol
        if (window.scrollY > scrollThreshold) {
            header.classList.add('header-scrolled');
        }
    }
    
    /**
     * Mobil Menü Geçişi
     */
    function initMobileMenu() {
        const menuToggle = document.querySelector('.menu-toggle');
        const mainNav = document.querySelector('.main-nav');
        
        if (!menuToggle || !mainNav) return;
        
        menuToggle.addEventListener('click', function() {
            menuToggle.classList.toggle('active');
            mainNav.classList.toggle('active');
            
            // Erişilebilirlik
            const expanded = menuToggle.getAttribute('aria-expanded') === 'true' || false;
            menuToggle.setAttribute('aria-expanded', !expanded);
            
            // Arama konteynerı açıksa kapat
            const searchContainer = document.querySelector('.search-container');
            if (searchContainer && searchContainer.classList.contains('active')) {
                searchContainer.classList.remove('active');
                document.querySelector('.search-toggle').classList.remove('active');
            }
        });
        
        // Dışarı tıklandığında menüyü kapat
        document.addEventListener('click', function(e) {
            if (mainNav.classList.contains('active') && 
                !mainNav.contains(e.target) && 
                !menuToggle.contains(e.target)) {
                mainNav.classList.remove('active');
                menuToggle.classList.remove('active');
                menuToggle.setAttribute('aria-expanded', 'false');
            }
        });
        
        // Erişilebilirlik için aria özellikleri ekle
        menuToggle.setAttribute('aria-expanded', 'false');
        menuToggle.setAttribute('aria-controls', 'main-nav');
        menuToggle.setAttribute('aria-label', 'Gezinme menüsünü aç/kapat');
    }
    
    /**
     * Arama Geçişi
     */
    function initSearchToggle() {
        const searchToggle = document.querySelector('.search-toggle');
        const searchContainer = document.querySelector('.search-container');
        
        if (!searchToggle || !searchContainer) return;
        
        searchToggle.addEventListener('click', function() {
            searchToggle.classList.toggle('active');
            //searchContainer.classList.toggle('active');
            
            // Erişilebilirlik
            const expanded = searchToggle.getAttribute('aria-expanded') === 'true' || false;
            searchToggle.setAttribute('aria-expanded', !expanded);
            
            // Açıldığında giriş alanına odaklan
            if (searchContainer.classList.contains('active')) {
                const searchInput = searchContainer.querySelector('input');
                if (searchInput) {
                    setTimeout(function() {
                        searchInput.focus();
                    }, 100);
                }
                
                // Mobil menü açıksa kapat
                const mainNav = document.querySelector('.main-nav');
                const menuToggle = document.querySelector('.menu-toggle');
                if (mainNav && mainNav.classList.contains('active')) {
                    mainNav.classList.remove('active');
                    menuToggle.classList.remove('active');
                    menuToggle.setAttribute('aria-expanded', 'false');
                }
            }
        });
        
        // Dışarı tıklandığında aramayı kapat
        document.addEventListener('click', function(e) {
            if (searchContainer.classList.contains('active') && 
                !searchContainer.contains(e.target) && 
                !searchToggle.contains(e.target)) {
                searchContainer.classList.remove('active');
                searchToggle.classList.remove('active');
                searchToggle.setAttribute('aria-expanded', 'false');
            }
        });
        
        // Erişilebilirlik için aria özellikleri ekle
        searchToggle.setAttribute('aria-expanded', 'false');
        searchToggle.setAttribute('aria-controls', 'search-container');
        searchToggle.setAttribute('aria-label', 'Aramayı aç/kapat');
    }
    
    /**
     * Kullanıcı Açılır Menüsü
     */
    function initUserDropdown() {
        const userToggle = document.querySelector('.user-toggle');
        const userDropdown = document.querySelector('.user-dropdown');
        
        if (!userToggle || !userDropdown) return;
        
        userToggle.addEventListener('click', function(e) {
            e.stopPropagation();
            userToggle.classList.toggle('active');
            userDropdown.classList.toggle('active');
            
            // Erişilebilirlik
            const expanded = userToggle.getAttribute('aria-expanded') === 'true' || false;
            userToggle.setAttribute('aria-expanded', !expanded);
        });
        
        // Dışarı tıklandığında açılır menüyü kapat
        document.addEventListener('click', function(e) {
            if (userDropdown.classList.contains('active') && 
                !userDropdown.contains(e.target) && 
                !userToggle.contains(e.target)) {
                userDropdown.classList.remove('active');
                userToggle.classList.remove('active');
                userToggle.setAttribute('aria-expanded', 'false');
            }
        });
        
        // Erişilebilirlik için aria özellikleri ekle
        userToggle.setAttribute('aria-expanded', 'false');
        userToggle.setAttribute('aria-controls', 'user-dropdown');
        userToggle.setAttribute('aria-label', 'Kullanıcı menüsü');
    }
    
    /**
     * Hero Slider İşlevselliği
     */
    function initHeroSlider() {
        const sliderContainer = document.querySelector('.slider-container');
        if (!sliderContainer) return;
        
        const slides = sliderContainer.querySelectorAll('.slide');
        const dots = sliderContainer.querySelectorAll('.dot');
        const prevBtn = sliderContainer.querySelector('.prev-btn');
        const nextBtn = sliderContainer.querySelector('.next-btn');
        
        if (slides.length === 0) return;
        
        let currentSlide = 0;
        let slideInterval;
        const intervalTime = 5000;
        
        // Belirli bir slaytı gösterme işlevi
        function showSlide(index) {
            // Tüm slaytları ve noktaları devre dışı bırak
            slides.forEach(slide => slide.classList.remove('active'));
            dots.forEach(dot => dot.classList.remove('active'));
            
            // Geçerli slaytı ve noktayı etkinleştir
            slides[index].classList.add('active');
            if (dots.length > 0) {
                dots[index].classList.add('active');
            }
            
            currentSlide = index;
        }
        
        // Sonraki slayt işlevi
        function nextSlide() {
            let nextIndex = currentSlide + 1;
            if (nextIndex >= slides.length) {
                nextIndex = 0;
            }
            showSlide(nextIndex);
        }
        
        // Önceki slayt işlevi
        function prevSlide() {
            let prevIndex = currentSlide - 1;
            if (prevIndex < 0) {
                prevIndex = slides.length - 1;
            }
            showSlide(prevIndex);
        }
        
        // Otomatik oynatmayı başlat
        function startSlideInterval() {
            slideInterval = setInterval(nextSlide, intervalTime);
        }
        
        // Otomatik oynatma zamanlayıcısını sıfırla
        function resetSlideInterval() {
            clearInterval(slideInterval);
            startSlideInterval();
        }
        
        // Sonraki ve önceki düğmeler için olay dinleyicileri
        if (nextBtn) {
            nextBtn.addEventListener('click', function() {
                nextSlide();
                resetSlideInterval();
            });
        }
        
        if (prevBtn) {
            prevBtn.addEventListener('click', function() {
                prevSlide();
                resetSlideInterval();
            });
        }
        
        // Noktalar için olay dinleyicileri
        dots.forEach((dot, index) => {
            dot.addEventListener('click', function() {
                showSlide(index);
                resetSlideInterval();
            });
        });
        
        // Slider'ı başlat
        showSlide(currentSlide);
        startSlideInterval();
        
        // Dokunmatik cihazlar için kaydırma desteği ekle
        let touchStartX = 0;
        let touchEndX = 0;
        
        sliderContainer.addEventListener('touchstart', function(e) {
            touchStartX = e.changedTouches[0].screenX;
        }, { passive: true });
        
        sliderContainer.addEventListener('touchend', function(e) {
            touchEndX = e.changedTouches[0].screenX;
            handleSwipe();
        }, { passive: true });
        
        function handleSwipe() {
            const swipeThreshold = 50;
            if (touchEndX < touchStartX - swipeThreshold) {
                // Sola kaydır
                nextSlide();
                resetSlideInterval();
            } else if (touchEndX > touchStartX + swipeThreshold) {
                // Sağa kaydır
                prevSlide();
                resetSlideInterval();
            }
        }
    }
    
    /**
     * Sekmeler İşlevselliği
     */
    function initTabs() {
        const tabContainers = document.querySelectorAll('.tabs, .recent-tabs');
        
        tabContainers.forEach(container => {
            const tabButtons = container.querySelectorAll('.tab-btn, .tab-nav-item');
            const tabPanes = document.querySelectorAll('.tab-pane');
            
            if (tabButtons.length === 0 || tabPanes.length === 0) return;
            
            tabButtons.forEach(btn => {
                btn.addEventListener('click', function() {
                    const tabId = this.getAttribute('data-tab');
                    
                    // Tüm düğmeleri ve panelleri devre dışı bırak
                    tabButtons.forEach(btn => btn.classList.remove('active'));
                    tabPanes.forEach(pane => pane.classList.remove('active'));
                    
                    // Geçerli düğmeyi ve paneli etkinleştir
                    this.classList.add('active');
                    document.getElementById(tabId + '-tab').classList.add('active');
                    
                    // Erişilebilirlik
                    tabButtons.forEach(btn => btn.setAttribute('aria-selected', 'false'));
                    this.setAttribute('aria-selected', 'true');
                });
                
                // Erişilebilirlik için aria özellikleri ekle
                const tabId = btn.getAttribute('data-tab');
                btn.setAttribute('role', 'tab');
                btn.setAttribute('aria-selected', btn.classList.contains('active') ? 'true' : 'false');
                btn.setAttribute('aria-controls', tabId + '-tab');
                
                const tabPane = document.getElementById(tabId + '-tab');
                if (tabPane) {
                    tabPane.setAttribute('role', 'tabpanel');
                    tabPane.setAttribute('aria-labelledby', btn.id || '');
                }
            });
        });
    }
    
    /**
     * İpuçları
     */
    function initTooltips() {
        const tooltips = document.querySelectorAll('.tooltip');
        
        tooltips.forEach(tooltip => {
            const tooltipText = tooltip.querySelector('.tooltip-text');
            if (!tooltipText) return;
            
            // Kullanılabilir ekran alanına göre ipucunu konumlandır
            tooltip.addEventListener('mouseenter', function() {
                const rect = tooltipText.getBoundingClientRect();
                const viewportWidth = window.innerWidth;
                
                if (rect.right > viewportWidth) {
                    tooltipText.style.left = 'auto';
                    tooltipText.style.right = '0';
                    tooltipText.style.transform = 'translateX(0)';
                }
            });
        });
    }
    
    /**
     * Kaydırma Açığa Çıkarma - Öğeler görünüme kaydırıldıkça anmasyon ekle
     */
    function initScrollReveal() {
        const elements = document.querySelectorAll('.feature-box, .content-section, .sidebar-widget');
        
        if ('IntersectionObserver' in window) {
            const observer = new IntersectionObserver((entries) => {
                entries.forEach(entry => {
                    if (entry.isIntersecting) {
                        entry.target.classList.add('scrolled');
                        observer.unobserve(entry.target);
                    }
                });
            }, {
                threshold: 0.2
            });
            
            elements.forEach(element => {
                element.classList.add('reveal-element');
                observer.observe(element);
            });
        } else {
            // IntersectionObserver'ı desteklemeyen tarayıcılar için yedek
            elements.forEach(element => {
                element.classList.add('scrolled');
            });
        }
    }
    
    /**
     * Açılır Menüler
     */
    function initDropdowns() {
        const dropdownToggles = document.querySelectorAll('[data-toggle="dropdown"]');
        
        dropdownToggles.forEach(toggle => {
            const dropdownMenu = toggle.nextElementSibling;
            if (!dropdownMenu || !dropdownMenu.classList.contains('dropdown-menu')) return;
            
            toggle.addEventListener('click', function(e) {
                e.preventDefault();
                e.stopPropagation();
                
                // Diğer tüm açılır menüleri kapat
                document.querySelectorAll('.dropdown-menu.active').forEach(menu => {
                    if (menu !== dropdownMenu) {
                        menu.classList.remove('active');
                        const otherToggle = menu.previousElementSibling;
                        if (otherToggle) {
                            otherToggle.classList.remove('active');
                            otherToggle.setAttribute('aria-expanded', 'false');
                        }
                    }
                });
                
                // Bu açılır menüyü aç/kapat
                dropdownMenu.classList.toggle('active');
                toggle.classList.toggle('active');
                
                // Erişilebilirlik
                const expanded = toggle.getAttribute('aria-expanded') === 'true' || false;
                toggle.setAttribute('aria-expanded', !expanded);
            });
            
            // Erişilebilirlik için aria özellikleri ekle
            toggle.setAttribute('aria-expanded', 'false');
            toggle.setAttribute('aria-haspopup', 'true');
            
            // Dışarı tıklandığında açılır menüyü kapat
            document.addEventListener('click', function(e) {
                if (dropdownMenu.classList.contains('active') && 
                    !dropdownMenu.contains(e.target) && 
                    !toggle.contains(e.target)) {
                    dropdownMenu.classList.remove('active');
                    toggle.classList.remove('active');
                    toggle.setAttribute('aria-expanded', 'false');
                }
            });
        });
    }
    
    /**
     * Katlanabilir Forumlar - Forum kategorilerini genişlet/daralt
     */
    function initFoldableForums() {
        // Blokları aç/kapat işlevi
        window.toggleblock = function(id) {
            const block = document.getElementById(id);
            if (block) {
                block.style.display = block.style.display === 'none' ? 'table-row-group' : 'none';
            }
            return false;
        };
        
        // Tüm blokları aç/kapat işlevi
        window.toggleAll = function(action) {
            const categoryBlocks = document.querySelectorAll('tbody[id^="blk_"]');
            categoryBlocks.forEach(block => {
                block.style.display = action === 'show' ? 'table-row-group' : 'none';
            });
            return false;
        };
    }
    
    /**
     * Tembel Yüklenen Görseller
     */
    function initLazyLoad() {
        if ('IntersectionObserver' in window) {
            const imageObserver = new IntersectionObserver((entries, observer) => {
                entries.forEach(entry => {
                    if (entry.isIntersecting) {
                        const img = entry.target;
                        const src = img.getAttribute('data-src');
                        
                        if (src) {
                            img.src = src;
                            img.removeAttribute('data-src');
                            img.classList.add('loaded');
                        }
                        
                        observer.unobserve(img);
                    }
                });
            });
            
            const lazyImages = document.querySelectorAll('img[data-src]');
            lazyImages.forEach(img => {
                imageObserver.observe(img);
            });
        } else {
            // IntersectionObserver'ı desteklemeyen tarayıcılar için yedek
            const lazyImages = document.querySelectorAll('img[data-src]');
            lazyImages.forEach(img => {
                const src = img.getAttribute('data-src');
                if (src) {
                    img.src = src;
                    img.removeAttribute('data-src');
                }
            });
        }
    }
    
    /**
     * Akıllı Formlar - Form geliştirmeleri ve doğrulama
     */
    function initSmartForms() {
        // Form alanları içerik içerdiğinde active sınıfı ekle
        const formFields = document.querySelectorAll('input, textarea, select');
        
        formFields.forEach(field => {
            // İlk kontrol
            if (field.value !== '') {
                field.classList.add('has-content');
            }
            
            // Değişiklikte güncelle
            field.addEventListener('input', function() {
                if (this.value !== '') {
                    this.classList.add('has-content');
                } else {
                    this.classList.remove('has-content');
                }
            });
            
            // Odak stillerini ekle
            field.addEventListener('focus', function() {
                this.parentElement.classList.add('input-focused');
            });
            
            field.addEventListener('blur', function() {
                this.parentElement.classList.remove('input-focused');
            });
        });
        
        // Dosya girişlerini özel UI ile geliştir
        const fileInputs = document.querySelectorAll('input[type="file"]');
        
        fileInputs.forEach(input => {
            const parent = input.parentElement;
            const fileNameDisplay = document.createElement('span');
            fileNameDisplay.className = 'file-name';
            fileNameDisplay.textContent = 'Dosya seçilmedi';
            
            // Özel düğme oluştur
            const customButton = document.createElement('span');
            customButton.className = 'custom-file-button';
            customButton.innerHTML = '<i class="fas fa-upload"></i> Dosya Seç';
            
            // Öğeleri ekle
            parent.insertBefore(customButton, input.nextSibling);
            parent.insertBefore(fileNameDisplay, customButton.nextSibling);
            
            // Görünmez ama erişilebilir olması için orijinal girişi stillendir
            input.style.opacity = '0';
            input.style.position = 'absolute';
            input.style.pointerEvents = 'none';
            
            // Özel düğmenin dosya girişini tetiklemesini sağla
            customButton.addEventListener('click', function() {
                input.click();
            });
            
            // Bir dosya seçildiğinde dosya adı görüntüsünü güncelle
            input.addEventListener('change', function() {
                if (this.files && this.files.length > 0) {
                    fileNameDisplay.textContent = this.files[0].name;
                } else {
                    fileNameDisplay.textContent = 'Dosya seçilmedi';
                }
            });
        });
        
        // Form doğrulama
        const forms = document.querySelectorAll('form');
        
        forms.forEach(form => {
            form.addEventListener('submit', function(e) {
                let isValid = true;
                const requiredFields = this.querySelectorAll('[required]');
                
                requiredFields.forEach(field => {
                    if (!field.value.trim()) {
                        isValid = false;
                        field.classList.add('is-invalid');
                        
                        // Gerekirse doğrulama mesajı oluştur
                        let errorMessage = field.parentElement.querySelector('.validation-message');
                        if (!errorMessage) {
                            errorMessage = document.createElement('div');
                            errorMessage.className = 'validation-message';
                            field.parentElement.appendChild(errorMessage);
                        }
                        
                        errorMessage.textContent = 'Bu alan zorunludur';
                        errorMessage.style.color = 'var(--danger-color)';
                        errorMessage.style.fontSize = 'var(--font-size-sm)';
                        errorMessage.style.marginTop = 'var(--spacing-1)';
                    } else {
                        field.classList.remove('is-invalid');
                        const errorMessage = field.parentElement.querySelector('.validation-message');
                        if (errorMessage) {
                            errorMessage.remove();
                        }
                    }
                });
                
                if (!isValid) {
                    e.preventDefault();
                    
                    // İlk geçersiz alana kaydır
                    const firstInvalid = this.querySelector('.is-invalid');
                    if (firstInvalid) {
                        firstInvalid.focus();
                        firstInvalid.scrollIntoView({ behavior: 'smooth', block: 'center' });
                    }
                }
            });
        });
    }
    
    // JS kullanılabilir olduğunda body'ye bir sınıf ekle
    document.body.classList.add('js-enabled');
});

/**
 * Sayfa yüklendikten sonra çalışan ek efektler ve animasyonlar
 */
window.addEventListener('load', function() {
    // Her şey yüklendikten sonra içeriği canlandır
    document.body.classList.add('page-loaded');
    
    // Ana içerik alanının minimum yüksekliğini ayarla
    function setMainContentHeight() {
        const header = document.querySelector('.header');
        const footer = document.querySelector('.footer');
        const mainContent = document.querySelector('.main-content');
        
        if (!header || !footer || !mainContent) return;
        
        const windowHeight = window.innerHeight;
        const headerHeight = header.offsetHeight;
        const footerHeight = footer.offsetHeight;
        const minHeight = windowHeight - headerHeight - footerHeight;
        
        mainContent.style.minHeight = `${minHeight}px`;
    }
    
    setMainContentHeight();
    window.addEventListener('resize', setMainContentHeight);
    
    // Akordiyon öğelerini başlat
    initAccordions();
    
    /**
     * Akordiyon İşlevselliği
     */
    function initAccordions() {
        const accordionButtons = document.querySelectorAll('.accordion-button');
        
        accordionButtons.forEach(button => {
            button.addEventListener('click', function() {
                const accordionItem = this.parentElement.parentElement;
                const accordionBody = accordionItem.querySelector('.accordion-body');
                
                // Active sınıfını aç/kapat
                this.classList.toggle('active');
                accordionBody.classList.toggle('active');
                
                // Erişilebilirlik
                const expanded = this.getAttribute('aria-expanded') === 'true' || false;
                this.setAttribute('aria-expanded', !expanded);
            });
            
            // Erişilebilirlik için aria özellikleri ekle
            button.setAttribute('aria-expanded', 'false');
            
            const accordionBody = button.parentElement.parentElement.querySelector('.accordion-body');
            if (accordionBody) {
                const id = 'accordion-' + Math.random().toString(36).substring(2, 9);
                accordionBody.id = id;
                button.setAttribute('aria-controls', id);
            }
        });
    }
    
    // Harici bağlantıları target="_blank" ve rel nitelikleriyle geliştir
    const links = document.querySelectorAll('a[href^="http"]:not([target])');
    links.forEach(link => {
        if (!link.hostname.includes(location.hostname)) {
            link.setAttribute('target', '_blank');
            link.setAttribute('rel', 'noopener noreferrer');
            
            // Harici bağlantılara hafif bir simge ekle
            const icon = document.createElement('i');
            icon.className = 'fas fa-external-link-alt';
            icon.style.fontSize = 'var(--font-size-xs)';
            icon.style.marginLeft = '5px';
            icon.style.opacity = '0.7';
            link.appendChild(icon);
        }
    });
    
    // Başa dön düğmesini başlat
    initBackToTop();
    
    /**
     * Başa Dön Düğmesi
     */
    function initBackToTop() {
        // Düğme yoksa oluştur
        let backToTopBtn = document.getElementById('back-to-top');
        
        if (!backToTopBtn) {
            backToTopBtn = document.createElement('button');
            backToTopBtn.id = 'back-to-top';
            backToTopBtn.className = 'back-to-top';
            backToTopBtn.innerHTML = '<i class="fas fa-arrow-up"></i>';
            document.body.appendChild(backToTopBtn);
            
            // Düğmeyi stillendirme
            backToTopBtn.style.position = 'fixed';
            backToTopBtn.style.bottom = '20px';
            backToTopBtn.style.right = '20px';
            backToTopBtn.style.width = '40px';
            backToTopBtn.style.height = '40px';
            backToTopBtn.style.backgroundColor = 'var(--primary-color)';
            backToTopBtn.style.color = 'var(--text-white)';
            backToTopBtn.style.border = 'none';
            backToTopBtn.style.borderRadius = 'var(--border-radius-full)';
            backToTopBtn.style.boxShadow = 'var(--shadow)';
            backToTopBtn.style.cursor = 'pointer';
            backToTopBtn.style.display = 'flex';
            backToTopBtn.style.alignItems = 'center';
            backToTopBtn.style.justifyContent = 'center';
            backToTopBtn.style.opacity = '0';
            backToTopBtn.style.visibility = 'hidden';
            backToTopBtn.style.transition = 'opacity 0.3s, visibility 0.3s, transform 0.3s';
            backToTopBtn.style.zIndex = 'var(--z-index-fixed)';
            
            // Hover efekti ekle
            backToTopBtn.addEventListener('mouseover', function() {
                this.style.transform = 'translateY(-5px)';
            });
            
            backToTopBtn.addEventListener('mouseout', function() {
                this.style.transform = 'translateY(0)';
            });
        }
        
        // Kaydırma konumuna göre düğmeyi göster/gizle
        function toggleBackToTopButton() {
            if (window.scrollY > 300) {
                backToTopBtn.style.opacity = '1';
                backToTopBtn.style.visibility = 'visible';
            } else {
                backToTopBtn.style.opacity = '0';
                backToTopBtn.style.visibility = 'hidden';
            }
        }
        
        // Tıklandığında başa kaydır
        backToTopBtn.addEventListener('click', function() {
            window.scrollTo({
                top: 0,
                behavior: 'smooth'
            });
        });
        
        // Kaydırma konumunu kontrol et
        window.addEventListener('scroll', toggleBackToTopButton);
        toggleBackToTopButton(); // İlk kontrol
    }
});
