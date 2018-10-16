package com.prdx.web.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.prdx.web.bean.contact.GalleryBean;
import com.prdx.web.bean.contact.GallerySubBean;
import com.prdx.web.bean.contact.GallerySubJssorBean;
import com.prdx.web.dao.GalleryPageDAO;
import com.prdx.web.service.GalleryPageService;

@Service
public class GalleryPageServiceImpl implements GalleryPageService{
	
	@Autowired
	private GalleryPageDAO galleryPageDAO;

	@Override
	public List<GalleryBean> getGalleryBeanList() throws Exception {
		
		return galleryPageDAO.getGalleryBeanList();
	}

	@Override
	public GallerySubBean getGallerySubBean(String topic) throws Exception {
		GallerySubBean gallerySubBean = new GallerySubBean();
		gallerySubBean.setSubGalleryName(topic);
		gallerySubBean.setCarouselList(galleryPageDAO.getCarouselList(topic));
		
		return gallerySubBean;
	}

	@Override
	public GallerySubJssorBean getGallerySubJssorBean(String topic) throws Exception {
		GallerySubJssorBean gallerySubJssorBean = new GallerySubJssorBean();
		gallerySubJssorBean.setCarouselList(galleryPageDAO.getCarouselList(topic));
		
		return gallerySubJssorBean;
	}

	@Override
	public Integer getTotalImageJssor(String topic) throws Exception {
		
		return galleryPageDAO.getTotalImageJssor(topic);
	}

}
