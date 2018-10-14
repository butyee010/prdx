function uploadUnMatchedFileInit(me) {
	yourLocation(3, $(me).parents("ul").prev().text(), $(me).find("span:first").text() || $(me).text());
	showform(function() {
		$("#formcontent").replacePage({
			url: "uploadUnMatchedFile/init",
			type: "POST",
			success: unMatchedFile.onLoad
		});
	});
}

var unMatchedFile = {
	onLoad: function() {
		$("#divTitlePage").titlePage();
		unMatchedFile.tabService();
	},

	tabService: function() {
		$("#tabService").tab({
			load: function(tabName, isFistLoad) {
				if (!isFistLoad) {
					$("#formcontent").scrollTop($(".content:first", this).offset().top);
				}
			}
		});
	},
};