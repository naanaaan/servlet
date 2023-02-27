package ch05.dao;

import java.time.LocalDate;

import ch05.config.Configuration;
import ch05.dao.map.TodayMap;
import ch05.domain.Employee;

public class TodayDaoImpl implements TodayDao{
	private TodayMap todayMap;
	

	public TodayDaoImpl() {
		this.todayMap = Configuration.getMapper(TodayMap.class);
	}


	@Override
	public LocalDate selectToday() {
		return todayMap.selectToday();
	}


	@Override
	public Employee selectEmployee(int employeeId) {
	
		return todayMap.selectEmployee(employeeId);
	}

}
