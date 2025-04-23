$(document).ready(function() {
    // Make tables responsive
    $('table.cells, table.list').wrap('<div class="table-responsive"></div>');
    
    // Add classes to improve mobile experience
    $('#nav').addClass('responsive-nav');
    $('#magnifier').addClass('responsive-search');
    
    // Smooth scrolling for anchor links
    $('a[href^="#"]:not([href="#"])').on('click', function(e) {
        var target = $(this.hash);
        if (target.length) {
            e.preventDefault();
            $('html, body').animate({
                scrollTop: target.offset().top - 20
            }, 500);
        }
    });
    
    // Check if jQuery UI is loaded for tooltips
    if (typeof $.fn.tooltip === 'function') {
        $('[title]').tooltip({
            position: { my: "center bottom-10", at: "center top" }
        });
    }
    
    // Add helper class to images in content
    $('.textbox img').addClass('img-fluid');
    
    // Mobile menu toggle (optional - uncomment to use)
    /*
    $('<div class="menu-toggle"><span></span><span></span><span></span></div>').insertBefore('#nav');
    
    $('.menu-toggle').on('click', function() {
        $('#nav').slideToggle();
    });
    
    $(window).on('resize', function() {
        if ($(window).width() > 768) {
            $('#nav').show();
        }
    });
    */
});