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
		return result;
	}

	@Override
	public List<RestaurantDTO> select() {
		List<RestaurantDTO> list = restaurantDAO.select();
		return list;
	}

	@Override
	public List<RestaurantDTO> categorySelect(String classification) {
		List<RestaurantDTO> list = restaurantDAO.categorySelect(classification);
		return list;
	}

	@Override
	public int readNum(int restaurantNo) {
		int result  = restaurantDAO.readNum(restaurantNo);	
		return result;

	}

	@Override
	public RestaurantDTO heart(String restaurantNo, boolean state)throws Exception {
		if(state) {
			int result = restaurantDAO.heart(restaurantNo);
			if(result == 0 ) {
				throw new Exception("좋아요 증가 실패 입니다.");
			}
		}
		return restaurantDAO.selectByRestaurantNo(restaurantNo);
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

	@Override
	public int selectMaxImgNo() {
		return restaurantDAO.selectMaxImgNo();
	}
	
	
	
}
