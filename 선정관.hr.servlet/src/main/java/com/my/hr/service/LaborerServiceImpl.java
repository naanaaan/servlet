package com.my.hr.service;

import java.time.LocalDate;
import java.util.List;

import com.my.hr.dao.LaborerDao;
import com.my.hr.domain.Laborer;
import com.my.hr.domain.NoneException;

public class LaborerServiceImpl implements LaborerService {
	private LaborerDao laborerDao;
	
	
	public LaborerServiceImpl(LaborerDao laborerDao) {
		this.laborerDao = laborerDao;
	}
	@Override
	public List<Laborer> getLaborers() {
		return laborerDao.selectLaborers();
	}
	
	@Override
	public void addLaborer(String laborerName, LocalDate hireDate) {
		laborerDao.insertLaborer(laborerName, hireDate);
	}
	
	/*Exception을 단계별로 throws하여 더블체크, 트리플체크 시킨다.*/
	@Override
	public void fixLaborer(Laborer laborer) throws NoneException {
		laborerDao.updateLaborer(laborer);
	}
	
	@Override
	public void delLaborer(int laborerId) throws NoneException {
		laborerDao.deleteLaborer(laborerId);
	}
}
