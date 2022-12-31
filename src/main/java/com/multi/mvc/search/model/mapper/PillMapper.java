package com.multi.mvc.search.model.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import com.multi.mvc.search.model.vo.Pill;

@Mapper
public interface PillMapper {
	
	List<Pill> selectPillList(Map<String, String> map);
	int selectPillCount(Map<String, String> map);
	Pill selectPillByNo(int no);
	
}
