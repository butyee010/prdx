var unMatchedTrf = {
	onLoad: function() {
		datepickerConfig.setBusinessDate('#trfDateFrom', {limitDays : '-30d'});
	},

	searchTrf: function() {
		$('#historyList').replacePage({
			url: "unMatchedAdjust/serviceTrf/hist",
			data: { transferDate: $("input[name=trfDateFrom]").val() },
			type: 'POST',
			success: function() {
				unMatchedTrf.createTableUnmatchedTrfHistory('#tableHist');
			}
		});
	},

	createTableUnmatchedTrfHistory: function(elm) {
		$(elm).dataTable({
            sPaginationType: 'full_numbers',
            aoColumnDefs: [
			  {	bSortable: false,
				aTargets: [6, 7]
			},{
                sClass: 'center',
                aTargets: [0, 1, 2, 3, 5, 6, 7]
            },{
                sClass: 'right',
                aTargets: [4]
            },{
                mRender: function(data) {
                    return (data === 'null' || data === null || data == undefined || data == '') ? '-' : data;
                },
                aTargets: ['_all']
            }]
        });
	},
	
	downloadAdjustFile: function(id, downloadType) {
		var url = "unMatchedAdjust/serviceTrf/download?sessId="+sessionKey+"&id="+id+"&downloadType="+downloadType;
		$("#download_frame").prop("src", url);
		$("#download_frame").load(function() {
			var content = $(this).contents().find("body").html();
			if (content.indexOf("errorMessage")) {
				showError(content);
			}
		});
		return false;
	},

	showDetailTrf: function(id) {
		openModal({
			url: "unMatchedAdjust/serviceTrf/detail",
			data: { id: id },
			success: function(){
				unMatchedTrf.createTableHistDetail('#tableHistDetail');
			},
			width: '85%',
			title: "Transfer History Detail",
			buttons: {
				Close : {
					fn : closeModal,
					'class' : 'gray'
				}
			}
		});
	},

	createTableHistDetail: function(elm) {
		$(elm).dataTable({
            sPaginationType: 'full_numbers',
            aoColumnDefs: [{
                sClass: 'center',
                aTargets: [0, 1, 2, 3, 4, 5, 6, 8]
            },{
                sClass: 'right',
                aTargets: [7]
            },{
                mRender: function(data) {
                    return (data === 'null' || data === null || data == undefined || data == '') ? '-' : data;
                },
                aTargets: ['_all']
            }]
        });
	}
};

$.extend(unMatchedAdjust, {
	unMatchedTrf: unMatchedTrf
});