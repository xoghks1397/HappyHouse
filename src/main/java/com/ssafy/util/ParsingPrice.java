package com.ssafy.util;

import java.util.List;

import com.ssafy.happyhouse.model.HouseDealDto;

public class ParsingPrice {
	public ParsingPrice() {}
	
	public List<HouseDealDto> parsePrice(String price, List<HouseDealDto> deals) {
		String tempPrice = price.replaceAll("[^\uAC00-\uD7A3xfe0-9a-zA-Z\\s]", "");
        tempPrice = tempPrice.replaceAll("만원", "");
        String[] priceList = tempPrice.split(" ");
        int minPrice = Integer.parseInt(priceList[0]);
        int maXPrice = Integer.parseInt(priceList[2]);
        
		for(int idx = 0; idx<deals.size(); idx++) {
			int dealPrice = Integer.parseInt(deals.get(idx).getDealAmount().trim().replace(",", ""));
			if(dealPrice < minPrice || maXPrice < dealPrice) {
				deals.remove(idx);
				idx--;
			}
		}
		return deals;
	}
	
}
