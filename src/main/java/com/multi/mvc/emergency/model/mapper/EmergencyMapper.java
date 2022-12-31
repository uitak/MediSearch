package com.multi.mvc.emergency.model.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import com.multi.mvc.emergency.model.vo.Department;
import com.multi.mvc.emergency.model.vo.Emergency;
import com.multi.mvc.emergency.model.vo.EPharmacy;

@Mapper
public interface EmergencyMapper {
		List<Emergency> selectEmergencyList(Map<String, String> map);
		List<Emergency> selectEmergencyListDesc(Map<String, String> map);
		int selectEmergencyCount(Map<String, String> map);
		
		List<Emergency> selectEmergencyInfo(String hpid);
		List<Department> inst(String hpid);
		
		List<EPharmacy> selectPharmacy(String hpid);	// 약국
}
