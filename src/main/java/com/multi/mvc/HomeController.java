package com.multi.mvc;

import java.util.List;
import java.util.Locale;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.multi.mvc.index.model.service.IndexService;
import com.multi.mvc.index.model.vo.*;


@Controller
public class HomeController {
	
	private static final int MAX_LENGHT = 12;
	
	@Autowired
	private IndexService service;
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home1(Locale locale, Model model, HttpSession session) {
		
		logger.info("Welcome home! The client locale is {}.", locale);
		
		List<IndexHospital> hpList = service.getHospitalLsitDefault();
		List<IndexEmergency> emList = service.getEmergencyLsitDefault();
		emList = setEmergency(emList);
		List<IndexHoliday> hdList = service.getHolidayLsitDefault();
		List<IndexPharmacy> phList = service.getPharmacyLsitDefault();
		phList = setPharmacyAddr(phList);
		List<IndexPill> phillList = service.getPhill();
		
		model.addAttribute("hpList", hpList);
		model.addAttribute("emList", emList);
		model.addAttribute("hdList", hdList);
		model.addAttribute("phList", phList);
		model.addAttribute("phillList", phillList);
		
		
		return "index";
	}
	
	private List<IndexEmergency> setEmergency(List<IndexEmergency> emList) {
		
		for(int i = 0; i < emList.size(); i++) {
			if(emList.get(i).getDutyName().length() > MAX_LENGHT) {
				String newName = emList.get(i).getDutyName().substring(0, MAX_LENGHT) + "...";
				emList.get(i).setDutyName(newName);
			}
			
			String[] addrArray = emList.get(i).getDutyAddr().split(" ");
			String newAddr = addrArray[0] + " " + addrArray[1] + " " + addrArray[2] + " " + addrArray[3];
			emList.get(i).setDutyAddr(newAddr);
		}
		
		return emList;
	}
	
	private List<IndexPharmacy> setPharmacyAddr(List<IndexPharmacy> phList) {
		
		for(int i = 0; i < phList.size(); i++) {
			String[] addrArray = phList.get(i).getDutyAddr().split(",");
			String newAddr = addrArray[0];
			phList.get(i).setDutyAddr(newAddr);
		}
		
		return phList;
	}
	
}
