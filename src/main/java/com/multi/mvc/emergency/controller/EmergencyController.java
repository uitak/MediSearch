package com.multi.mvc.emergency.controller;

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
import com.multi.mvc.emergency.model.service.EmergencyService;
import com.multi.mvc.emergency.model.vo.Department;
import com.multi.mvc.emergency.model.vo.EPharmacy;
import com.multi.mvc.emergency.model.vo.Emergency;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
public class EmergencyController {
	
	@Autowired
	private EmergencyService service;
	
	// 응급실 ROI 클릭 : info 보기 
	@RequestMapping("/search/emergencyInfo.do")
	public String emergencyInfo(Model model, @RequestParam Map<String, String> param) {
		List<Emergency> info = service.getErInfo(param.get("hpid"));
		List<Department> department = service.getErDepartment(param.get("hpid"));
		
		if(!info.get(0).getDutyInf().equals("-")) {
			model.addAttribute("dpn", info.get(0).getDutyInf());
		}else {
			model.addAttribute("dpn", null);
		}
		
		List<EPharmacy> pharmacyList = service.getPharmacy(param.get("hpid"));	// 약국
		pharmacyList = setPharmacyAddr(pharmacyList);	// 약국 주소 다시 세팅
		
		model.addAttribute("addr", info.get(0).getDutyAddr().split("구")[0]+"구");
		model.addAttribute("img", param.get("img"));
		model.addAttribute("hpid", param.get("hpid")); 
		model.addAttribute("info", info);
		model.addAttribute("dept", department);
		
		model.addAttribute("pharmacyList", pharmacyList);	// 약국
		
		return "search/emergencyInfo";
	}
	
	
	// form1 : 필터
	@RequestMapping("/search/emergencyMap.do")
	String emergencyMap(Model model, @RequestParam Map<String, String> param, String[] acceptable, String[] available) {
		int page = 1;
		Map<String, String> searchMap = new HashMap<String, String>();
		String[] imgs = {"hp19.jpg","hp20.jpg","hp21.jpg","hp22.jpg","hp23.jpg","hp24.jpg","hp25.jpg","hp26.jpg","hp27.jpg","hp28.jpg","hp29.jpg"};
		try {
			searchMap.put("addr", addr(param.get("city"), param.get("gu")));
			for(int i=0;i<acceptable.length;i++) {
				searchMap.put(acceptable[i], "Y");
			}
			for(int i=0;i<available.length;i++) {
				searchMap.put(available[i], "Y");
			}
			
			System.out.println(searchMap);
			
			
			page = Integer.parseInt(param.get("page"));
		} catch (Exception e) {}
		
		int erCount = service.getEmergencyCount(searchMap);
		PageInfo pageInfo = new PageInfo(page, 5, erCount, 12);
		List<Emergency> list = service.getEmergencyList(pageInfo, searchMap);
		
		model.addAttribute("addr", addr(param.get("city"), param.get("gu"))); // 주소 만들기
		for(int i=0;i<list.size();i++) {
			int num = (int)(Math.random()*11)+0;
			list.get(i).setDutyAddr(list.get(i).getDutyAddr().split("로")[0]+"로");
			list.get(i).setHospitalImg("resources/img/hospital/"+imgs[num]);
		}
		model.addAttribute("count", erCount);
		model.addAttribute("list", list);
		model.addAttribute("param", param);
		model.addAttribute("pageInfo", pageInfo);
		
		return "search/emergency";
	}
	
	// form3 : 메인
	// 추가
	@RequestMapping("/search/emergencyMap2.do")
	String emergencyMap2(Model model, @RequestParam Map<String, String> param, String[] available) {
		int page = 1;
		Map<String, String> searchMap = new HashMap<String, String>();
		String[] imgs = {"hp19.jpg","hp20.jpg","hp21.jpg","hp22.jpg","hp23.jpg","hp24.jpg","hp25.jpg","hp26.jpg","hp27.jpg","hp28.jpg","hp29.jpg"};
		try {
			searchMap.put("patientClassification", patientCF(param.get("patientClassification")));
			searchMap.put("department", param.get("department"));
			searchMap.put("available", param.get("department"));
			for(int i=0;i<available.length;i++) {
				searchMap.put(available[i], "Y");
			}
			
			page = Integer.parseInt(param.get("page"));
		} catch (Exception e) {}
		
		int erCount = service.getEmergencyCount(searchMap);
		PageInfo pageInfo = new PageInfo(page, 5, erCount, 12);
		List<Emergency> list = service.getEmergencyListMain(pageInfo, searchMap);
		
		for(int i=0;i<list.size();i++) {
			int num = (int)(Math.random()*11)+0;
			list.get(i).setDutyAddr(list.get(i).getDutyAddr().split("로")[0]+"로");
			list.get(i).setHospitalImg("resources/img/hospital/"+imgs[num]);
		}
		model.addAttribute("count", erCount);
		model.addAttribute("list", list);
		model.addAttribute("param", param);
		model.addAttribute("pageInfo", pageInfo);
		
		return "search/emergency";
	}
	
	// form2 : 병원 이름으로 검색
	@RequestMapping("/search/emergencyName.do")
	String emergencyMapName(Model model, @RequestParam Map<String, String> param) {
		int page = 1;
		Map<String, String> searchMap = new HashMap<String, String>();
		String erName = String.valueOf(param.get("erName"));
		String[] imgs = {"hp19.jpg","hp20.jpg","hp21.jpg","hp22.jpg","hp23.jpg","hp24.jpg","hp25.jpg","hp26.jpg","hp27.jpg","hp28.jpg","hp29.jpg"};
		try {
			searchMap.put("erName", erName);
			page = Integer.parseInt(param.get("page"));
		} catch (Exception e) {}
		
		
		int erCount = service.getEmergencyCount(searchMap);
		PageInfo pageInfo = new PageInfo(page, 5, erCount, 12);
		List<Emergency> list = service.getEmergencyList(pageInfo, searchMap);
		
		model.addAttribute("erName", param);
		
		for(int i=0;i<list.size();i++) {
			int num = (int)(Math.random()*11)+0;
			list.get(i).setDutyAddr(list.get(i).getDutyAddr().split("로")[0]+"로");
			list.get(i).setHospitalImg("resources/img/hospital/"+imgs[num]);
		}
		model.addAttribute("count", erCount);
		model.addAttribute("list", list);
		model.addAttribute("param", param);
		model.addAttribute("pageInfo", pageInfo);
		
		return "search/emergency";
	}
	
	// 네비바 : 응급실 : 초기화면 
		@GetMapping("/search/emergency.do")
		public String emergency(Model model, @RequestParam Map<String, String> param) {
			int page = 1;
			Map<String, String> searchMap = new HashMap<String, String>();
			String[] imgs = {"hp19.jpg","hp20.jpg","hp21.jpg","hp22.jpg","hp23.jpg","hp24.jpg","hp25.jpg","hp26.jpg","hp27.jpg","hp28.jpg","hp29.jpg"};
			try {
				page = Integer.parseInt(param.get("page"));
			}catch (Exception e) {}
			
			int erCount = service.getEmergencyCount(searchMap);
			PageInfo pageInfo = new PageInfo(page, 5, erCount, 12);
			List<Emergency> list = service.getEmergencyList(pageInfo, searchMap);
			
			for(int i=0;i<list.size();i++) {
				int num = (int)(Math.random()*11)+0;
				list.get(i).setDutyAddr(list.get(i).getDutyAddr().split("로")[0]+"로");
				list.get(i).setHospitalImg("resources/img/hospital/"+imgs[num]);
			}
			
			model.addAttribute("count", erCount);
			model.addAttribute("list", list);
			model.addAttribute("param", param);
			model.addAttribute("pageInfo", pageInfo);
			
			return "search/emergency";
		}
	
	// 주소 full
	public static String addr(Object object, Object object2) {
		String temp="";
		
		if (object.equals("seoul")) {
			temp = "서울특별시";
		} else if (object.equals("busan")) {
			temp = "부산광역시";
		} else if (object.equals("daegu")) {
			temp = "대구광역시";
		} else if (object.equals("incheon")) {
			temp = "인천광역시";
		} else if (object.equals("gwangju")) {
			temp = "광주광역시";
		} else if (object.equals("daejun")) {
			temp = "대전광역시";
		} else if (object.equals("ulsan")) {
			temp = "울산광역시";
		} else if (object.equals("sejong")) {
			temp = "세종특별자치시";
		} else if (object.equals("gyeonggi")) {
			temp = "경기도";
		} else if (object.equals("gangwon")) {
			temp = "강원도";
		} else if (object.equals("chungcheongB")) {
			temp = "충청북도";
		} else if (object.equals("chungcheongN")) {
			temp = "충청남도";
		} else if (object.equals("jeollanB")) {
			temp = "전라북도";
		} else if (object.equals("jeollanN")) {
			temp = "전라남도";
		} else if (object.equals("gyeongsangB")) {
			temp = "경상북도";
		} else if (object.equals("gyeongsangN")) {
			temp = "경상남도";
		} else if (object.equals("jeju")) {
			temp = "제주특별자치도";
		}
		String addr=temp+" "+object2;
		return addr;
	}
	
	// 추가
	private String patientCF(String cs) {
		if(cs.equals("신경중환자")) {
			cs="hpcuyn";
		}else if(cs.equals("신생중환자")) {
			cs="hpnicuyn";
		}else if(cs.equals("흉부중환자")) {
			cs="hpccuyn";
		}else if(cs.equals("일반중환자")) {
			cs="hpicuyn";
		}else if(cs.equals("약물중환자")) {
			cs="hv7";
		}else if(cs.equals("화상중환자")) {
			cs="hv8";
		}else if(cs.equals("외상중환자")) {
			cs="hv9";
		}
		return cs;
	}
	
	// 약국 주소 메소드
	private List<EPharmacy> setPharmacyAddr(List<EPharmacy> phList) {
		
		for(int i = 0; i < phList.size(); i++) {
			String[] addrArray = phList.get(i).getDutyAddr().split(",");
			String newAddr = addrArray[0];
			phList.get(i).setDutyAddr(newAddr);
		}
		
		return phList;
	}
}

