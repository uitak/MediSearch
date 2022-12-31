package com.multi.mvc.holiday.model.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.multi.mvc.common.util.PageInfo;
import com.multi.mvc.holiday.model.mapper.HolidayMapper;
import com.multi.mvc.holiday.model.vo.Holiday;

@Service
public class HolidayService {
	
	@Autowired
	private HolidayMapper mapper;
	
	public List<Holiday> getAll(PageInfo pageInfo, Map<String, String> searchMap) {
		searchMap.put("limit", "" + pageInfo.getListLimit());
		searchMap.put("offset", "" + (pageInfo.getStartList() - 1));
		
		return mapper.selectAll(searchMap);
	}
	
	public int getAllCount(Map<String, String> searchMap) {
		return mapper.selectAllCount(searchMap);
	}
	
	public List<Holiday> getHospital(PageInfo pageInfo, Map<String, String> searchMap) {
		searchMap.put("limit", "" + pageInfo.getListLimit());
		searchMap.put("offset", "" + (pageInfo.getStartList() - 1));
		
		return mapper.selectHospital(searchMap);
	}
	
	public int getHospitalCount(Map<String, String> searchMap) {
		return mapper.selectHospitalCount(searchMap);
	}
	
	public List<Holiday> getPharmacy(PageInfo pageInfo, Map<String, String> searchMap) {
		searchMap.put("limit", "" + pageInfo.getListLimit());
		searchMap.put("offset", "" + (pageInfo.getStartList() - 1));
		
		return mapper.selectPharmacy(searchMap);
	}
	
	public int getPharmacyCount(Map<String, String> searchMap) {
		return mapper.selectPharamcyCount(searchMap);
	}
	
	
	
}
