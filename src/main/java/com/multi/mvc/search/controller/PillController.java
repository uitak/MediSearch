package com.multi.mvc.search.controller;


import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.multi.mvc.board.model.vo.Board;
import com.multi.mvc.common.util.PageInfo;
import com.multi.mvc.search.model.service.PillService;
import com.multi.mvc.search.model.vo.Pill;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
public class PillController {
	
	@Autowired
	private PillService service;
	
	@GetMapping("/search/pill")
	public String list(Model model, @RequestParam Map<String, String> param) {
		
		log.info("list 요청 ");
		int page = 1;
		Map<String, String> searchMap = new HashMap<String, String>();
		try {
			String searchValue = param.get("searchValue");
			if(searchValue != null && searchValue.length() > 0) {
				String searchType = param.get("searchType");
				searchMap.put(searchType, searchValue);
			}
			page = Integer.parseInt(param.get("page"));
		}catch (Exception e) {
			e.printStackTrace();
		}
		
		int pillCount = service.getPillCount(searchMap);
		PageInfo pageInfo = new PageInfo(page, 5, pillCount, 4);
		List<Pill> list = service.getPillList(pageInfo, searchMap);
		
		model.addAttribute("list",list);
		model.addAttribute("param",param);
		model.addAttribute("pageInfo", pageInfo);
		
		return "/search/pill";
	}
	
	@RequestMapping("/search/pill/view")
	public @ResponseBody JSONObject view(@RequestParam("no") int no) throws IOException {
		
		
		
		Pill pill = service.getPillListByNo(no);
		
		JSONObject jsonObject = new JSONObject();
		jsonObject.put("pillNo", pill.getPillNo());
		jsonObject.put("itemSeq", pill.getItemSeq());
		jsonObject.put("entpName", pill.getEntpName());
		jsonObject.put("itemName", pill.getItemName());
		jsonObject.put("useMethodQesitm", pill.getUseMethodQesitm());
		jsonObject.put("itemImage", pill.getItemImage());
		jsonObject.put("efcyQesitm", pill.getEfcyQesitm());
		jsonObject.put("atpnWarmQesitm", pill.getAtpnWarmQesitm());
		jsonObject.put("atpnQesitm", pill.getAtpnQesitm());
		jsonObject.put("intrcQesitm", pill.getIntrcQesitm());
		jsonObject.put("seQesitm", pill.getSeQesitm());
		jsonObject.put("depositMethodQesitm", pill.getDepositMethodQesitm());
		
		System.out.println(jsonObject.toJSONString());
		return jsonObject;
		
	}
	
	
	
}
