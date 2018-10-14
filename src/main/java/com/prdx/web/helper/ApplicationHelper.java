package com.prdx.web.helper;

import java.util.Locale;

import org.apache.commons.lang3.RandomStringUtils;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.stereotype.Component;
import org.springframework.web.servlet.ModelAndView;

import com.prdx.web.commons.utils.CommonUtil;
import com.prdx.web.constant.PortalConstants;
import com.prdx.web.exception.PortalException;

@Component
public class ApplicationHelper {

	private static MessageSource messageSource;
	
	@Autowired
	public void initMessageSource(MessageSource msg) {
		ApplicationHelper.messageSource = msg;
	}
	
	public static String getMessage(String key, Object[] args) {
		return messageSource.getMessage(key, args, new Locale(PortalConstants.LANG_TH, PortalConstants.COUNTRY_TH));
	}
	
	public static String getMessage(String key) {
		return getMessage(key, null);
	}
	
	public static String getNewSessionKey(String sessionId) {
		String sessionKey = RandomStringUtils.randomAlphanumeric(PortalConstants.SESSION_KEY_RANDOM_LENGTH);
		sessionKey += sessionId;
		return sessionKey;
	}
	
	/*public static boolean validateSesstionTimeOut(HttpServletRequest reqServlet){
		HttpSession session = reqServlet.getSession(false);// don't create if it doesn't exist
		if(session != null && !session.isNew() && RepositoryHelper.getApplicationForm(session) != null) {
			return false;
		} else {
			if(session != null){
				session.invalidate();
			}
			return true;
		}
	}*/

	public static ModelAndView errorManual(PortalException e){
		ModelAndView modelAndView = new ModelAndView("errorMessage");
		modelAndView.addObject("ERRORCODE",e.getStatusCode());
		modelAndView.addObject("ERRORDESC",e.getStatusDesc());
		return modelAndView;
	}
	
	public static ModelAndView errorDefault(){
		ModelAndView modelAndView = new ModelAndView("errorMessage");
		String desc = getMessage("errors.default");
		//modelAndView.addObject("ERRORCODE","errors.default");
		modelAndView.addObject("ERRORDESC",desc);
		return modelAndView;
	}
	
	/*public static String getErrorMsg(String code) {
		return getErrorMsg(code, null);
	}
	
	public static String getErrorMsg(String code, String[] args) {
		String result = code;
		String msg = ErrorMsgHelper.getErrorDesc(code);
		if (StringUtils.isNotBlank(msg)) {
			if (args != null) {
				result = CommonUtil.replaceParamInMessage(msg, args);
			}
			else {
				result = msg;
			}
		}
		return result;
	}*/
	
}
