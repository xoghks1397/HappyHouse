package com.ssafy.happyhouse.controller;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ssafy.happyhouse.model.MemberDto;
import com.ssafy.happyhouse.model.service.MemberService;
import com.ssafy.happyhouse.model.service.MemberServiceImpl;

@Controller
@RequestMapping("/member")
public class MemeberServlet {
	@Autowired
	private MemberService memberService;

	@ResponseBody
	@GetMapping(value = "/searchAjax", headers = { "Content-type=application/json" })
	private String searchAjax(String name, Model m) throws ServletException, IOException {
		name = name.trim();
		MemberDto mem;
		try {
			mem = memberService.searchById(name);
			m.addAttribute("result", "    아이디 : " + mem.getName() + ", " + "이메일 : " + mem.getEmail());
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "login/SimpleResult";
	}

	@PostMapping("/find")
	private String find(String id, String email, Model m) throws ServletException, IOException {
		String next = "index";
		try {
			System.out.println(id + " " + email);
			MemberDto mem = memberService.searchPass(id, email);
			if (mem != null)
				m.addAttribute("msg", "찾는 비밀번호는 "+mem.getPassword()+"입니다.");
			else
				m.addAttribute("msg", "찾는 결과가 없습니다.");
		} catch (Exception e) {
			m.addAttribute("msg", "찾는 결과가 없습니다.");
			// e.printStackTrace();
		}
		return next;
	}

	@RequestMapping("/search")
	private String search(String text, Model model) throws ServletException, IOException {
		try {

			MemberDto mem = memberService.searchById(text);
			if (mem != null) {
				model.addAttribute("msg", "검색결과 입니다." + mem);
			} else {
				model.addAttribute("msg", "찾으시는 결과가 없습니다.");
			}
		} catch (Exception e) {
			model.addAttribute("msg", "찾으시는 결과가 없습니다.");
		}
		return "login/Result2";
	}
	@RequestMapping("/del")
	private String del(String id, Model m) throws IOException {
		System.out.println(id);
		m.addAttribute("id", id);
		return "login/deleteInformation";
	}
	
	@RequestMapping("/delete")
	private String delete(String id, Model model, HttpSession hs) throws IOException {
		String next = "index";
		try {
			memberService.delete(id);
			model.addAttribute("msg", "탈퇴되었습니다.");
			next = "redirect:/";
		} catch (Exception e) {
			model.addAttribute("msg", "회원탈퇴 중 오류가 발생했습니다.(비밀번호 재확인 동일하게)");
		}
		hs.invalidate();
		return next;
	}
	
	@RequestMapping("/deleteMem")
	private String deleteMem(String id, Model model, HttpSession hs) throws IOException {
		String next = "index";
		try {
			memberService.delete(id);
			model.addAttribute("user", "ssafy");
			model.addAttribute("msg", "탈퇴되었습니다.");
			next = "redirect:/";
		} catch (Exception e) {
			model.addAttribute("msg", "회원탈퇴 중 오류가 발생했습니다.(비밀번호 재확인 동일하게)");
		}
		return next;
	}

	@RequestMapping("/update")
	private String update(@RequestParam(value = "id", required = true) String id, Model m) {
		try {
			MemberDto mem = memberService.searchById(id);
			m.addAttribute("member", mem);
			m.addAttribute("msg", "정보 가져오기가 성공했습니다");
		} catch (Exception e) {
			m.addAttribute("msg", "정보를 가져오는 도중에 에러가 발생했습니다.");
		}
		return "login/changeInformation";
	}

	@RequestMapping("/updateInfo")
   private String update(@RequestParam(value="name", required=true)String name, 
		   @RequestParam(value="email", required=true)String email, 
		   @RequestParam(value="address", required=true)String address, 
		   @RequestParam(value="pass", required=true)String pass, 
		   @RequestParam(value="repass", required=true)String repass, Model m) throws ServletException, IOException {

      String next = "redirect:/";
      try {
    	if(pass!=null && repass!=null) {
    		if(pass.equals(repass)) {
    			MemberDto mem = new MemberDto(name, pass, email, address);
    			memberService.update(mem);
    			m.addAttribute("user", mem.getName());
    			m.addAttribute("msg", "정보가 변경되었습니다.");
    			return next;
    		}
    		m.addAttribute("msg", "입력한 비밀번호가 다릅니다.");
    		return next;
    	}
      } catch (Exception e) {
         m.addAttribute("msg", "변경 중 오류가 발생했습니다. 다시 시도해주십시오.");
      }
      return next;
   }

	@GetMapping("/signup")
	protected String signup() {
		return "login/signup";
	}

	@RequestMapping("/register")
	private String register(String name, String pass, String repass, String email, String address, Model m)
			throws ServletException, IOException {
		String next = "index";
		try {
			if(name!=null && pass!=null && repass!=null && email!=null && address!=null) { 
				if(pass.equals(repass)) {
					MemberDto mem = new MemberDto(name, pass, email, address);
					memberService.add(mem);
					m.addAttribute("msg", name+"님 회원가입을 축하드립니다. 로그인해주세요.");
					return next;
				}
				m.addAttribute("msg", "입력한 비밀번호가 다릅니다.");
				return next;
			}
			m.addAttribute("msg", "입력하지 않는 정보가 있습니다.");			
		} catch (Exception e) {
			m.addAttribute("msg", "회원가입 중 오류가 발생했습니다. 다시 시도해주십시오.");
		}
		return next;
	}
	
	@GetMapping("/searchMember")
	protected String searchMember(Model m) {
		try {
			List<MemberDto> memberList = memberService.searchMember();
			m.addAttribute("members", memberList);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "login/memberManagement";
	}
}