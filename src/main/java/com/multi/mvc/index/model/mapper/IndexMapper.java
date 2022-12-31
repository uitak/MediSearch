package com.multi.mvc.index.model.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.multi.mvc.index.model.vo.*;

@Mapper
public interface IndexMapper {
	List<IndexHospital> selectHospitalDefault();
	List<IndexEmergency> selectEmergencylDefault();
	List<IndexHoliday> selectHolidaylDefault();
	List<IndexPharmacy> selectPharmacylDefault();
	List<IndexPill> selectPill();
}
