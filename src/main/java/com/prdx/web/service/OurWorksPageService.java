package com.prdx.web.service;

import java.util.List;
import java.util.Map;

import com.prdx.web.bean.contact.OurWorksSubBean;
import com.prdx.web.bean.contact.OurWorksSubJssorBean;
import com.prdx.web.bean.contact.ServicesBean;

public interface OurWorksPageService {

	public OurWorksSubBean getOurWorksSubBean(String serviceName) throws Exception;

	public OurWorksSubJssorBean getOurWorksSubJssorBean(String serviceName, String topic) throws Exception;

	public Integer getTotalImageJssorSubOurWorks(String serviceName, String topic)throws Exception;

	public Map<String, List<ServicesBean>> customizeOurworksDisplay(List<ServicesBean> servicesBeanList);

}
