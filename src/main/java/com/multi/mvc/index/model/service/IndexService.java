package com.multi.mvc.index.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.multi.mvc.index.model.mapper.IndexMapper;
import com.multi.mvc.index.model.vo.*;


@Service
public class IndexService {
	
	@Autowired
	private IndexMapper mapper;
	
	public List<IndexHospital> getHospitalLsitDefault() {
		
		return mapper.selectHospitalDefault();
	}
	
	public List<IndexEmergency> getEmergencyLsitDefault() {
		
		return mapper.selectEmergencylDefault();
	}
	
	public List<IndexHoliday> getHolidayLsitDefault() {
		
		return mapper.selectHolidaylDefault();
	}
	
	public List<IndexPharmacy> getPharmacyLsitDefault() {
		
		return mapper.selectPharmacylDefault();
	}
	public List<IndexPill> getPhill() {
		
		return mapper.selectPill();
	}
}
