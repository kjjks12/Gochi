package gochi.travel.restaurantservice;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import gochi.travel.model.restaurantdao.RestaurantDAO;
import gochi.travel.model.restaurantdto.RestaurantDTO;
import gochi.travel.model.restaurantdto.RestaurantDetailDTO;
import gochi.travel.model.restaurantdto.RestaurantImgDTO;

@Service
public class RestaurantServiceImpl implements RestaurantService {
	
	@Autowired
	private RestaurantDAO restaurantDAO;
	
	@Override
	public int insertRestaurant(RestaurantDTO restaurantDTO) {	
		
		System.out.println("서비스 접속");
		int result = restaurantDAO.insertRestaurant(restaurantDTO);
		System.out.println("서비스 결과 " + result);
		return result;
	}

	@Override
	public List<RestaurantDTO> select() {
		List<RestaurantDTO> list = restaurantDAO.select();
		return list;
	}

	/**
	 * 맛집 디테일 페이지 : 포스트 올리기
	 * */
	@Override
	public int insertPost(RestaurantDetailDTO dto) {
		int result = restaurantDAO.insertPost(dto);
		return result;
	}
	
	/**
	 * 맛집 디테일 페이지 : 해당 게시물 포스트 가져오기
	 * */
	@Override
	public List<RestaurantDetailDTO> selectPost(int restaurantNo) {
		List<RestaurantDetailDTO> list = restaurantDAO.selectPost(restaurantNo);
		return list;
	}
	
	
	/**
	 * 업로드된 이미지 저장하기
	 * */
	@Override
	public int insertImg(RestaurantImgDTO imgDTO) {
		int result = restaurantDAO.insertImg(imgDTO);
		return result;
	}
	
	/**
	 * 롤링 이미지 가져오기
	 * */
	@Override
	public List<RestaurantImgDTO> selectImg(int restaurantNo) {
		List<RestaurantImgDTO> imgList = restaurantDAO.selectImg(restaurantNo);
		return imgList;
	}
	
}
