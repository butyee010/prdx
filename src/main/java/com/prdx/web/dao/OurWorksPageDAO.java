package com.prdx.web.dao;

import java.util.List;

import com.prdx.web.bean.contact.CarouselBean;
import com.prdx.web.bean.contact.ItemSubOurWorks;

public interface OurWorksPageDAO {

	public List<ItemSubOurWorks> getItemSubOurWorkList(String serviceName)throws Exception;

	public List<CarouselBean> getCarouselList(String serviceName, String topic)throws Exception;

	public Integer getTotalImageJssorSubOurWorks(String serviceName, String topic)throws Exception;

}
