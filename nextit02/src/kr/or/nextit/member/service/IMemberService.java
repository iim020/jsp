package kr.or.nextit.member.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.or.nextit.exception.BizDuplicateKeyException;
import kr.or.nextit.exception.BizNotEffectedException;
import kr.or.nextit.exception.BizPasswordNotMatchedException;
import kr.or.nextit.member.vo.MemberVO;

public interface IMemberService {

	public void registerMember(MemberVO member) throws BizDuplicateKeyException, BizNotEffectedException;

	public void loginCheck(MemberVO member, HttpServletResponse response, HttpServletRequest request);
	
	public MemberVO getMember(String memId) throws BizNotEffectedException;
	
	public void passCheck(String memPass) throws BizPasswordNotMatchedException;
	
	public void memberEdit(String memPass) throws BizPasswordNotMatchedException;
	
}
