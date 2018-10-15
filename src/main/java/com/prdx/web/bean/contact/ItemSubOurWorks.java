package com.prdx.web.bean.contact;

import com.prdx.web.constant.PortalConstants;

import lombok.Data;

@Data
public class ItemSubOurWorks {
	
	public String topicName;
	public String header;
	public String content;
	public String imgPath;
	public String imgName = PortalConstants.IMAGE_NAME_DEFUALT;

}
