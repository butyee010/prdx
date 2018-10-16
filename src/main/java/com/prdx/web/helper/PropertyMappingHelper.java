package com.prdx.web.helper;

import org.springframework.beans.factory.annotation.Autowired;

import com.prdx.web.dao.PropertyMappingDAO;

public class PropertyMappingHelper {
	
	private static PropertyMappingDAO propertyMappingDAO;

	@Autowired
	private void initialDAO(PropertyMappingDAO propertyMappingDAO) {
		PropertyMappingHelper.propertyMappingDAO = propertyMappingDAO;
	}
	
	public static String getValue(String key, String group) throws Exception {
		
		return propertyMappingDAO.getValue(key, group);
	}

}
