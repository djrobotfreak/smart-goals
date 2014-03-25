$(function(){
    
    // ------ Variable Declorations ---- //
    
    var
        // mobile menu variables
        m_trigger = $('#m_menu_trigger'),
        m_wrapper = $('#m_menu_wrapper');
        
    // ---------------- Menu Trigger - Mobile Menu Display ---------------- //
     // helper class
    var MobileMenu = {
        delay: false,
        isOpen: false,
        open: function(){
           this.isOpen = true;
           m_wrapper.addClass('m_open');
           m_trigger.addClass('m_selected');
        },
        close: function(){
            this.isOpen = false;
            m_wrapper.removeClass('m_open');
            m_trigger.removeClass('m_selected');
        }
    };
    
    m_trigger.bind('touchstart click', function(){
      if (!MobileMenu.delay) {
        MobileMenu.delay = true;
        setTimeout(function(){ MobileMenu.delay = false; }, 100);
        // do something
        if(MobileMenu.isOpen)
            MobileMenu.close();
        else
            MobileMenu.open();
      }

      return false;
    });
    m_wrapper.bind('touchstart click', function(e){
        e.stopPropagation();
    });

    $(window).bind('click', function(){
        if(MobileMenu.isOpen)
            MobileMenu.close();
    });
    
    // add to global namespace
    $(window).mMenu = new MobileMenu( document.getElementById( 'm_menu' ));
});