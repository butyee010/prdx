package com.prdx.web.dao.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.prdx.web.constant.SQLConstants;
import com.prdx.web.dao.AboutPageDAO;

@Repository
public class AboutPageDAOImpl implements AboutPageDAO{

	@Autowired
	private JdbcTemplate jdbcTemplate;
	
	@Override
	public String getValue(String key) throws Exception {
		String sql = SQLConstants.SQL_GET_VALUE_ABOUT_PAGE_BY_KEY;
		String result = "";
		List<String> temp = jdbcTemplate.queryForList(sql, new Object[]{key},String.class);
		if(temp != null && temp.size() > 0) {
			result = temp.get(0);
		}
		return result;
	}

}
