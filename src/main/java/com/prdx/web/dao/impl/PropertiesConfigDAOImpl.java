package com.prdx.web.dao.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.prdx.web.bean.PropertiesConfigBean;
import com.prdx.web.constant.SQLConstants;
import com.prdx.web.dao.PropertiesConfigDAO;

@Repository
public class PropertiesConfigDAOImpl implements PropertiesConfigDAO {
	@Autowired
	private JdbcTemplate jdbcTemplate;

	@Override
	public List<PropertiesConfigBean> findAll() throws Exception {
		String sql = SQLConstants.SQL_FIND_ALL_PROPERTIES_CONFIG;
		List<PropertiesConfigBean> result = jdbcTemplate.query(sql, new BeanPropertyRowMapper<PropertiesConfigBean>(PropertiesConfigBean.class));
		
		return result;
	}

}
