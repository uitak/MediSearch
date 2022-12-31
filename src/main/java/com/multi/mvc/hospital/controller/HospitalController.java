package com.multi.mvc.hospital.controller;

import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.multi.mvc.common.util.PageInfo;
import com.multi.mvc.hospital.model.service.HospitalService;
import com.multi.mvc.hospital.model.vo.HPharmacy;
import com.multi.mvc.hospital.model.vo.HReview;
import com.multi.mvc.hospital.model.vo.HospitalInfo;
import com.multi.mvc.hospital.model.vo.HospitalList;
import com.multi.mvc.hospital.model.vo.MedicalDepartmentInfo;
import com.multi.mvc.hospital.model.vo.Operation;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
public class HospitalController {
	@Autowired
	private HospitalService service;
	
	@GetMapping("/search/hospital")
	public String list(Model model, @RequestParam Map<String, String> param, String[] dutyDiv, String[] searchMD) {
		
		log.info("list 요청 param : " + param);
		
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
			
			if(searchSort != null) {
				searchMap.put(searchSort, searchSort);
			}
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
		
		int hospitalCount = service.getHospitalCount(searchMap);
		PageInfo pageInfo = new PageInfo(page, 10, hospitalCount, 12);
		List<HospitalList> list = service.getHospitalList(pageInfo, searchMap);
		list = setAddr(list);
		
		model.addAttribute("count", hospitalCount);
		model.addAttribute("list", list);
		model.addAttribute("param", param);
		model.addAttribute("dutyDiv", Arrays.toString(dutyDiv));
		model.addAttribute("searchMD", Arrays.toString(searchMD));
		model.addAttribute("pageInfo", pageInfo);
		
		
		return "/search/hospital";
	}
	
	@RequestMapping("/search/hospitalInfo")
	public String info(Model model, @RequestParam Map<String, String> param) {
		
		String hpid = param.get("hpid");
		int i = Integer.parseInt(param.get("i"));
		
		int page = 1;
		Map<String, String> map = new HashMap<String, String>();
		map.put("hpid", hpid);
		try {
			page = Integer.parseInt(param.get("page"));
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		HospitalInfo hpInfo = service.getHospitalInfo(hpid);
		List<MedicalDepartmentInfo> mdList = service.getMedicalDepartment(hpid);
		Operation operation = service.getOperation(hpid);
		
		int reviewCount = service.getReviewCount(hpid);
		PageInfo pageInfo = new PageInfo(page, 5, reviewCount, 2);
		List<HReview> reviewList = service.getReview(pageInfo, map);
		
		List<HPharmacy> pharmacyList = service.getPharmacy(hpid);
		pharmacyList = setPharmacyAddr(pharmacyList);
		
//		for(MedicalDepartmentInfo md : mdList) {
//			System.out.println(md.toString());
//		}
//		if(operation != null) {
//			
//			System.out.println(operation.toString());
//		}
		
		model.addAttribute("hpInfo", hpInfo);
		model.addAttribute("mdList", mdList);
		model.addAttribute("operation", operation);
		
		model.addAttribute("reviewList", reviewList);
		model.addAttribute("pageInfo", pageInfo);
		model.addAttribute("count", reviewCount);

		model.addAttribute("pharmacyList", pharmacyList);
		
		model.addAttribute("param", param);
		model.addAttribute("i", i);
		
		return "/search/hospitalInfo";
	}
	
	private List<HospitalList> setAddr(List<HospitalList> list) {
		for(int i = 0; i < list.size(); i++) {
			String[] addrArray = list.get(i).getDutyAddr().split(" ");
			if (addrArray.length > 3) {
				String newAddr = addrArray[0] + " " + addrArray[1] + " " + addrArray[2];
				list.get(i).setDutyAddr(newAddr);
			}
		}
		return list;
	}
	
	private List<HPharmacy> setPharmacyAddr(List<HPharmacy> phList) {
		
		for(int i = 0; i < phList.size(); i++) {
			String[] addrArray = phList.get(i).getDutyAddr().split(",");
			String newAddr = addrArray[0];
			phList.get(i).setDutyAddr(newAddr);
		}
		
		return phList;
	}

}
