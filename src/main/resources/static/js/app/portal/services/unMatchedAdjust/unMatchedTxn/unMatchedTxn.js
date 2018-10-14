var unMatchedTxn = {

	onLoad: function() {
		datepickerConfig.setDatepicker('#txnDateFrom', '#txnDateTo', {limitDays : '-30d'});
	},

	clearCriteria: function() {
		$('#txnDateFrom').datepicker('setDate', new Date());
		$('#txnDateTo').datepicker('setDate', new Date());
		$('select[name=productType]').val('Actual Account');
		$('select[name=fromBankCd]').val('ALL');
		$('select[name=toBankCd]').val('006');
		$('input[name=fromAcctId]').val('');
		$('input[name=toAcctId]').val('');

		$('input[name="reasonCode_001"]').prop('checked', 'checked');
		$('input[name="reasonCode_002"]').prop('checked', '');
		$('input[name="reasonCode_003"]').prop('checked', 'checked');
		$('input[name="reasonCode_004"]').prop('checked', '');
		$('input[name="reasonCode_005"]').prop('checked', '');
		$('input[name="reasonCode_006"]').prop('checked', '');
		$('input[name="reasonCode_007"]').prop('checked', '');
		$('input[name="reasonCode_008"]').prop('checked', '');

		$('input[name=exceptTimeCheck]').prop('checked', '');
	},

	searchTxn: function() {
		var data = $('#unMatchedTxnFrom').serializeObject();
		$('#historyList').replacePage({
			url: "unMatchedAdjust/serviceTxn/hist",
			type: 'POST',
			data: data,
			success: function() {
				unMatchedTxn.createTableUnmatchedTxnHistory('#tableHist');
				unMatchedTxn.onCheckTxnAll();
			}
		});
	},

	createTableUnmatchedTxnHistory: function(elm) {
		$(elm).dataTable({
            sPaginationType: 'full_numbers',
            iDisplayLength: 100,
            aoColumnDefs: [
			  {	bSortable: false,
				aTargets: [0]
			},{
                sClass: 'center',
                aTargets: [0, 1, 2, 3, 4, 5, 6, 8, 9, 10]
            },{
                sClass: 'right',
                aTargets: [7]
            },{
                sClass: 'left',
                aTargets: [11, 12]
            },{
                mRender: function(data) {
                    return (data === 'null' || data === null || data == undefined || data == '') ? '-' : data;
                },
                aTargets: ['_all']
            }]
        });
	},

	onCheckTxnAll: function() {
		$('#checkboxHistAll').on('change' , function(){
			var oTableAllRow = $('#tableHist').dataTable().fnGetNodes();
			if ( $('#checkboxHistAll').is(":checked") == true) {
				$(".checkboxHist",oTableAllRow).prop('checked', true);
			}
			else {
				$(".checkboxHist",oTableAllRow).prop('checked', false);
			}
		});
	},

	submitTxn: function() {
		var oTable = $('#tableHist').dataTable();
		var dataSelected = oTable.$('input').serializeObject();
		var items = "";
		$.each( dataSelected, function( key, value ) {
			items += key + "|"; 
			});
		var data = $.extend( {"items": items} , $("input[name=checkAll]").serializeObject() );
		$('#historyList').replacePage({
			url: "unMatchedAdjust/serviceTxn/detail",
			type: 'POST',
			data: data,
			success: function() {
				unMatchedTxn.createTableUnmatchedTxnHistory('#tableDetail');
				unMatchedTxn.criteriaDisable(true);
			}
		});
	},

	confirmTxn: function() {
		openConfirmDialog("Submit Transfer", "Do you need to confirm?", function() {
			openModal({
				url: "unMatchedAdjust/serviceTxn/confirm",
				success: function(){
					
				},
				width: "500px",
				title: "Submit Transfer",
				close: unMatchedTxn.finishUnmatchedTxn,
				buttons: {
					Finish: {
						fn: unMatchedTxn.finishUnmatchedTxn
					}
				}
			});
			return true;
		});
	},

	cancelTxn: function() {
		$('#historyList').replacePage({
			url: "unMatchedAdjust/serviceTxn/cancel",
			type: 'POST',
			success: function() {
				unMatchedTxn.createTableUnmatchedTxnHistory('#tableHist');
				unMatchedTxn.onCheckTxnAll();
				unMatchedTxn.criteriaDisable(false);
			}
		});
	},

	finishUnmatchedTxn: function() {
		//TODO
		closeModal();
		$("#tabService ul li :first").click();
	},
	
	criteriaDisable: function(flg) {
		flg ? $('#txnDateFrom').datepicker('disable') : $('#txnDateFrom').datepicker('enable');
		flg ? $('#txnDateTo').datepicker('disable') : $('#txnDateTo').datepicker('enable');
		$('select[name=productType]').prop('disabled', flg);
		$('select[name=fromBankCd]').prop('disabled', flg);
		$('select[name=toBankCd]').prop('disabled', flg);
		$('input[name=fromAcctId]').prop('disabled', flg);
		$('input[name=toAcctId]').prop('disabled', flg);
		$('input[name="reasonCode_001"]').prop('disabled', flg);
		$('input[name="reasonCode_002"]').prop('disabled', flg);
		$('input[name="reasonCode_003"]').prop('disabled', flg);
		$('input[name="reasonCode_004"]').prop('disabled', flg);
		$('input[name="reasonCode_005"]').prop('disabled', flg);
		$('input[name="reasonCode_006"]').prop('disabled', flg);
		$('input[name="reasonCode_007"]').prop('disabled', flg);
		$('input[name="reasonCode_008"]').prop('disabled', flg);
		$('input[name=exceptTimeCheck]').prop('disabled', flg);
		$("#btnSearch").prop('disabled', flg);
		$("#btnClear").prop('disabled', flg);
		flg ? $("#btnSearch").css("cursor", "default") : $("#btnSearch").css("cursor", "pointer");
		flg ? $("#btnClear").css("cursor", "default") : $("#btnClear").css("cursor", "pointer");
	}
};

$.extend(unMatchedAdjust, {
	unMatchedTxn: unMatchedTxn
});