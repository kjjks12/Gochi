package gochi.travel.model.restaurantdao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import gochi.travel.model.restaurantdto.RestaurantDTO;

@Repository
public class RestaurantDAOImpl implements RestaurantDAO {
	
	@Autowired
	private SqlSession sqlsession;

	@Override
	public int insertRestaurant(RestaurantDTO restaurantDTO) {
		System.out.println("다오접속");
		int result = sqlsession.insert("restaurantMapper.insertRestaurant", restaurantDTO);
		return result;
	}

	@Override
	public List<RestaurantDTO> select() {
		List<RestaurantDTO> list =  sqlsession.selectList("restaurantMapper.selectRestaurant");
		return list;
	}	
}
