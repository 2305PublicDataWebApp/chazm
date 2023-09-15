package kr.co.chazm.plusmember.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import kr.co.chazm.plusmember.service.PlusMReplyService;

@Controller
public class PlusMReplyController {

	@Autowired
	private PlusMReplyService plusMReplyService;
}
