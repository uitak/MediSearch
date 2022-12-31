package com.multi.mvc.pharmacy.model.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import com.multi.mvc.pharmacy.model.vo.PHospital;
import com.multi.mvc.pharmacy.model.vo.PReview;
import com.multi.mvc.pharmacy.model.vo.PharmacyList;

@Mapper
public interface PharmacyMapper {
	List<PharmacyList> selectPharmacyList(Map<String, String> map);
	int selectPharamcyCount(Map<String, String> map);
	
	PharmacyList selectPharmacyListByNo(int pharmacyNo);
	List<PReview> selectReview(Map<String, String> map);
	int selectReviewCount(int pharmacyNo);
	
	List<PHospital> selectHospital(int pharmacyNo);
}
