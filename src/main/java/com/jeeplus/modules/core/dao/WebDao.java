package com.jeeplus.modules.core.dao;

import java.util.List;

import com.jeeplus.common.persistence.CrudDao;
import com.jeeplus.common.persistence.annotation.MyBatisDao;
import com.jeeplus.modules.core.entity.Employee;
import com.jeeplus.modules.demo.entity.Demo;


@MyBatisDao
public interface WebDao extends CrudDao<Employee>{

	Long findCount(Employee employee);
	
	List<Employee> findAllData();
	
	int delete(Employee employee);

	List<Employee> findByText(String text);
	
}
