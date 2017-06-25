package gochi.travel.restaurantservice;

import java.util.List;

import gochi.travel.model.restaurantdto.RestaurantDTO;
import gochi.travel.model.restaurantdto.RestaurantDetailDTO;
import gochi.travel.model.restaurantdto.RestaurantImgDTO;

public interface RestaurantService {
	
	int insertRestaurant(RestaurantDTO restaurantDTO);
	List<RestaurantDTO> select();
	
	/**
	 * 맛집 디테일 페이지 포스트 올리기
	 * */
	int insertPost(RestaurantDetailDTO dto);
	
	/**
	 * 맛집 디테일 페이지 등록된 포스트 가져오기
	 * */
	List<RestaurantDetailDTO> selectPost(int restaurantNo);
	
	/**
	 * 업로드된 이미지 정보 저장하기
	 * */
	int insertImg(RestaurantImgDTO imgDTO);
	
	/**
	 * 롤링 이미지 정보 가져오기
	 * */
	List<RestaurantImgDTO> selectImg(int restaurantNo);
}
