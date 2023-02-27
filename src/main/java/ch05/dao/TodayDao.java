package ch05.dao;

import java.time.LocalDate;

import ch05.domain.Employee;

public interface TodayDao {
		LocalDate selectToday();
		Employee selectEmployee(int employeeId);
}
