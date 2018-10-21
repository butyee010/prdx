package com.prdx.web.constant;

import java.util.Map;

import com.prdx.web.helper.DropDownConfigHelper;

public class DropDownConstants {

	public static Map<String , String> getImageMapping() {
		return DropDownConfigHelper.getConfigValue("IMAGE_MAPPING");
	}
	
}
