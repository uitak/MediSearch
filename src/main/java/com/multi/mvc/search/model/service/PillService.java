package com.multi.mvc.search.model.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.multi.mvc.common.util.PageInfo;
import com.multi.mvc.search.model.mapper.PillMapper;
import com.multi.mvc.search.model.vo.Pill;

@Service
public class PillService {

	@Autowired
	private PillMapper mapper;
	
	public int getPillCount(Map<String, String> param) {
		return mapper.selectPillCount(param);
	}
	
	public List<Pill> getPillList(PageInfo pageInfo, Map<String, String> param){
		param.put("limit", "" + pageInfo.getListLimit() );
		param.put("offset", ""+(pageInfo.getStartList()-1));
		return mapper.selectPillList(param);
	}
	
	public Pill getPillListByNo(int pillNo) {
		Pill pill = mapper.selectPillByNo(pillNo);
		return pill;
	}
	
}
