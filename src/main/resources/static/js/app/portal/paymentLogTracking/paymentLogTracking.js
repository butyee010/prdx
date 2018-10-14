var PaymentLogTracking = function() {
	this.opts = { };
	this.post = "POST";
    this.get = "GET";
    this.url = {
    		search : "paymentLogTracking/tracking/search",
    		detailTxn : "paymentLogTracking/tracking/detailTxn",
    		back : "paymentLogTracking/tracking/back",
    		init : "paymentLogTracking/tracking",
    };
    this.element = {
    		form : "#paymentLogTracking",
    		reqDateFromDisplay: '#reqDateFromDisplay',
    		reqDateToDisplay: '#reqDateToDisplay',
    		trackingTableTxn: '#trackingTableTxn',
    		jsonBlob: "#jsonBlob"
    };
}

PaymentLogTracking.prototype = function() {

    var prototype = null;

    var initialize = function(dataOpts) {
        prototype = this;
        this.opts = $.extend( this.opts , dataOpts );
        initDatepicker();
        
        if (prototype.opts.isBack == 'true') {
        	button.search();
        }
        
        if (!!prototype.opts.msgJson) {
        	printMsgBlob(prototype.opts.msgJson);
        }
    };
    
    var initializeTrackingTxn = function(dataOpts) {
        prototype = this;
        this.opts = $.extend( this.opts , dataOpts );
        createTableTxn();
    };
    
    var printMsgBlob = function(msgBlob) {
    	try {
    		var jsonObj = JSON.parse(msgBlob);
        	var prettyJson = JSON.stringify(jsonObj, undefined, 2);
        	$(prototype.element.jsonBlob).text(prettyJson);
    	}
    	catch (err) {
    		$(prototype.element.jsonBlob).text(msgBlob);
		}
    };
    
    var createTableTxn = function() {
    	  $(prototype.element.trackingTableTxn).DataTable({
          	"info" : false,
          	"paging": true,
          	"searching": true,
          	"lengthChange": false,
          	 "aoColumnDefs": [
              	 {
  	                "mRender": function(data) {
  	                    return (data === 'null' || data === null || data == '') ? '-' : data;
  	                },
  	                "aTargets": ['_all']
  	            }],
          });
    };
    
    var button = {
    		search : function () {
    			var form = prototype.element.form;
    			if (valid(form)) {
	    			var json = $(form).serializeObject();
	                ajaxCall({
	            		url : prototype.url.search,
	            		replaceid : '#page_sub',
	        			data : JSON.stringify(json),
	            		onSuccess : function(data) {
	            			$('#isBack').val('false');
	            		}
	            	});
    			}
            },
            
            clear : function() {
           	 ajaxCall({
	            		url : prototype.url.init,
	            		replaceid : '#content',
	            		onSuccess : function(data) {
	            			
	            		}
	            	});
           },
            
            detailTxn : function (id) {
            	var json = { id: id };
                ajaxCall({
            		url : prototype.url.detailTxn,
            		replaceid : '#content',
        			data : JSON.stringify(json),
            		onSuccess : function(data) {
            				
            		}
            	});
            },
            
            back : function () {
            	ajaxCall({
            		url : prototype.url.back,
            		replaceid : '#content',
            		onSuccess : function(data) {
            				
            		}
            	});
            },
            
        };
    
    var initDatepicker = function() {
    	$(prototype.element.reqDateFromDisplay).datetimepicker({
    		dateFormat: 'dd-mm-yy',
    		maxDate: '0',
    		minDate: '-3m',
    	});
    	if (!$(prototype.element.reqDateFromDisplay).val()) {
    		$(prototype.element.reqDateFromDisplay).datepicker('setDate', new Date() );
    	}
    	
    	$(prototype.element.reqDateToDisplay).datetimepicker({
    		dateFormat: 'dd-mm-yy',
    		maxDate: '0',
    		minDate: '-3m',
    	});
    	if (!$(prototype.element.reqDateToDisplay).val()) {
    		$(prototype.element.reqDateToDisplay).datepicker('setDate', new Date() );
    	}
    };
    
    var changeDate = function() {
		var form = prototype.element.form;
    	valid(form);
    };
    
    var valid = function(form){
		var v = $(form).validate({
	    	  rules: { 
	    		 /* "registerDateDisplay" : {
	    			  pattern: /^[0-9]{2}[-]{1}[0-1]{1}[0-2]{1}[-]{1}[0-9]{4}$/,
	    		  },*/
	    		  reqDateToDisplay: { dateGreaterThan: "reqDateFromDisplay", },
	    		  reqDateFromDisplay: { dateLessThan: "reqDateToDisplay", },
				},
			messages:{
				
			},
			errorPlacement: function(error, element) {

		    },
	      });
	  return v.form();
    };
    
        return {
        	initialize: initialize,
        	initializeTrackingTxn: initializeTrackingTxn,
        	search: button.search,
        	clear: button.clear,
        	view: button.detailTxn,
        	back: button.back,
        	changeDate: changeDate,
        }
 }();
