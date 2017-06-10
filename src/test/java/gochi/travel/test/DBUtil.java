package gochi.travel.test;

import java.io.IOException;
import java.io.Reader;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;


public class DBUtil {

	private static SqlSessionFactory factory;

	static {
		Reader reader = null;
		try {
			reader = Resources.getResourceAsReader("mapper/sqlMapConfig.xml");
			factory = new SqlSessionFactoryBuilder().build(reader);
			

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				reader.close();
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
	}
	
	
	public static SqlSession getSession(){
		return factory.openSession();
	}
	
	
	public static void closeSession(SqlSession session){
		if(session != null) session.close();
	}
	
	
	public static void closeSession(SqlSession session, boolean state){
		if(session != null){
			if(state)session.commit();
			else session.rollback();
		}
	}
	public static void main(String[] args) {

	}
}
