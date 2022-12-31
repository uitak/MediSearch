package com.multi.mvc.pharmacy.model.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.multi.mvc.common.util.PageInfo;
import com.multi.mvc.pharmacy.model.mapper.PharmacyMapper;
import com.multi.mvc.pharmacy.model.vo.PHospital;
import com.multi.mvc.pharmacy.model.vo.PReview;
import com.multi.mvc.pharmacy.model.vo.PharmacyList;

@Service
public class PharmacyService {
	@Autowired
	private PharmacyMapper mapper;
	
	public int getPharmacyCount(Map<String, String> searchMap) {
		return mapper.selectPharamcyCount(searchMap);
	}
	
	public List<PharmacyList> getPharmacyList(PageInfo pageInfo, Map<String, String> searchMap) {
		searchMap.put("limit", "" + pageInfo.getListLimit());
		searchMap.put("offset", "" + (pageInfo.getStartList() - 1));
		
		return mapper.selectPharmacyList(searchMap);
	}
	
	public PharmacyList getPharmacyByNo(int pharmacyNo) {
		return mapper.selectPharmacyListByNo(pharmacyNo);
	}
	
	public List<PReview> getReview(PageInfo pageInfo, Map<String, String> map) {
		map.put("limit", "" + pageInfo.getListLimit());
		map.put("offset", "" + (pageInfo.getStartList() - 1));
		return mapper.selectReview(map);
	}
	
	public int getReviewCount(int pharmacyNo) {
		return mapper.selectReviewCount(pharmacyNo);
	}
	
	public List<PHospital> getHospital(int pharmacyNo) {
		return mapper.selectHospital(pharmacyNo);
	}
	
	
}
