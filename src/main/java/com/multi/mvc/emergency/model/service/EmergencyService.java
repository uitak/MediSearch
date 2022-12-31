package com.multi.mvc.emergency.model.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.multi.mvc.common.util.PageInfo;
import com.multi.mvc.emergency.model.mapper.EmergencyMapper;
import com.multi.mvc.emergency.model.vo.Department;
import com.multi.mvc.emergency.model.vo.Emergency;
import com.multi.mvc.emergency.model.vo.EPharmacy;

@Service
public class EmergencyService {
	@Autowired
	private EmergencyMapper mapper;

	public int getEmergencyCount(Map<String, String> searchMap) {
		return mapper.selectEmergencyCount(searchMap);
	}

//	public List<Emergency> getEmergencyList(PageInfo pageInfo, Map<String, String> param){
//		int offset = (pageInfo.getCurrentPage() - 1) * pageInfo.getListLimit();
//		RowBounds rowBounds = new RowBounds(offset, pageInfo.getListLimit());
//		return mapper.selectEmergencyList(rowBounds, param);
//	}
	
	public List<Emergency> getEmergencyListDesc(PageInfo pageInfo, Map<String, String> searchMap){
		searchMap.put("limit", "" + pageInfo.getListLimit());
		searchMap.put("offset", "" + (pageInfo.getStartList() - 1));
		
		return mapper.selectEmergencyListDesc(searchMap);
	}
	
	public List<Emergency> getEmergencyList(PageInfo pageInfo, Map<String, String> searchMap) {
		searchMap.put("limit", "" + pageInfo.getListLimit());
		searchMap.put("offset", "" + (pageInfo.getStartList() - 1));
		
		return mapper.selectEmergencyList(searchMap);
	}
	
	public List<Emergency> getErInfo(String hpid) {
		return mapper.selectEmergencyInfo(hpid);
	}
	
	public List<Department> getErDepartment(String hpid) {
		return mapper.inst(hpid);
	}
	
	// 약국
	public List<EPharmacy> getPharmacy(String hpid) {
		return mapper.selectPharmacy(hpid);
	}
}
