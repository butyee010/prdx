package com.prdx.web.dao;

import java.util.List;

import com.prdx.web.bean.PropertiesMappingBean;

public interface PropertyMappingDAO {

	public String getValue(String key, String group)throws Exception;

	public List<PropertiesMappingBean> findAll() throws Exception;

}
