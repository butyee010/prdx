package com.prdx.web.bean;

import lombok.Data;

@Data
public class UserInfo implements java.io.Serializable {

	private static final long serialVersionUID = -5872213531797123653L;
	// Set default value not null for write log.
	private String ipAddress = "";
	private String lastLogin;
	private String language;
	private String country;
	private String companyUserId;
	private String userName; //name
	private String userId; //userId login
	private String role;
	private String sessionId = "";
	private String instanceName = "";
	private String seqLogActivity = "";
	private String costCenter = "";
	private String email;
	private String mobileNumber;
	//private Map<String, MenuMain> menuPermission;
	private String branchName = "";
	private String fax = "";
	private String phone = "";
	private String roleId;
	private String defaultMenu;
	private String currentMainMenu;
	private boolean isUserLocked;

}
