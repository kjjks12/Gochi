package gochi.travel.restaurantservice;

import java.util.List;

import gochi.travel.model.restaurantdto.RestaurantDTO;

public interface RestaurantService {
	
	int insertRestaurant(RestaurantDTO restaurantDTO);
	List<RestaurantDTO> select();
}
