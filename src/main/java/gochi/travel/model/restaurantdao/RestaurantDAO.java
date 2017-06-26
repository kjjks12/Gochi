package gochi.travel.model.restaurantdao;

import java.util.List;

import gochi.travel.model.restaurantdto.RestaurantDTO;

public interface RestaurantDAO {
	
	List<RestaurantDTO> select();
	List<RestaurantDTO> categorySelect(String classification);
	int insertRestaurant(RestaurantDTO restaurantDTO);
	int readNum(int restaurantNo);
	int heart(String restaurantNo);
	RestaurantDTO selectByRestaurantNo(String restaurantNo);
	
}
