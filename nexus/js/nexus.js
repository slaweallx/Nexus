/**
 * Nexus Theme - Modern Cotonti Theme
 * Main JavaScript File
 */

/* jQuery / $ variable compatibility check */
if (typeof jQuery !== 'undefined') {
    window.$ = jQuery;
}

$(document).ready(function() {
    // Mobile Menu Toggle
    $('.menu-toggle').on('click', function() {
        $('#nav').slideToggle();
        $(this).toggleClass('active');
    });
    
    // Search Toggle for Mobile
    $('.search-toggle').on('click', function() {
        $('#magnifier').slideToggle();
    });
    
    // Make sure legacy jQuery plugins work
    if (typeof $.fn.jqModal !== 'undefined') {
        $('.jqModal').jqModal();
    }
    
    // Add smooth scrolling to any anchor links
    $('a[href^="#"]:not([href="#"])').on('click', function(e) {
        var target = $(this.hash);
        if (target.length) {
            e.preventDefault();
            $('html, body').animate({
                scrollTop: target.offset().top - 80
            }, 500);
        }
    });
    
    // Sticky header on scroll
    var header = $('.header');
    var headerHeight = header.outerHeight();
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
    
    // Add responsive tables
    $('table.cells, table.list').each(function() {
        $(this).wrap('<div class="table-responsive"></div>');
    });
    
    // Responsive menu for small screens
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
    
    // Initial call
    handleResponsiveLayout();
    
    // Call on window resize
    $(window).on('resize', function() {
        handleResponsiveLayout();
    });
    
    // Add Font Awesome icons to legacy buttons if missing
    $('.button, button').each(function() {
        var btnText = $(this).text().trim();
        
        // Only modify if there's no icon already
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
    
    // Add icon to legacy menu items if Font Awesome is available
    if (typeof FontAwesome !== 'undefined' || $('link[href*="font-awesome"]').length) {
        $('#nav > li > a').each(function() {
            var linkText = $(this).text().trim();
            
            // Only modify if there's no icon already
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
    
    // Fix for legacy image-based icons
    $('img[src*="icons/default"]').each(function() {
        $(this).addClass('legacy-icon');
    });
});