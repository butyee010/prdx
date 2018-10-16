package com.prdx.web.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.prdx.web.bean.contact.ItemSubOurWorks;
import com.prdx.web.bean.contact.OurWorksSubBean;
import com.prdx.web.bean.contact.OurWorksSubJssorBean;
import com.prdx.web.dao.OurWorksPageDAO;
import com.prdx.web.service.OurWorksPageService;

@Service
public class OurWorksPageServiceImpl implements OurWorksPageService{
	@Autowired
	private OurWorksPageDAO ourWorksPageDAO;

	@Override
	public OurWorksSubBean getOurWorksSubBean(String serviceName) throws Exception {
		OurWorksSubBean ourWorksSubBean = new OurWorksSubBean();
		ourWorksSubBean.setSubOurWorksName(serviceName);
		
		Map<String, ItemSubOurWorks> itemSubOurWorksMap = new HashMap<String, ItemSubOurWorks>();
		List<ItemSubOurWorks> itemSubOurWorkList = ourWorksPageDAO.getItemSubOurWorkList(serviceName);
		if(itemSubOurWorkList != null && itemSubOurWorkList.size() > 0) 
		{
			for (ItemSubOurWorks itemSubOurWorks : itemSubOurWorkList) {
				itemSubOurWorksMap.put(itemSubOurWorks.getTopicName(), itemSubOurWorks);
			}
		}
		ourWorksSubBean.setItemSubOurWorksMap(itemSubOurWorksMap);
		
		return ourWorksSubBean;
	}

	@Override
	public OurWorksSubJssorBean getOurWorksSubJssorBean(String serviceName, String topic) throws Exception {
		OurWorksSubJssorBean ourWorksSubJssorBean = new OurWorksSubJssorBean();
		ourWorksSubJssorBean.setCarouselList(ourWorksPageDAO.getCarouselList(serviceName, topic));
		
		return ourWorksSubJssorBean;
	}

	@Override
	public Integer getTotalImageJssorSubOurWorks(String serviceName, String topic) throws Exception {
		return ourWorksPageDAO.getTotalImageJssorSubOurWorks(serviceName, topic);
	}

}
