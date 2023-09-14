package kr.co.chazm.plusmember.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import kr.co.chazm.plusmember.service.PlusMBoardService;

@Controller
public class PlusMBoardController {

	@Autowired
	private PlusMBoardService plusMBoardService;
	
	
}
