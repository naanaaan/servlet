package ch05.dao.map;

import java.time.LocalDate;

import org.apache.ibatis.annotations.Param;

import ch05.domain.Employee;

public interface TodayMap {
	LocalDate selectToday();
	Employee selectEmployee(@Param("employeeId")int employeeId);
}
