package com.multi.mvc.holiday.model.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import com.multi.mvc.holiday.model.vo.Holiday;

@Mapper
public interface HolidayMapper {
	List<Holiday> selectAll(Map<String, String> map);
	int selectAllCount(Map<String, String> map);
	
	List<Holiday> selectHospital(Map<String, String> map);
	int selectHospitalCount(Map<String, String> map);
	
	List<Holiday> selectPharmacy(Map<String, String> map);
	int selectPharamcyCount(Map<String, String> map);
	
}
