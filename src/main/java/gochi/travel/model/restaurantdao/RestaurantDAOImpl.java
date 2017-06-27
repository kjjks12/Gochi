package gochi.travel.model.restaurantdao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import gochi.travel.model.restaurantdto.RestaurantDTO;
import gochi.travel.model.restaurantdto.RestaurantDetailDTO;
import gochi.travel.model.restaurantdto.RestaurantImgDTO;

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

	@Override
	public List<RestaurantDTO> categorySelect(String classification) {
		System.out.println(classification);
		List<RestaurantDTO> list = sqlsession.selectList("restaurantMapper.selectRestaurant", classification);
		return list;
	}

	@Override
	public int readNum(int restaurantNo) {
		int result = sqlsession.update("restaurantMapper.readNumUpdate", restaurantNo);
		return result;
	}

	@Override
	public int heart(String restaurantNo) {
		
		return sqlsession.update("restaurantMapper.heartUpdate",Integer.parseInt(restaurantNo));
	}

	@Override
	public RestaurantDTO selectByRestaurantNo(String restaurantNo) {
		return sqlsession.selectOne("restaurantMapper.foodSelectNu",restaurantNo);
	}
	
	/**
	 * 맛집 디테일 페이지 : 포스트 올리기
	 * */
	@Override
	public int insertPost(RestaurantDetailDTO dto) {
		int result = sqlsession.insert("restaurantMapper.postInsert", dto);
		return result;
	}
	
	/**
	 * 맛집 디테일 페이지 : 해당 게시물 포스트 가져오기 
	 * */
	@Override
	public List<RestaurantDetailDTO> selectPost(int restaurantNo) {
		List<RestaurantDetailDTO> postList = sqlsession.selectList("restaurantMapper.selectPost", restaurantNo);
		return postList;
	}
	
	/**
	 * 업로드된 이미지 저장하기
	 * */
	@Override
	public int insertImg(RestaurantImgDTO imgDTO) {
		int result = sqlsession.insert("restaurantMapper.insertImg", imgDTO);
		return result;
	}
	
	/**
	 * 롤링 이미지 가져오기
	 * */
	@Override
	public List<RestaurantImgDTO> selectImg(int restaurantNo){
		List<RestaurantImgDTO> imgList = sqlsession.selectList("restaurantMapper.selectImg", restaurantNo);
		return imgList;
	}

	@Override
	public int selectMaxImgNo() {
		return sqlsession.selectOne("restaurantMapper.selectMaxImgNo");
	}	
	
	
}
