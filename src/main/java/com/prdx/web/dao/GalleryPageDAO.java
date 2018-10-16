package com.prdx.web.dao;

import java.util.List;

import com.prdx.web.bean.contact.CarouselBean;
import com.prdx.web.bean.contact.GalleryBean;

public interface GalleryPageDAO {

	public List<GalleryBean> getGalleryBeanList() throws Exception;

	public List<CarouselBean> getCarouselList(String topic) throws Exception;

	public Integer getTotalImageJssor(String topic)throws Exception;

}
