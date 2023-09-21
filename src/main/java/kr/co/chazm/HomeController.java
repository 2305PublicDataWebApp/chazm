package kr.co.chazm;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.co.chazm.plusadmin.service.PlusAService;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	@Autowired
	private PlusAService plusAService;
	
	@RequestMapping(value = "/main.do", method = RequestMethod.GET)
	public String showIndexInfo(Model model) {
		int totalMember = plusAService.selectTotalMember();
		int totalBoard = plusAService.selectTotalBoard();
		int totalGetY = plusAService.selectTotalGetY();
		model.addAttribute("totalMember", totalMember);
		model.addAttribute("totalBoard", totalBoard);
		model.addAttribute("totalGetY", totalGetY);
		return "home";
	}
	
	@RequestMapping(value = "/chazmInfo/chazmInfo.do", method = RequestMethod.GET)
	public String showChazmInfo() {
		return "chazmInfo/chazmInfo";
	}
}
