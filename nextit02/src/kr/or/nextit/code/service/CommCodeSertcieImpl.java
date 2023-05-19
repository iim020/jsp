package kr.or.nextit.code.service;

import java.util.List;

import kr.or.nextit.code.vo.CodeVO;

public class CommCodeSertcieImpl implements ICommCodeService {

		ICommCodeDao commCodeDao = new CommCodeDaoImpi();
	
	
	@Override
	public List<CodeVO> getCodeListByParent(String commParent) {
		// TODO Auto-generated method stub
		
		commCodeDao.getCodeList getCodeListByParent(commParent);
		
	
		
		return null;
	}


	
	
}
