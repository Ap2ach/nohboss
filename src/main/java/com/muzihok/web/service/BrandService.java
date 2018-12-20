package com.muzihok.web.service;

import java.util.List;

import com.muzihok.web.entity.Report;

public interface BrandService {
	//혹디씨 정보 인서트 하기 , 수정하기  ,  정보 내리기   (관리자 ) )
	
	// 혹디씨 정보 리스트 , 디테일 하기 ,   (관리자,  )   ..... 카테고리별로 ... . . .. . 
	//  마이 리스트, 디씨 카테고리별로 뽑기 ㄱ,,,,,          뷰 ,. 페이징 문제 
	
	/// .... 장소로 검색  쿼리 조회 -->>> 해당 장소 ... 있는 프랜차이즈 다 뜬다. 
	
	//--->>> 이거 누르면 뭐가 나오지 ??? 찌이이잉
	
	// 찜목록 조회하기 찜목록 추가하기 , 선택한거 찜목록 없애기 . 카테고리 필터링  
	
	// 전체 브랜드 보여주기  페이징 ...  -->  카테고리 결과 보여준다. 
	
	// //select 구문 .. 통해 목록 뽑아오기  list 구현  ,
	List<Report> getList();
	List<Report> getList(int page);
	List<Report> getList(int page, String query);
	List<Report> getList(int page, String query, int date); 
					// 페이지 , 검색어, 기간 조건으로 조회 
	
	//브랜드, 장소, 위시리스트 , 할인정보 전부다 ...  와 이거 엄청난데 ?? 
	 
	//브랜드 씨알유디 
	//장소 씨알유디 
	// 위시리스트 씨알유디 
	// 할인정보 씨알유디 
	//NoticeView getNoticeView(int id);
	Report getNotice(int id);				// 디테일용 (id만으로 셀렉 트  ) 
	int insert(Report notice);				// 입력 받은 폼 가져와서  시퀄문 추가
	int update(Report notice);				// 음 리포트 수정은 ... 관리자의 답변 전용 
	int delete(int id);						// 관리자 권한으로 부적절한 글은 삭제 
	//글 올리기 , 글 조회하기 ,   , ......... ... .. .. .. ..  
	
	//관리자 ,,,, 글 조회하기 ....   답글 달기   
	
}
