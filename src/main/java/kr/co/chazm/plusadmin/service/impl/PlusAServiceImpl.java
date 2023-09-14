package kr.co.chazm.plusadmin.service.impl;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.chazm.plusadmin.service.PlusAService;
import kr.co.chazm.plusadmin.store.PlusAStore;

@Service
public class PlusAServiceImpl implements PlusAService{
	
	@Autowired
	private SqlSession sqlSession;
	@Autowired
	private PlusAStore plusAStore;

}
