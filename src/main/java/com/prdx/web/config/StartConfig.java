package com.prdx.web.config;



import javax.annotation.PostConstruct;

import org.springframework.stereotype.Component;

@Component
public class StartConfig {
	
	@PostConstruct
	public void init() {
//		PropertyConfigHelper.init();
//		DropDownConfigHelper.init();
	}
	
}
