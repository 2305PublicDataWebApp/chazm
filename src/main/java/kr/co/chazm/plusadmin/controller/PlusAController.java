package kr.co.chazm.plusadmin.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import kr.co.chazm.plusadmin.service.PlusAService;

@Controller
public class PlusAController {
	
	@Autowired
	private PlusAService plusAService;
	
	@RequestMapping(value="/plusA/insert.do", method=RequestMethod.GET)
	public ModelAndView showInsertPlusAForm(ModelAndView mv) {
		mv.setViewName("plusA/plusAinsert");
		return mv;
	}
	
	@RequestMapping(value="/plusA/list.do", method=RequestMethod.GET)
	public ModelAndView showPlusABoardList(ModelAndView mv) {
		mv.setViewName("plusA/plusA");
		return mv;
	}
}
