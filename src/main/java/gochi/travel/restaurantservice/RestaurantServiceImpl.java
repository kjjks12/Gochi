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
	
}
