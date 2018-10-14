var menuPortal = {
    
    opts: {},
    
    url_portal: {
        PAGE_HOME : "home",
        PAGE_ABOUT : "about",
        PAGE_SERVICES : "services",
        PAGE_OUR_WORKS : "ourWorks",
        PAGE_GALLERY : "gallery",
        PAGE_CONTACT : "contact",
    },

    initialize: function(dataOpts) {
        menuPortal.opts = $.extend( menuPortal.opts , dataOpts );
    },

    menuPortalAction: function(menuKey) {
    	var portalUrl = menuPortal.url_portal[menuKey];
    	if (!!portalUrl) {
    		ajaxCall({
                type: 'POST',
    			url: portalUrl,
    			replaceid: '#container',
    			onSuccess: function() {
    				
    			}
    		});
    	}
     },
}