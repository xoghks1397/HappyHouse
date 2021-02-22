package com.ssafy.happyhouse.controller;

import java.sql.SQLException;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import com.ssafy.happyhouse.model.EnvironmentDto;
import com.ssafy.happyhouse.model.HospitalDto;
import com.ssafy.happyhouse.model.PresiteDto;
import com.ssafy.happyhouse.model.service.EnvService;
import com.ssafy.happyhouse.model.service.HospitalService;
import com.ssafy.happyhouse.model.service.PresiteService;
import com.ssafy.util.PagingVO;

@Controller
@RequestMapping("/BtnServlet")
public class ButtonSearchServlet {

	@Autowired
	private EnvService envService;

	@Autowired
	private HospitalService hospitalsc;
	@Autowired
	private PresiteService presitesc;

	@GetMapping(value = "/env")
	public String env(@RequestParam("sigun") String sigun, Model model,
			@RequestParam(value = "nowPage", required = false) String nowPage,
			@RequestParam(value = "cntPerPage", required = false) String cntPerPage) {
		if (sigun != null) {
			try {
				List<EnvironmentDto> env = null;
				env = envService.searchBySido(sigun);
				model.addAttribute("gu", sigun);
				model.addAttribute("info", "주변 정보");
				model.addAttribute("logo", "env");
				
				
				// 갯수 조회
				int total = envService.countsido(sigun);
				// 현재 페이지 수
				if (nowPage == null && cntPerPage == null) {
					nowPage = "1";
					cntPerPage = "9";
				} else if (nowPage == null) {
					nowPage = "1";
				} else if (cntPerPage == null) {
					cntPerPage = "9";
				}
				int nowpage = Integer.parseInt(nowPage);
				int cntpage = Integer.parseInt(cntPerPage);
				PagingVO vo = new PagingVO(total, Integer.parseInt(nowPage), Integer.parseInt(cntPerPage));
				model.addAttribute("paging", vo);
				model.addAttribute("aroundInfos", env.subList((nowpage-1)*cntpage, (nowpage*cntpage)>total?total:nowpage*cntpage));
				return "around";
			} catch (SQLException e) {

			}
		}
		return "destination_details";
	}

	@GetMapping(value = "/pre")
	public String pre(@RequestParam("sigun") String sigun, Model model) {
		if (sigun != null) {
			try {
				List<PresiteDto> prs = null;
				prs = presitesc.searchByAddress(sigun);
				model.addAttribute("aroundInfos", prs);
				model.addAttribute("logo", "pre");
				model.addAttribute("gu", sigun);
				model.addAttribute("info", "검사소 정보");
				return "around";
			} catch (SQLException e) {

			}
		} else {
			return "destination_details";
		}
		return "destination_details";
	}

	@GetMapping(value = "/hos")
	public String hos(@RequestParam("sigun") String sigun, Model model) {
		if (sigun != null) {
			try {
				List<HospitalDto> hos = null;
				hos = hospitalsc.searchAddress(sigun);
				model.addAttribute("aroundInfos", hos);
				model.addAttribute("logo", "hos");
				model.addAttribute("gu", sigun);
				model.addAttribute("info", "병원 정보");
				return "around";
			} catch (SQLException e) {

			}
		} else {
			return "destination_details";
		}
		return "destination_details";
	}

	@RequestMapping("/intro")
	public String intro() {
		return "intro";
	}
}
