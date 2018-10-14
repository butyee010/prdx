/*package com.prdx.web.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ktb.anyid.adjust.portal.constant.PortalConstants;
import com.ktb.anyid.adjust.portal.helper.DropDownConfigHelper;
import com.ktb.anyid.adjust.portal.helper.PropertyConfigHelper;
import com.ktb.anyid.adjust.portal.log.LogConstants;
import com.ktb.anyid.adjust.portal.log.LogUtil;
import com.ktb.anyid.adjust.portal.log.LogUtilImpl;

@Controller
@RequestMapping("/reload")
public class ClearConfigController {

	private LogUtil logger = LogUtilImpl.getLogger(LogConstants.LOG_CLEAR_CONFIG);

	@RequestMapping(value = "config", method = { RequestMethod.GET, RequestMethod.POST })
	public @ResponseBody String reloadConfig(HttpServletRequest reqServlet) throws Exception {
		String response = "<div style='color: red;'>"+"Reload Config: "+PortalConstants.FAILED+"</div>";
		try {
			logger.info("ReloadConfig start");
			//Clear
			PropertyConfigHelper.clear();
			DropDownConfigHelper.clear();
			
			//Reload
			PropertyConfigHelper.init();
			DropDownConfigHelper.init();
			
			response = "<div style='color: green;'>"+"Reload Config: "+PortalConstants.SUCCESS+"</div>";
			logger.info("ReloadConfig Success");
		}
		catch (Exception e) {
			logger.error("ReloadConfig Exception", e);
		}
		return response;
	}
}
*/