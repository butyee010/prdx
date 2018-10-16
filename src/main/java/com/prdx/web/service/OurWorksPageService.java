package com.prdx.web.service;

import com.prdx.web.bean.contact.OurWorksSubBean;
import com.prdx.web.bean.contact.OurWorksSubJssorBean;

public interface OurWorksPageService {

	public OurWorksSubBean getOurWorksSubBean(String serviceName) throws Exception;

	public OurWorksSubJssorBean getOurWorksSubJssorBean(String serviceName, String topic) throws Exception;

	public Integer getTotalImageJssorSubOurWorks(String serviceName, String topic)throws Exception;

}
