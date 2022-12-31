package com.multi.mvc.hospital.model.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.multi.mvc.common.util.PageInfo;
import com.multi.mvc.hospital.model.mapper.HospitalMapper;
import com.multi.mvc.hospital.model.vo.HPharmacy;
import com.multi.mvc.hospital.model.vo.HReview;
import com.multi.mvc.hospital.model.vo.HospitalInfo;
import com.multi.mvc.hospital.model.vo.HospitalList;
import com.multi.mvc.hospital.model.vo.MedicalDepartmentInfo;
import com.multi.mvc.hospital.model.vo.Operation;

@Service
public class HospitalService {
	@Autowired
	private HospitalMapper mapper;
	
	public int getHospitalCount(Map<String, String> searchMap) {
		return mapper.selectHospitalCount(searchMap);
	}
	
	public List<HospitalList> getHospitalList(PageInfo pageInfo, Map<String, String> searchMap) {
		searchMap.put("limit", "" + pageInfo.getListLimit());
		searchMap.put("offset", "" + (pageInfo.getStartList() - 1));
		
		return mapper.selectHospitalList(searchMap);
	}
	
	public HospitalInfo getHospitalInfo(String hpid) {		
		return mapper.selectHospitalInfo(hpid);
	}
	
	public List<MedicalDepartmentInfo> getMedicalDepartment(String hpid) {
		return mapper.selectMedicalDepartment(hpid);
	}
	
	public Operation getOperation(String hpid) {
		return mapper.selectOperation(hpid);
	}
	
	public List<HReview> getReview(PageInfo pageInfo, Map<String, String> map) {
		map.put("limit", "" + pageInfo.getListLimit());
		map.put("offset", "" + (pageInfo.getStartList() - 1));
		return mapper.selectReview(map);
	}
	
	public int getReviewCount(String hpid) {
		return mapper.selectReviewCount(hpid);
	}
	
	public List<HPharmacy> getPharmacy(String hpid) {
		return mapper.selectPharmacy(hpid);
	}
}
