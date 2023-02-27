package ch05.config;

import java.io.InputStream;


import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class Configuration {
	private static SqlSessionFactory sqlSessionFactory;
	
	static {
		try {
			InputStream stream = Resources.getResourceAsStream("ch05/config/sqlMapConfig.xml");
			sqlSessionFactory = new SqlSessionFactoryBuilder().build(stream);
		} catch(Exception e) {
			e.printStackTrace();
		}
	}
	
	public static <T> T getMapper(Class<T> arg) {
		return sqlSessionFactory.openSession(true).getMapper(arg);
	}
}
