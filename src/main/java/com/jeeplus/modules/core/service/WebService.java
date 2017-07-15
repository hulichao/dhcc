/**
 * Copyright &copy; 2015-2020 <a href="http://www.jeeplus.org/">JeePlus</a> All rights reserved.
 */
package com.jeeplus.modules.core.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.google.common.base.Strings;
import com.jeeplus.modules.core.dao.WebDao;
import com.jeeplus.modules.core.entity.Employee;
import com.jeeplus.modules.demo.entity.Demo;

/**
 * DEMOService
 * @author xieyongkang
 * @version 2017-07-6
 */
@Service
@Transactional(readOnly = true)
public class WebService {

	@Autowired
	private WebDao webDao;

	public Employee get(String id) {
		Employee entity = webDao.get(id);
		return entity;
	}
	
	
	public List<Employee> findAll() {
		List<Employee> list = webDao.findAllData();
		return list;
	}
	public List<Employee> findByText(String text){
		List<Employee> list = webDao.findByText(text);
		return list;
	}
	/**
	 * 获取通知数目
	 * @param oaNotify
	 * @return
	 */
	public Long findCount(Employee employee) {
		return webDao.findCount(employee);
	}
	
	@Transactional(readOnly = false)
	public void save(Employee employee) {

		if (Strings.isNullOrEmpty(employee.getId())){
			employee.preInsert();
			webDao.insert(employee);
		}else{
			employee.preUpdate();
			webDao.update(employee);
		}
	
	}
	
	@Transactional(readOnly = false)
	public void delete(Employee employee) {
		webDao.delete(employee);
	}
	
}