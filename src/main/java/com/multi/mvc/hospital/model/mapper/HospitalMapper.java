package com.multi.mvc.hospital.model.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import com.multi.mvc.hospital.model.vo.HPharmacy;
import com.multi.mvc.hospital.model.vo.HReview;
import com.multi.mvc.hospital.model.vo.HospitalInfo;
import com.multi.mvc.hospital.model.vo.HospitalList;
import com.multi.mvc.hospital.model.vo.MedicalDepartmentInfo;
import com.multi.mvc.hospital.model.vo.Operation;

@Mapper
public interface HospitalMapper {
	
	List<HospitalList> selectHospitalList(Map<String, String> map);
	int selectHospitalCount(Map<String, String> map);
	
	HospitalInfo selectHospitalInfo(String hpid);
	List<MedicalDepartmentInfo> selectMedicalDepartment(String hpid);
	Operation selectOperation(String hpid);
	List<HReview> selectReview(Map<String, String> map);
	int selectReviewCount(String hpid);
	List<HPharmacy> selectPharmacy(String hpid);
	

}
