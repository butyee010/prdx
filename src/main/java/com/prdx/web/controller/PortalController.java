package com.prdx.web.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

@Controller
public class PortalController {

	public static final String PAGE_MAIN = "main";
	public static final String PAGE_HOME = "home";
	public static final String PAGE_ABOUT = "about";
	public static final String PAGE_CONTACT = "contact";
	public static final String PAGE_GALLERY = "gallery";
	public static final String PAGE_OUR_WORKS = "ourWorks";
	public static final String PAGE_SERVICES = "services";

	//private Logger logger = LogManager.getLogger(PortalController.class);
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public ModelAndView index(HttpServletRequest reqServlet) {
		ModelAndView modelAndView = new ModelAndView(new RedirectView(PAGE_MAIN));
		return modelAndView;
	}
	
	@RequestMapping(value = "main", method = RequestMethod.GET)
	public ModelAndView main(HttpServletRequest reqServlet) {
		ModelAndView modelAndView = new ModelAndView(PAGE_MAIN);
		return modelAndView;
	}
	
	@RequestMapping(value = "home", method = { RequestMethod.POST } )
	public ModelAndView home(HttpServletRequest reqServlet) {
		ModelAndView modelAndView = new ModelAndView(PAGE_HOME);
		return modelAndView;
	}
	
	@RequestMapping(value = "about", method = { RequestMethod.POST })
	public ModelAndView about(HttpServletRequest reqServlet) {
		ModelAndView modelAndView = new ModelAndView(PAGE_ABOUT);
		return modelAndView;
	}
	
	@RequestMapping(value = "contact", method = { RequestMethod.POST })
	public ModelAndView contact(HttpServletRequest reqServlet) {
		ModelAndView modelAndView = new ModelAndView(PAGE_CONTACT);
		return modelAndView;
	}
	
	@RequestMapping(value = "gallery", method = { RequestMethod.POST })
	public ModelAndView gallery(HttpServletRequest reqServlet) {
		ModelAndView modelAndView = new ModelAndView(PAGE_GALLERY);
		return modelAndView;
	}
	
	@RequestMapping(value = "ourWorks", method = { RequestMethod.POST })
	public ModelAndView ourWorks(HttpServletRequest reqServlet) {
		ModelAndView modelAndView = new ModelAndView(PAGE_OUR_WORKS);
		return modelAndView;
	}
	
	@RequestMapping(value = "services", method = { RequestMethod.POST })
	public ModelAndView services(HttpServletRequest reqServlet) {
		ModelAndView modelAndView = new ModelAndView(PAGE_SERVICES);
		return modelAndView;
	}
	
/*	@RequestMapping(value = "terminate", method = { RequestMethod.GET, RequestMethod.POST })
	public ModelAndView viewTerminate(HttpServletRequest reqServlet) throws Exception {
		ModelAndView modelAndView = new ModelAndView(PAGE_TERMINATE);
		try {
			ApplicationHelper.sessionInvalidate(reqServlet, logger);
		}
		catch (Exception e) {
        	logger.error("AuthenticationController viewTerminate Exception: ", e);
		}
		return modelAndView;
	}
	
	@RequestMapping(value = "timeout", method = { RequestMethod.GET, RequestMethod.POST })
	public ModelAndView viewTimeout(HttpServletRequest reqServlet) throws Exception {
		ModelAndView modelAndView = new ModelAndView(PAGE_TIME_OUT);
		try {
			ApplicationHelper.sessionInvalidate(reqServlet, logger);
			System.out.println("timeout");
		}
		catch (Exception e) {
			logger.error("AuthenticationController viewTimeout Exception: ", e);
		}
		return modelAndView;
	}*/
	
}
