var menuPortal = {
    
    opts: {},
    
    url_portal: {
        PAGE_HOME : "home.html",
        PAGE_ABOUT : "about.html",
        PAGE_SERVICES : "services.html",
        PAGE_OUR_WORKS : "ourWorks.html",
        PAGE_GALLERY : "gallery.html",
        PAGE_CONTACT : "contact.html",
    },

    initialize: function(dataOpts) {
        menuPortal.opts = $.extend( menuPortal.opts , dataOpts );
    },

    menuPortalAction: function(menuKey, elm) {
    	var portalUrl = menuPortal.url_portal[menuKey];
    	if (!!portalUrl) {
    		ajaxCall({
                type: 'GET',
    			url: portalUrl,
    			replaceid: '#container',
    			onSuccess: function() {
    				
    			}
    		});
        }
        
        if (!!elm) {
            $(elm).parents("ul").find("li.active").removeClass("active");
            $(elm).parents("li").addClass("active");
        }
     },
}