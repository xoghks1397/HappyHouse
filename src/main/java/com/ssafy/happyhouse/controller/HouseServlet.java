package com.ssafy.happyhouse.controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.servlet.ServletException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ssafy.happyhouse.model.HouseDealDetailDto;
import com.ssafy.happyhouse.model.HouseDealDto;
import com.ssafy.happyhouse.model.MemberDto;
import com.ssafy.happyhouse.model.service.HouseDealService;
import com.ssafy.happyhouse.model.service.LoginService;
import com.ssafy.happyhouse.model.service.MemberService;
import com.ssafy.happyhouse.model.service.MemberServiceImpl;
import com.ssafy.util.PagingVO;
import com.ssafy.util.ParsingPrice;

@Controller
@RequestMapping("/house")
public class HouseServlet {

	@Autowired
	private HouseDealService dealService;
	@Autowired
	private MemberService memberService;

	@RequestMapping("/search")
	private String search(String search_option, String building_type, String transaction_type, String search_word,
			Model m, @RequestParam(value = "nowPage", required = false) String nowPage,
			@RequestParam(value = "cntPerPage", required = false) String cntPerPage,
			@RequestParam(value = "price", required = false) String price) throws ServletException, IOException {
		try {
			List<HouseDealDto> deals = new ArrayList<HouseDealDto>();
			int nPage = 1, cPPage = 9;

			// 현재 버전에서는 주택유형, 매매유형은 선택 불가
			if (search_option == null)
				search_option = "0";
			building_type = "0";
			transaction_type = "0";

			if (search_word != "") {
				if (search_option.equals("0")) {
					deals = dealService.searchByDong(Integer.parseInt(building_type),
							Integer.parseInt(transaction_type), search_word);
					dealService.countPop(search_word);
				} else if (search_option.equals("1")) {
					deals = dealService.searchByName(Integer.parseInt(building_type),
							Integer.parseInt(transaction_type), search_word);
				}
			}
			if (price != null) { // 가격 파싱
				ParsingPrice pp = new ParsingPrice();
				deals = pp.parsePrice(price, deals);
			}

			// 페이징 처리
			if (nowPage != null || cntPerPage != null) {
				nPage = Integer.parseInt(nowPage);
				cPPage = Integer.parseInt(cntPerPage);
			}
			PagingVO vo = new PagingVO(deals.size(), nPage, cPPage);

			HouseDealDetailDto info = dealService.searchByInfo(deals.get(0).getNo()); // 지도위치를 옮기기 위한 좌표용도
			String[] options = { search_option, building_type, transaction_type, search_word, price };
			m.addAttribute("opt", options);
			m.addAttribute("paging", vo);
			m.addAttribute("search_word", search_word);
			m.addAttribute("deals", deals.subList(0, 9));
			m.addAttribute("houseinfo", info);
		} catch (NumberFormatException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return "search";
	}

	@RequestMapping("/searchAround")
	private String search(@RequestParam(value = "id", required = false) String id, Model m) throws Exception {
		try {
			String search_word = memberService.searchById(id).getAddress().split(" ")[2];

			List<HouseDealDto> deals = new ArrayList<HouseDealDto>();
			int nPage = 1, cPPage = 9;

			deals = dealService.searchByDong(0, 0, search_word);
			dealService.countPop(search_word);

			PagingVO vo = new PagingVO(deals.size(), nPage, cPPage);

			HouseDealDetailDto info = dealService.searchByInfo(deals.get(0).getNo());
			String[] options = { "0", "0", "0", search_word };
			m.addAttribute("houseinfo", info);
			m.addAttribute("opt", options);
			m.addAttribute("paging", vo);
			m.addAttribute("search_word", search_word);
			m.addAttribute("deals", deals.subList(0, 9));
		} catch (NumberFormatException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return "search";
	}

	@RequestMapping("/houseList")
	public String boardList(PagingVO vo, Model m,
			@RequestParam(value = "search_option", required = false) String search_option,
			@RequestParam(value = "building_type", required = false) String building_type,
			@RequestParam(value = "transaction_type", required = false) String transaction_type,
			@RequestParam(value = "search_word", required = false) String search_word,
			@RequestParam(value = "nowPage", required = false) String nowPage,
			@RequestParam(value = "cntPerPage", required = false) String cntPerPage,
			@RequestParam(value = "price", required = false) String price) throws SQLException {

		try {
			int nPage = 1, cPPage = 9, total = 0;
			List<HouseDealDto> deals = new ArrayList<HouseDealDto>();

			if (search_word != "") {
				if (search_option.equals("0")) {
					deals = dealService.searchByDong(Integer.parseInt(building_type),
							Integer.parseInt(transaction_type), search_word);
				} else {
					deals = dealService.searchByName(Integer.parseInt(building_type),
							Integer.parseInt(transaction_type), search_word);
				}
			}
			if (price != "") { // 가격 파싱
				ParsingPrice pp = new ParsingPrice();
				deals = pp.parsePrice(price, deals);
			}
			total = deals.size();

			if (nowPage == null && cntPerPage == null) {
				nowPage = "1";
				cntPerPage = "9";
			} else if (nowPage == null) {
				nowPage = "1";
			} else if (cntPerPage == null) {
				cntPerPage = "9";
			}
			nPage = Integer.parseInt(nowPage);
			cPPage = Integer.parseInt(cntPerPage);


			HouseDealDetailDto info = dealService.searchByInfo(deals.get(0).getNo());
			m.addAttribute("houseinfo", info);

			vo = new PagingVO(total, nPage, cPPage);
			String[] options = { search_option, building_type, transaction_type, search_word, price };
			m.addAttribute("opt", options);
			m.addAttribute("paging", vo);
			m.addAttribute("search_word", search_word);
			m.addAttribute("deals",
					deals.subList((nPage - 1) * cPPage, (nPage * cPPage) > total ? total : nPage * cPPage));
		} catch (NumberFormatException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return "search";
	}

	@RequestMapping("/view/{no}")
	private String view(@PathVariable(name = "no") int no, Model m) throws ServletException, IOException {
		try {
			m.addAttribute("houseinfo", dealService.searchByInfo(no));
		} catch (NumberFormatException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return "searchDetail";
	}

	@RequestMapping(value = "/pop.do", method = RequestMethod.GET)
	private @ResponseBody List<String> getPop(Model m) throws ServletException, IOException, SQLException {
		return dealService.getPopular();
	}
}