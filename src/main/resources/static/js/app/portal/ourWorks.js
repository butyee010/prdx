var ourWorks = {
	
	onLoad: function() {

	},

	openSubOurWorks: function() {
		ajaxCall({
			type: "POST",
			url: "ourWorks/sub",
			replaceid: "#container",
			onSuccess: function() {
				
			},
		});		
	},

	openJssorSubOurWorks: function() {
		CallJssor({
			type: "POST",
			url: "ourWorks/sub/jssor",
			onSuccess: function() {
			},
		});
	},
};