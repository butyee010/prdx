package com.prdx.web.helper;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.prdx.web.bean.contact.MenuBean;
import com.prdx.web.dao.MenuListDAO;

public class MenuListHelper {
	
	private static MenuListDAO menuListDAO;

	@Autowired
	private void initialDAO(MenuListDAO menuListDAO) {
		MenuListHelper.menuListDAO = menuListDAO;
	}
	
	public static List<MenuBean> findAll() throws Exception {
		
		return menuListDAO.getAll();
	}
	
	public static MenuBean getMenuBeanyKey(String key) throws Exception {
		
		return menuListDAO.getByKey(key);
	}

}
