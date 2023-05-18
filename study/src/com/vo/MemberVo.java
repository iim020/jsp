package com.vo;

public class MemberVo {
	private String memId;
	private String memPass;
	private String memNm;
	
	public MemberVo() {
		super();
	}
	public MemberVo(String memId, String memPw, String memNm) {
		super();
		this.memId = memId;
		this.memPass = memPw;
		this.memNm = memNm;
	}
	@Override
	public String toString() {
		return "MemberVo [memId=" + memId + ", memPw=" + memPass + ", memNm=" + memNm + "]";
	}
	public String getMemId() {
		return memId;
	}
	public void setMemId(String memId) {
		this.memId = memId;
	}
	public String getMemPass() {
		return memPass;
	}
	public void setMemPass(String memPw) {
		this.memPass = memPw;
	}
	public String getMemNm() {
		return memNm;
	}
	public void setMemNm(String memNm) {
		this.memNm = memNm;
	}
	
	
}
