package ch05.dao.map;


import org.apache.ibatis.annotations.Param;

import ch05.domain.Employee;

public interface EmployeeMap {
	Employee selectEmployee(@Param("employeeId")int employeeId);
}
