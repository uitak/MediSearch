package com.multi.mvc.member.controller;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.ModelAndView;

import com.multi.mvc.member.model.service.MemberService;
import com.multi.mvc.member.model.vo.Member;

import lombok.extern.slf4j.Slf4j;

@Slf4j // log4j 선언을 대신 선언해주는 lombok 어노테이션
@SessionAttributes("loginMember") // loginMember를 Model 취급할 때 세션으로 처리하도록 도와주는 어노테이션
@Controller
public class MemberController {
	
	@Autowired
	private MemberService service;
	
//	@RequestMapping(name="/login", method = RequestMethod.POST)
	@PostMapping("/login")
	String login(Model model,String userId, String userPwd) {
		log.info("id : " + userId + "pwd : " + userPwd);
		Member loginMember = service.login(userId, userPwd);
		
		if(loginMember != null) { // 성공
			model.addAttribute("loginMember", loginMember); // 세션에 저장되는 코드, @SessionAttributes
			return "redirect:/";
		} else { // 실패
			model.addAttribute("msg", "아이디, 패스워드가 일치하지 않습니다.");
			model.addAttribute("location", "/");
			return "/common/msg";
		}
	}
	
	@RequestMapping("/logout")
	public String logout(SessionStatus status) { // status : 세션의 상태와 세션 해제가 가능한 클래스
		log.info("status : " + status.isComplete());
		status.setComplete();
		log.info("status : " + status.isComplete());
		
		return "redirect:/";
	}
	
	@GetMapping("/member/enroll")
	public String enrollPage() {
		log.info("회원가입 페이지 요청");
		return "/member/enroll";
	}
	
	// 회원가입
	// ModelAndView 사용법 : 현업 일부와 전자정부프레임워크 표준.
	// 가능하면 프로젝트에서는 스타일 통일할 것!
	@PostMapping("/member/enroll")
	public ModelAndView enroll(ModelAndView model, @ModelAttribute Member member) { // @ModelAttribute 생략가능
		log.info("회원가입 member : " + member.toString());
		
		int result = service.save(member);
		
		if(result > 0) { // 성공
			model.addObject("msg", "회원가입에 성공하셨습니다.");
			model.addObject("location", "/");
		} else { // 실패
			model.addObject("msg", "회원가입에 실패하셨습니다.");
			model.addObject("location", "/");
		}
		model.setViewName("/common/msg");
		
		return model;
		
	}
	
	// AJAX 회원가입 아이디 중복 검사
	@GetMapping("/member/idCheck")
	public ResponseEntity<Map<String, Object>> idCheck(String id) {
		log.info("아이디 중복 확인 : " + id);
		
		boolean result = service.validate(id);
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("validate", result);
		
		return new ResponseEntity<Map<String, Object>>(map, HttpStatus.OK);
	}
	
	@GetMapping("/member/view")
	public String memberView() {
		log.info("회원 정보 페이지 요청");
		return "/member/view";
	}
	
	@PostMapping("/member/update")
	public String update(Model model, 
			@ModelAttribute Member updateMember, // request에서 온 값
			@SessionAttribute(name = "loginMember", required = false) Member loginMember // 세션 값 가져오는 방법
	) {
		log.info("update 요청 updateMember : " + updateMember);
		if(loginMember == null || loginMember.getId().equals(updateMember.getId()) == false) {
			model.addAttribute("msg", "잘못된 접근입니다.");
			model.addAttribute("location", "/");
			return "/common/msg";
		}
		
		updateMember.setNo(loginMember.getNo());
		int result = service.save(updateMember);
		
		if(result > 0) {
			model.addAttribute("loginMember", service.findById(loginMember.getId())); // DB에서 있는 데이터를 다시 가져와서 세션에 저장
			model.addAttribute("msg", "회원정보가 성공적으로 수정되었습니다.");
			model.addAttribute("location", "/member/view");
		} else {
			model.addAttribute("msg", "회원정 수정에 실패하셨습니다.");
			model.addAttribute("location", "/member/view");
		}
		return "/common/msg";
	}
	
	@GetMapping("/member/updatePwd")
	public String updatePwdPage() {
		return "/member/updatePwd";
	}
	
	@PostMapping("/member/updatePwd")
	public String updatePwd(Model model,
			@SessionAttribute(name = "loginMember", required = false) Member loginMember,
			String userPwd
	) {
		int result = service.updatePwd(loginMember, userPwd);
		
		if(result > 0) {
			model.addAttribute("msg", "비밀번호가 성공적으로 변경되었습니다.");
		} else {
			model.addAttribute("msg", "비밀번호 변경에 실패하셨습니다");
		}
		model.addAttribute("script", "self.close()");
		return "/common/msg";
	}
	
//	http://127.0.0.1/mvc/member/delete
	@RequestMapping("/member/delete")
	public String delte(Model model, 
			@SessionAttribute(name = "loginMember", required = false) Member loginMember) {
		
		int result = service.delete(loginMember.getNo());
		if(result > 0) {
			model.addAttribute("msg", "성공적으로 회원 탈퇴되었습니다.");
			model.addAttribute("location", "/logout");
		} else {
			model.addAttribute("msg", "회원 탈퇴에 실패하셨습니다");
			model.addAttribute("location", "/member/view");
		}
		return "/common/msg";
	}
	
	
	
}
















