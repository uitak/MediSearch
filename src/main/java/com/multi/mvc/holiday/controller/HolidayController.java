package com.multi.mvc.holiday.controller;

import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.multi.mvc.common.util.PageInfo;
import com.multi.mvc.holiday.model.service.HolidayService;
import com.multi.mvc.holiday.model.vo.Holiday;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
public class HolidayController {
	
	@Autowired
	private HolidayService service;
	
	@GetMapping("/search/holiday")
	public String list(Model model, @RequestParam Map<String, String> param, String[] dutyDiv, String[] searchMD) {
		log.info("list 요청 param : " + param);
		
		
		String type = param.get("searchType");
		
		int page = 1;
		Map<String, String> searchMap = new HashMap<String, String>();
		
		try {
			if(dutyDiv != null) {
				log.info("list 요청 dutyDiv : " + Arrays.toString(dutyDiv));
				for(int i= 0; i < dutyDiv.length; i++) {
					if(i == 0) {
						searchMap.put("dutyDiv", "dutyDiv");
					}
					searchMap.put(dutyDiv[i], dutyDiv[i]);
				}
			}
			if(searchMD != null) {
				log.info("list 요청 searchMD : " + Arrays.toString(searchMD));
				for(int i= 0; i < searchMD.length; i++) {
					if(i == 0) {
						searchMap.put("searchMD", "searchMD");
					}
					searchMap.put(searchMD[i], searchMD[i]);
				}
			}
			
			String searchSort = param.get("searchSort");
			String searchValue = param.get("searchValue");
			String searchCity = param.get("city");
			String searchTown = param.get("town");
			
//			if(searchSort != null) {
//				searchMap.put(searchSort, searchSort);
//			}
			if(searchValue != null) {
				searchMap.put("searchValue", searchValue);
			}
			if(searchCity != null) {
				searchMap.put("searchCity", searchCity);
				searchMap.put("searchTown", searchTown);
			}
			
			page = Integer.parseInt(param.get("page"));
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
		int count = 0;
		PageInfo pageInfo = null;
		List<Holiday> list = null;
		
		if(type != null) {
			if(type.equals("all")) {
				count = service.getAllCount(searchMap);
				pageInfo = new PageInfo(page, 5, count, 12);
				list = service.getAll(pageInfo, searchMap);
				
			} else if(type.equals("hp")) {
				count = service.getHospitalCount(searchMap);
				pageInfo = new PageInfo(page, 5, count, 12);
				list = service.getHospital(pageInfo, searchMap);
			} else {
				count = service.getPharmacyCount(searchMap);
				pageInfo = new PageInfo(page, 5, count, 12);
				list = service.getPharmacy(pageInfo, searchMap);
			}
		} else {
			count = service.getAllCount(searchMap);
			pageInfo = new PageInfo(page, 5, count, 12);
			list = service.getAll(pageInfo, searchMap);
		}
		
		list = setAddr(list);
		
		model.addAttribute("count", count);
		model.addAttribute("list", list);
		model.addAttribute("param", param);
		model.addAttribute("dutyDiv", Arrays.toString(dutyDiv));
		model.addAttribute("sesarchMD", Arrays.toString(searchMD));
		model.addAttribute("pageInfo", pageInfo);
		
//		list.get(0).getDutyDivNam()
		
		
		return "/search/holiday";
	}
	
	private List<Holiday> setAddr(List<Holiday> list) {
		
		for(int i = 0; i < list.size(); i++) {
			String[] addrArray = list.get(i).getDutyAddr().split(",");
			String newAddr = addrArray[0];
			list.get(i).setDutyAddr(newAddr);
		}
		
		return list;
	}

}
