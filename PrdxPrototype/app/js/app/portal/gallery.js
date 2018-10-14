var gallery = {
	onLoad: function() {

	},

	openSubGalley: function() {
		ajaxCall({
			type: "GET",
			url: "sub_gallery.html",
			replaceid: "#container",
			onSuccess: function() {
				
			},
		});		
	},

	openJssorSubGalley: function() {
		CallJssor({
			type: "GET",
			url: "jssor_sub_gallery.html",
			onSuccess: function() {
			},
		});
	},
};