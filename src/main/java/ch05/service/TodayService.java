package ch05.service;

import java.time.LocalDate;

import ch05.domain.Employee;

public interface TodayService {
	LocalDate getToday();
	Employee getEmployee(int employeeId);
}
