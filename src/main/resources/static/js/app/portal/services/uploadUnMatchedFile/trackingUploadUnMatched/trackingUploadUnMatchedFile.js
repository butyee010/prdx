var trackingUploadUnMatchedFile = {
	onLoad: function() {
		datepickerConfig.setBusinessDate('#uploadDateFrom', {limitDays : '-30d'});
	},

	searchUploadHistory: function() {
		$('#historyList').replacePage({
			url: "uploadUnMatchedFile/serviceTracking/hist",
			data: { uploadDate: $("input[name=uploadDateFrom]").val() },
			type: 'POST',
			success: function() {
				trackingUploadUnMatchedFile.createTableUploadHistory('#tableHist');
			}
		});
	},

	createTableUploadHistory: function(elm) {
		$(elm).dataTable({
            sPaginationType: 'full_numbers',
            aoColumnDefs: [
//			  {	bSortable: false,
//				aTargets: [2, 3, 4, 5, 6]
//			},
			{
                sClass: 'center',
                aTargets: [0, 1, 2, 4, 6]
            },{
                sClass: 'left',
                aTargets: [3, 5]
            },{
                mRender: function(data) {
                    return (data === 'null' || data === null || data == undefined || data == '') ? '-' : data;
                },
                aTargets: ['_all']
            }]
        });
	},
};

$.extend(unMatchedFile, {
	trackingUploadUnMatchedFile: trackingUploadUnMatchedFile
});