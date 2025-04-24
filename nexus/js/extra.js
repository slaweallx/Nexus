/**
 * Admin Buttons
 * 
 */

// jQuery control
(function() {
    // Önce document ready için vanilla JS kullan
    document.addEventListener('DOMContentLoaded', function() {
        // Admin butonları her durumda geliştir
        enhanceAdminButtons();
        
        // jQuery bağımlı kodları çalıştır
        initjQueryFeatures();
    });
    
    /**
     * jQuery gerektiren özellikleri başlat
     */
    function initjQueryFeatures() {
        // jQuery var mı kontrol et
        if (typeof jQuery !== 'undefined') {
            // jqModal yamalarını uygula
            initjqModalPatches(jQuery);
        } else {
            console.warn('jQuery yüklenmemiş, jqModal yamaları uygulanamadı');
        }
    }
    
    /**
     * Admin butonlarını güzelleştir
     */
    function enhanceAdminButtons() {
        try {
            // Admin eylem listesindeki tüm öğeleri bul
            const adminActionLists = document.querySelectorAll('.admin-actions, .admin-options ul');
            
            if (!adminActionLists.length) return;
            
            adminActionLists.forEach(actionList => {
                // Listedeki tüm bağlantıları bul
                const actionLinks = actionList.querySelectorAll('a');
                
                actionLinks.forEach(link => {
                    if (!link) return; // Null kontrolü
                    
                    // Link metnini kontrol et ve buna göre sınıf ve simge ekle
                    const linkText = (link.textContent || '').trim().toLowerCase();
                    link.classList.add('admin-btn');
                    
                    // Varsayılan sınıf ve simge
                    let iconClass = 'fa-cog';
                    let buttonClass = 'admin-btn-panel';
                    
                    // İçeriğe göre doğru sınıf ve simge ata
                    if (linkText.includes('admin') || linkText.includes('yönetim')) {
                        iconClass = 'fa-tachometer-alt';
                        buttonClass = 'admin-btn-panel';
                    } 
                    else if (linkText.includes('edit') || linkText.includes('düzenle')) {
                        iconClass = 'fa-edit';
                        buttonClass = 'admin-btn-edit';
                    }
                    else if (linkText.includes('validation') || linkText.includes('doğrulama')) {
                        iconClass = 'fa-check-circle';
                        buttonClass = 'admin-btn-validate';
                    }
                    else if (linkText.includes('clone') || linkText.includes('kopyala') || linkText.includes('kopya')) {
                        iconClass = 'fa-clone';
                        buttonClass = 'admin-btn-clone';
                    }
                    else if (linkText.includes('delete') || linkText.includes('sil')) {
                        iconClass = 'fa-trash-alt';
                        buttonClass = 'admin-btn-delete';
                    }
                    else if (linkText.includes('translate') || linkText.includes('çevir')) {
                        iconClass = 'fa-language';
                        buttonClass = 'admin-btn-translate';
                    }
                    
                    // Sınıfı ekle
                    link.classList.add(buttonClass);
                    
                    // Zaten bir simge varsa, onunla devam et
                    if (link.querySelector('i')) {
                        // Simge var, sadece buton sınıfı eklendi
                    } else {
                        // Simge yoksa, simge ekle
                        const icon = document.createElement('i');
                        icon.className = `fas ${iconClass}`;
                        link.prepend(icon, ' ');
                    }
                });
            });
        } catch (error) {
            console.error('Admin butonları güncellenirken hata oluştu:', error);
        }
    }
    
    /**
     * jqModal uyumluluk yamalarını uygula
     * @param {Object} $ - jQuery nesnesi
     */
    function initjqModalPatches($) {
        try {
            // Tanımlı değilse hemen çık
            if (typeof $ !== 'function' || typeof $.fn === 'undefined') {
                return;
            }
            
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
                $(document).off('click', '.jqModal').on('click', '.jqModal', function(e) {
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
        } catch (error) {
            console.error('jqModal yamaları uygulanırken hata oluştu:', error);
        }
    }
})();
