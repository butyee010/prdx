var uploadUnMatchedFile = {
		
	fileNamePattern: undefined,
		
	onLoad: function() {
		uploadUnMatchedFile.btnBrowseFile();
		$("#uploadDate").text(moment().format('DD-MM-YYYY'));
	},

	uploadFile: function() {
		$("#contents").validate({
			valid: function() {
				openConfirmDialog("Upload Unmatched File", "Do you need to confirm?", function() {
					var data = { 'fileName': encodeURIComponent($('input[name="uploadFile"]').val()),
								 'uploadDesc': encodeURIComponent($('input[name="uploadDesc"]').val())
							    };
			        $('#process_upload').css('display','');
			        ajaxFileUpload({
			        	data: data,
			            frame:'#file_upload_frame',
			            form:'#file_upload_form',
			            status:$('#result_Upload'),
			            percent:$('#progress_bar span.ui-label'),
			            bar:$('#progress_bar div.ui-progress'),
			            onSuccess:function(data){	            	
			            	$('#process_upload').fadeOut('fast');
			            	ajaxSuccess(data, function(data) {
			            		$('#historyList').html(data);
				            	uploadUnMatchedFile.createTableHistoryList("#tableHist");
				            	$('input[name="uploadFile"]').val('');
				            	$('#file_upload_frame').contents().find(':file').val('');
				            	$('input[name="uploadDesc"]').val('');
			    			}, function(msg, isForward) {
			    				//failed
			    			});
		            	},
			         });
					return true;
				});
			}
		});
	},

	refresh: function() {
		$('#historyList').replacePage({
			url: "uploadUnMatchedFile/serviceUpload/hist",
			type: 'POST',
			success: function() {
				uploadUnMatchedFile.createTableHistoryList("#tableHist");
			}
		});
	},

	browseFile: function() {
		$('#file_upload_frame').contents().find(':file').checkFileType({
			//allowedExtensions: ['txt'],
			success:function(){
				var name = $('#file_upload_frame').contents().find(':file').val().replace(/C:\\fakepath\\/i, '');
				$('input[name="uploadFile"]').val(name);
			},
			error:function(){
				$("#contents").validate();
			}
		});
	},

	btnBrowseFile: function() {
		$('#btnBrowseFile').click(function(){
			$('#file_upload_frame').contents().find(':file').trigger('click');
		});
	},

	createTableHistoryList: function(elm) {
		$(".new-date").text(moment().format('DD-MM-YYYY hh:mm:ss'));
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
	}
};

$.extend(unMatchedFile, {
	uploadUnMatchedFile: uploadUnMatchedFile
});