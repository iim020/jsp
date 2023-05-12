package com.vo;

public class MemberVo {
	private String memId;
	private String memPw;
	private String memNm;
	
	public MemberVo() {
		super();
	}
	public MemberVo(String memId, String memPw, String memNm) {
		super();
		this.memId = memId;
		this.memPw = memPw;
		this.memNm = memNm;
	}
	@Override
	public String toString() {
		return "MemberVo [memId=" + memId + ", memPw=" + memPw + ", memNm=" + memNm + "]";
	}
	public String getMemId() {
		return memId;
	}
	public void setMemId(String memId) {
		this.memId = memId;
	}
	public String getMemPw() {
		return memPw;
	}
	public void setMemPw(String memPw) {
		this.memPw = memPw;
	}
	public String getMemNm() {
		return memNm;
	}
	public void setMemNm(String memNm) {
		this.memNm = memNm;
	}
	
	
}
