package com.muzihok.web.service.jdbc;

import java.util.List;

import com.muzihok.web.entity.Brand;
import com.muzihok.web.entity.DcBoard;
import com.muzihok.web.entity.Place;
import com.muzihok.web.entity.Wish;
import com.muzihok.web.service.DcService;

public class JdbcDcService implements DcService {

	@Override
	public List<Brand> getBrandList() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Brand> getBrandList(int page) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Brand> getBrandList(int page, String category) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Brand getBrand(int id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int insertBrand(Brand brand) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int updateBrand(Brand brand) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int deleteBrand(int id) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<Place> getPlaceList() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Place> getPlaceList(int page) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Place> getPlaceList(int page, String query) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Place getPlace(int id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int insertPlace(Place place) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int updatePlace(Place place) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int deletePlace(int id) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<DcBoard> getDcList(String category) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<DcBoard> getDcList(int page, String category) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<DcBoard> getDcList(int page, String category, String query) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public DcBoard getDcBoard(int id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int insertDc(DcBoard dc) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int updateDc(DcBoard dc) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int deleteDc(int id) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<Wish> getWishList() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Wish> getWishList(int page) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Wish> getWishList(int page, String category) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Wish getWish(int id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int insertWish(Wish wish) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int deleteWish(int id) {
		// TODO Auto-generated method stub
		return 0;
	}

}
