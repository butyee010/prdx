package com.prdx.web.bean.contact;

import java.util.List;

import com.prdx.web.constant.PortalConstants;

import lombok.Data;

@Data
public class HomeBean {
	
	public List<CarouselBean> carouselList;
	
	public String headerRef1;
	public String contentRef1;
	
	public String imgPathRef2;
	public String imgNameRef2 = PortalConstants.IMAGE_NAME_DEFUALT;
	public String imgHightSizeRef2 = "300px";
	
	public String contentRef3;
	
	public String imgPathRef4;
	public String imgNameRef4 = PortalConstants.IMAGE_NAME_DEFUALT;
	
	public String headerRef4;
	public String contentRef4_1_strong;
	public String contentRef4_1_desc;
	
	public String contentRef4_2_strong;
	public String contentRef4_2_desc;
	
	public String contentRef4_3_strong;
	public String contentRef4_3_desc;
}
