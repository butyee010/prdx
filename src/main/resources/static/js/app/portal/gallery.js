var gallery = {
	onLoad: function() {

	},

	openSubGalley: function() {
		ajaxCall({
			type: "POST",
			url: "gallery/sub",
			replaceid: "#container",
			onSuccess: function() {
				
			},
		});		
	},

	openJssorSubGalley: function() {
		CallJssor({
			type: "POST",
			url: "gallery/sub/jssor",
			onSuccess: function() {
			},
		});
	},
};