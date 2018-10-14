var ourWorks = {
	onLoad: function() {

	},

	openSubOurWorks: function() {
		ajaxCall({
			type: "GET",
			url: "sub_our_works.html",
			replaceid: "#container",
			onSuccess: function() {
				
			},
		});		
	},

	openJssorSubOurWorks: function() {
		CallJssor({
			type: "GET",
			url: "jssor_sub_our_works.html",
			onSuccess: function() {
			},
		});
	},
};