package com.prdx.web.bean.contact;

import java.util.ArrayList;
import java.util.List;

import lombok.Data;

@Data
public class GallerySubJssorBean {
	
	public int imageOrder = 1; 
	public List<CarouselBean> carouselList = new ArrayList<>();
	
}
