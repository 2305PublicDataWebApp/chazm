package kr.co.chazm.plusmember.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.chazm.plusmember.service.PlusMReplyService;
import kr.co.chazm.plusmember.store.PlusMReplyStore;

@Service
public class PlusMReplyServiceImpl implements PlusMReplyService{

	@Autowired
	private PlusMReplyStore plusMReplyStore;
	
}
