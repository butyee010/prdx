package com.prdx.web.controller;



import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.io.IOUtils;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

import com.prdx.web.bean.contact.AboutBean;
import com.prdx.web.bean.contact.ContactBean;
import com.prdx.web.bean.contact.GalleryBean;
import com.prdx.web.bean.contact.GallerySubBean;
import com.prdx.web.bean.contact.GallerySubJssorBean;
import com.prdx.web.bean.contact.HomeBean;
import com.prdx.web.bean.contact.MainBean;
import com.prdx.web.bean.contact.OurWorksSubBean;
import com.prdx.web.bean.contact.OurWorksSubJssorBean;
import com.prdx.web.bean.contact.ServicesBean;
import com.prdx.web.service.AboutPageService;
import com.prdx.web.service.ContactPageService;
import com.prdx.web.service.HomePageService;
import com.prdx.web.service.ServicesPageService;

@Controller
public class PortalController {

	public static final String PAGE_MAIN = "main";
	public static final String PAGE_HOME = "home";
	public static final String PAGE_ABOUT = "about";
	public static final String PAGE_CONTACT = "contact";
	public static final String PAGE_SERVICES = "services";

	public static final String PAGE_GALLERY = "gallery";
	public static final String PAGE_SUB_GALLERY = "sub_gallery";
	public static final String PAGE_JSSOR_SUB_GALLERY = "jssor_sub_gallery";

	public static final String PAGE_OUR_WORKS = "ourWorks";
	public static final String PAGE_SUB_OUR_WORKS = "sub_our_works";
	public static final String PAGE_JSSOR_SUB_OUR_WORKS = "jssor_sub_our_works";

	private Logger logger = LogManager.getLogger(PortalController.class);
	
	@Autowired
	private AboutPageService aboutPageService;
	@Autowired
	private HomePageService homePageService;
	@Autowired
	private ContactPageService contactPageService;
	@Autowired
	private ServicesPageService servicesPageService;
	/*@Autowired
	private GalleryPageService galleryPageService;
	@Autowired
	private OurWorksPageService ourWorksPageService;
*/
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public ModelAndView index(HttpServletRequest reqServlet) {
		ModelAndView modelAndView = new ModelAndView(new RedirectView(PAGE_MAIN));
		return modelAndView;
	}

	@RequestMapping(value = "main", method = RequestMethod.GET)
	public ModelAndView main(HttpServletRequest reqServlet) {
		ModelAndView modelAndView = new ModelAndView(PAGE_MAIN);
		MainBean mainBean = new MainBean();
		try {
			//main service
			modelAndView.addObject("menuList", mainBean.getMenuList());
			modelAndView.addObject("footerBean", mainBean.getFooterBean());
		} catch (Exception e) {
			logger.error("Exception: ", e);
		}
		return modelAndView;
	}

	@RequestMapping(value = "home", method = { RequestMethod.POST })
	public ModelAndView home(HttpServletRequest reqServlet) {
		ModelAndView modelAndView = new ModelAndView(PAGE_HOME);
		HomeBean homeBean = new HomeBean();
		try {
			homeBean = homePageService.getHomePage();
			modelAndView.addObject("homeBean", homeBean);
		} catch (Exception e) {
			logger.error("Exception: ", e);
		}
		
		return modelAndView;
	}

	@RequestMapping(value = "about", method = { RequestMethod.POST })
	public ModelAndView about(HttpServletRequest reqServlet) {
		ModelAndView modelAndView = new ModelAndView(PAGE_ABOUT);
		AboutBean aboutBean = new AboutBean();
		try {
			aboutBean = aboutPageService.getAboutPage();
			modelAndView.addObject("aboutBean", aboutBean);
		} 
		catch (Exception e) {
			logger.error("Exception: ", e);
		}
		return modelAndView;
	}

	@RequestMapping(value = "contact", method = { RequestMethod.POST })
	public ModelAndView contact(HttpServletRequest reqServlet) {
		ModelAndView modelAndView = new ModelAndView(PAGE_CONTACT);
		ContactBean contactBean = new ContactBean();
		try {
			contactBean = contactPageService.getContactPage();
			modelAndView.addObject("contactBean", contactBean);
		} catch (Exception e) {
			logger.error("Exception: ", e);
		}
		return modelAndView;
	}

	@RequestMapping(value = "gallery", method = { RequestMethod.POST })
	public ModelAndView gallery(HttpServletRequest reqServlet) {
		ModelAndView modelAndView = new ModelAndView(PAGE_GALLERY);
		List<GalleryBean> galleryBeanList = new ArrayList<GalleryBean>();
		try {
//			galleryBeanList = galleryPageService.getGalleryBeanList();
			modelAndView.addObject("galleryList", galleryBeanList);
		} catch (Exception e) {
			logger.error("Exception: ", e);
		}
		return modelAndView;
	}

	@RequestMapping(value = "gallery/sub", method = { RequestMethod.POST })
	public ModelAndView subGallery(HttpServletRequest reqServlet) {
		ModelAndView modelAndView = new ModelAndView(PAGE_SUB_GALLERY);
		GallerySubBean gallerySubBean = new GallerySubBean();
		String topic = "GallerySubBean.header";
		try {
//			gallerySubBean = galleryPageService.getGallerySubBean(topic);
			modelAndView.addObject("gallerySubBean", gallerySubBean);
		} catch (Exception e) {
			logger.error("Exception: ", e);
		}
		return modelAndView;
	}

	//TODO TASK
	@RequestMapping(value = "gallery/sub/jssor", method = { RequestMethod.POST })
	public ModelAndView jssorSubGallery(HttpServletRequest reqServlet) {
		ModelAndView modelAndView = new ModelAndView(PAGE_JSSOR_SUB_GALLERY);
		GallerySubJssorBean gallerySubJssorBean = new GallerySubJssorBean();
		String topic = "GallerySubBean.header";
		Integer totalImage = 0;
		try {
//			totalImage = galleryPageService.getTotalImageJssor(topic);
//			gallerySubJssorBean = galleryPageService.getGallerySubJssorBean(topic);
		} catch (Exception e) {
			logger.error("Exception: ", e);
		}
		return modelAndView;
	}

	@RequestMapping(value = "ourWorks", method = { RequestMethod.POST })
	public ModelAndView ourWorks(HttpServletRequest reqServlet) {
		ModelAndView modelAndView = new ModelAndView(PAGE_OUR_WORKS);
		List<ServicesBean> servicesBeanList = new ArrayList<ServicesBean>();
		try {
			servicesBeanList = servicesPageService.getAllServices();
			modelAndView.addObject("ourWorksList", servicesBeanList);
		} catch (Exception e) {
			logger.error("Exception: ", e);
		}
		return modelAndView;
	}

	@RequestMapping(value = "ourWorks/sub", method = { RequestMethod.POST })
	public ModelAndView subOurWorks(HttpServletRequest reqServlet) {
		ModelAndView modelAndView = new ModelAndView(PAGE_SUB_OUR_WORKS);
		OurWorksSubBean ourWorksSubBean = new OurWorksSubBean();
		String serviceName = "ServicesBean.header";
		try {
//			ourWorksSubBean = ourWorksPageService.getOurWorksSubBean(serviceName);
			modelAndView.addObject("ourWorksSubBean", ourWorksSubBean);

		} catch (Exception e) {
			logger.error("Exception: ", e);
		}
		return modelAndView;
	}

	@RequestMapping(value = "ourWorks/sub/jssor", method = { RequestMethod.POST })
	public ModelAndView jssorSubOurWorks(HttpServletRequest reqServlet) {
		ModelAndView modelAndView = new ModelAndView(PAGE_JSSOR_SUB_OUR_WORKS);
		OurWorksSubJssorBean ourWorksSubJssorBean = new OurWorksSubJssorBean();
		String serviceName = "ServicesBean.header";
		String topic = "ItemSubOurWorks.topicName";
		Integer totalImage = 0;
		try {
//			ourWorksSubJssorBean = ourWorksPageService.getOurWorksSubJssorBean(serviceName, topic);
//			totalImage = ourWorksPageService.getTotalImageJssorSubOurWorks(serviceName, topic);
			modelAndView.addObject("carouselList", ourWorksSubJssorBean.getCarouselList());
		} catch (Exception e) {
			logger.error("Exception: ", e);
		}
		return modelAndView;
	}

	@RequestMapping(value = "services", method = { RequestMethod.POST })
	public ModelAndView services(HttpServletRequest reqServlet) {
		ModelAndView modelAndView = new ModelAndView(PAGE_SERVICES);
		List<ServicesBean> servicesBeanList = new ArrayList<ServicesBean>();
		try {
			servicesBeanList = servicesPageService.getAllServices();
			modelAndView.addObject("serviceList", servicesBeanList);

		} catch (Exception e) {
			logger.error("Exception: ", e);
		}
		return modelAndView;
	}
	
	
	//TODO FOR TEST
	@RequestMapping(value = "test", method = { RequestMethod.GET })
	public ModelAndView test(HttpServletRequest reqServlet) {
		ModelAndView modelAndView = new ModelAndView("test");
		try {

		} catch (Exception e) {
			logger.error("Exception: ", e);
		}
		return modelAndView;
	}
	
	@RequestMapping(value = "image/{id}", method = { RequestMethod.GET, RequestMethod.POST })
	public void loadImage(HttpServletRequest reqServlet, HttpServletResponse response, @PathVariable("id") String id) {
		try {
			response.setContentType("image/jpeg");  
			//find file by imageID
			File file = new File("C:/Users/USER/Documents/default_medium_KTB.jpg");
			InputStream inputStream;
			try {
				if(file.exists()){
					inputStream = new FileInputStream(file);
					IOUtils.copy(inputStream, response.getOutputStream());
				    response.flushBuffer();
				}
			} catch (IOException ex) {
				ex.printStackTrace();
			}
		} catch (Exception e) {
			logger.error("Exception: ", e);
		}
	}

}
