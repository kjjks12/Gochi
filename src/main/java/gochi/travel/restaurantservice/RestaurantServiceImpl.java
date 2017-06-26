package gochi.travel.restaurantservice;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import gochi.travel.model.restaurantdao.RestaurantDAO;
import gochi.travel.model.restaurantdto.RestaurantDTO;

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

	
}
