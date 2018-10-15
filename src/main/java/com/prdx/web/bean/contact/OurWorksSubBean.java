package com.prdx.web.bean.contact;

import java.util.Map;

import com.prdx.web.constant.PortalConstants;

import lombok.Data;

@Data
public class OurWorksSubBean {
	
	public String ourWorksName = PortalConstants.OUR_WORKS;
	public String subOurWorksName;
	
	public Map<String, ItemSubOurWorks> itemSubOurWorksMap;
}