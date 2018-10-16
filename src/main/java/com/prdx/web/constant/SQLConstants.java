package com.prdx.web.constant;

public class SQLConstants {

	public static final String SQL_GET_VALUE_ABOUT_PAGE_BY_KEY = " select AP_VALUE from about_page where AP_KEY = ? ";
	
	public static final String SQL_GET_ALL_MENU_LIST = " select menu_key AS key, menu_name AS name, menu_script AS script "
			+ " from menu_list order by menu_order ";
	
	public static final String SQL_GET_MENU_LIST_BY_KEY = " select menu_key AS key, menu_name AS name, menu_script AS script "
			+ " from menu_list where menu_key = ? ";
	
	public static final String SQL_GET_CAROUSEL_LIST = " select HP_VALUE AS imgPath from home_page "
			+ " where HP_KEY like 'SLIDE_IMAGE_%' order by HP_KEY ";
	
	public static final String SQL_GET_VALUE_HOME_PAGE_BY_KEY = " select HP_VALUE from home_page where HP_KEY = ? ";
	
	public static final String SQL_GET_VALUE_CONTACT_PAGE_BY_KEY = " select CP_VALUE from contact_page where CP_KEY = ? ";
	
	public static final String SQL_GET_VALUE_SERVICES_PAGE_BY_KEY = " select SP_VALUE from services_page where SP_KEY = ? ";
}
