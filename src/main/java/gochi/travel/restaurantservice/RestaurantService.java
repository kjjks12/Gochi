package gochi.travel.restaurantservice;

import java.util.List;

import gochi.travel.model.restaurantdto.RestaurantDTO;
import gochi.travel.model.restaurantdto.RestaurantDetailDTO;
import gochi.travel.model.restaurantdto.RestaurantImgDTO;

public interface RestaurantService {
	
	/**
	 * 맛집 list 뿌려주기
	 */
	int insertRestaurant(RestaurantDTO restaurantDTO);
	
	/**
	 * 카테고리 별 list 뿌려주기
	 */
	List<RestaurantDTO> select();
	
	/**
	 * 맛집 등록 하기
	 */
	List<RestaurantDTO> categorySelect(String classification);
	
	/**
	 * 해당 맛집에 대한 조회수 올리기
	 */
	int readNum(int restaurantNo);
	
	
	RestaurantDTO heart(String restaurantNo, boolean state)throws Exception;

	
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
	
	/**
	 * 저장되어있는 이미지 넘버의 최대값 가져오기
	 */
	int selectMaxImgNo();

}
 