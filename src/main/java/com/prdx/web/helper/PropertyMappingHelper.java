package com.prdx.web.helper;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.prdx.web.dao.PropertyMappingDAO;

@Component
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
