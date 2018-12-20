package com.muzihok.web.service;

import java.util.List;

import com.muzihok.web.entity.Brand;
import com.muzihok.web.entity.DcBoard;
import com.muzihok.web.entity.Place;
import com.muzihok.web.entity.Wish;

public interface DcService {
	//혹디씨 정보 인서트 하기 , 수정하기  ,  정보 내리기   (관리자 ) )
	
	// 혹디씨 정보 리스트 , 디테일 하기 ,   (관리자,  )   ..... 카테고리별로 ... . . .. . 
	//  마이 리스트, 디씨 카테고리별로 뽑기 ㄱ,,,,,          뷰 ,. 페이징 문제 
	
	/// .... 장소로 검색  쿼리 조회 -->>> 해당 장소 ... 있는 프랜차이즈 다 뜬다. 
	
	//--->>> 이거 누르면 뭐가 나오지 ??? 찌이이잉
	
	// 찜목록 조회하기 찜목록 추가하기 , 선택한거 찜목록 없애기 . 카테고리 필터링  
	
	// 전체 브랜드 보여주기  페이징 ...  -->  카테고리 결과 보여준다. 
	
	// //select 구문 .. 통해 목록 뽑아오기  list 구현  , 위시리스트 뽑기위한 브랜드 나열하기 . 				//맵     브랜드 1
	List<Brand> getBrandList();		//브랜드 리스트 카테고리로 나눌가???   --> 위시리스트 검색할때  전체 목록 보여줄때    --->>>> 
	List<Brand> getBrandList(int page);
	List<Brand> getBrandList(int page, String category);	//	디씨 카테고리 1 2 3 4 5  몇쪽?  브랜드 여러개 필터링.  전체 면 .... select * from brand  브랜드 번호 먼저 받아와서 리스트에 담으띾 ?
				// 브랜드 번호들 목록 쿼리로 담아서.  아니면  클릭 하고 ㅈ ㅔ출 한 카테고리 번호 . ㅋ   . ㅋ  
					// 페이지 , 검색어, 기간 조건으로 조회 
	Brand getBrand(int id);						// 디테일용 (아이디를 받아서 브랜드 리턴  ) 
	int insertBrand(Brand brand);				// 입력 받은 폼 가져와서  시퀄문 추가
	int updateBrand(Brand brand);				// 음 리포트 수정은 ... 관리자의 답변 전용 
	int deleteBrand(int id);						// 관리자 권한으로 부적절한 글은 삭제
	
	//브랜드, 장소, 위시리스트 , 할인정보 전부다 ...  와 이거 엄청난데 ?? 
	List<Place> getPlaceList();			//지금위치 자동 혹은 서울시 종로구 고정 1페이지  
	List<Place> getPlaceList(int page);	//지금위치 해당하는 페이지     ...   page페이지 , 서울시 종로구 
	List<Place> getPlaceList(int page, String query);		//검색 키워드위치 + 페이지
	
	Place getPlace(int id);				// 디테일용 (id만으로 셀렉 트  ) 
	int insertPlace(Place place);				// 입력 받은 폼 가져와서  시퀄문 추가
	int updatePlace(Place place);				// 음 리포트 수정은 ... 관리자의 답변 전용 
	int deletePlace(int id);						// 관리자 권한으로 부적절한 글은 삭제
	
	List<DcBoard> getDcList(String category);
	List<DcBoard> getDcList(int page,String category);				    //page쪽 에서 , 전체 할인 검색 
	List<DcBoard> getDcList(int page,String category, String query);	//page쪽에서    query 검색
	
	DcBoard getDcBoard(int id);				// 디테일용 (id만으로 셀렉 트  ) 
	int insertDc(DcBoard dc);				// 입력 받은 폼 가져와서  시퀄문 추가
	int updateDc(DcBoard dc);				// 음 리포트 수정은 ... 관리자의 답변 전용 
	int deleteDc(int id);						// 관리자 권한으로 부적절한 글은 삭제
	
	List<Wish> getWishList();						//찜목록 조회하기 ... 내 찜목록 .(1 페이지 , 전체 브랜드 ) 
	List<Wish> getWishList(int page);				//찜목록 조회하기 ... 내 찜목록 .(page 페이지 , 전체 브랜드 )
	List<Wish> getWishList(int page, String category); // 찜목록 조회하기 ... 내 찜목록 . (page 페이지, 
	//select * from wish where brand=? or brand = ? or brand = ? or brand =? or
	//찜목록 . 브르ㅐㄴ드가 1페이지 , 전체 브랜드 .... 1,2,3,4,5,6 1,2,3,4,5,6, 
	// 1,2,3,4,5,6,    
	Wish getWish(int id);				// 디테일용 (id만으로 셀렉 트  )      
	int insertWish(Wish wish);				// 입력 받은 폼 가져와서  시퀄문 추가
	int deleteWish(int id);						// 관리자 권한으로 부적절한 글은 삭제
	//브랜드 씨알유디 
	//장소 씨알유디 
	// 위시리스트 씨알유디 
	// 할인정보 씨알유디 
	//NoticeView getNoticeView(int id);
	 
	//글 올리기 , 글 조회하기 ,   , ......... ... .. .. .. ..  
	
	//관리자 ,,,, 글 조회하기 ....   답글 달기   
	
}
