package com.prdx.web.bean;

import java.io.Serializable;
import java.math.BigDecimal;

import lombok.Data;

@Data
public class MenuBean implements Serializable{
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String menuKey;
	private String groupKey;
	private String subMenuKey;
	private BigDecimal groupPos;
	private BigDecimal subMenuPos;
	private String groupNameEng;
	private String groupNameTh;
	private String groupCss;
	private String groupScript;
	private String subMenuNameEn;
	private String subMenuNameTh;
	private String subMenuCss;
	private String subMenuScript;
	
}
