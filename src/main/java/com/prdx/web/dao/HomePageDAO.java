package com.prdx.web.dao;

import java.util.List;

import com.prdx.web.bean.contact.CarouselBean;

public interface HomePageDAO {

	public List<CarouselBean> getCarouselList()throws Exception;
	
	public String getValue(String key)throws Exception;

}
