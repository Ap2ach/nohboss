package com.muzihok.web.entity;

import java.util.Date;

public class Wish {
	private int id;					//찜목록 시퀀스 ... 따로 빼자 . 
	private String memberId;		//멤버 아이디 ....  회원이랑 연결 가능 
	private String brandName;		//브랜드명 , 브랜드 테이블이랑 연결 ,,,(여기서 카테고리 가져가? ) 
	private Date regDate;			//등록날짜 그냥 가져왔어 . 
	
	//insert
	public Wish(String memberId, String brandName) {
		this.memberId = memberId;
		this.brandName = brandName;
	}
	//select
	public Wish(int id, String memberId, String brandName, Date regDate) {
		
		this.id = id;
		this.memberId = memberId;
		this.brandName = brandName;
		this.regDate = regDate;
	}
	@Override
	public String toString() {
		return "WishList [id=" + id + ", memberId=" + memberId + ", brandName=" + brandName + ", regDate=" + regDate
				+ "]";
	}
	
	
}
