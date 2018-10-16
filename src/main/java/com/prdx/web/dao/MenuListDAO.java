package com.prdx.web.dao;

import java.util.List;

import com.prdx.web.bean.contact.MenuBean;

public interface MenuListDAO {

	public List<MenuBean> getAll()throws Exception;
	
	public MenuBean getByKey(String key)throws Exception;

}
