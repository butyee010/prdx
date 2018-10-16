package com.prdx.web.service;

import java.util.List;

import com.prdx.web.bean.contact.GalleryBean;
import com.prdx.web.bean.contact.GallerySubBean;
import com.prdx.web.bean.contact.GallerySubJssorBean;

public interface GalleryPageService {

	public List<GalleryBean> getGalleryBeanList() throws Exception;

	public GallerySubBean getGallerySubBean(String topic) throws Exception;

	public GallerySubJssorBean getGallerySubJssorBean(String topic) throws Exception;

	public Integer getTotalImageJssor(String topic)throws Exception;

}
