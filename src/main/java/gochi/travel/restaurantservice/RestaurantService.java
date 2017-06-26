package gochi.travel.restaurantservice;

import java.util.List;

import gochi.travel.model.restaurantdto.RestaurantDTO;

public interface RestaurantService {
	
	int insertRestaurant(RestaurantDTO restaurantDTO);
	List<RestaurantDTO> select();
	List<RestaurantDTO> categorySelect(String classification);
	int readNum(int restaurantNo);
	RestaurantDTO heart(String restaurantNo, boolean state)throws Exception;
}
 