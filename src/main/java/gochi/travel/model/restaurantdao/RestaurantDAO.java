package gochi.travel.model.restaurantdao;

import java.util.List;

import gochi.travel.model.restaurantdto.RestaurantDTO;

public interface RestaurantDAO {
	
	List<RestaurantDTO> select();
	int insertRestaurant(RestaurantDTO restaurantDTO);
	
}
