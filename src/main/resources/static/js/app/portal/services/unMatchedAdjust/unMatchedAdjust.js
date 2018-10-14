function unMatchedAdjustInit(me) {
	yourLocation(3, $(me).parents("ul").prev().text(), $(me).find("span:first").text() || $(me).text());
	showform(function() {
		$("#formcontent").replacePage({
			url: "unMatchedAdjust/init",
			success: unMatchedAdjust.onLoad
		});
	});
}

var unMatchedAdjust = {
	onLoad: function() {
		$("#divTitlePage").titlePage();
		unMatchedAdjust.tabService();
	},

	tabService: function() {
		$("#tabService").tab({
			load: function(tabName, isFistLoad) {
				if (!isFistLoad) {
					$("#formcontent").scrollTop($(".content:first", this).offset().top);
				}
			}
		});
	}
};