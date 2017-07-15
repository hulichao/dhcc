/**
 * Copyright &copy; 2015-2020 <a href="http://www.jeeplus.org/">JeePlus</a> All rights reserved.
 */
package com.jeeplus.modules.demo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.google.common.base.Strings;
import com.jeeplus.modules.demo.dao.DemoDao;
import com.jeeplus.modules.demo.dao.TestDao;
import com.jeeplus.modules.demo.entity.Demo;
import com.jeeplus.modules.demo.entity.Test;

/**
 * DEMOService
 * @author xieyongkang
 * @version 2017-07-6
 */
@Service
@Transactional(readOnly = true)
public class TestService {

	@Autowired
	private TestDao testDao;

	public Test get(String id) {
		Test entity = testDao.get(id);
		return entity;
	}
	
	
	public List<Test> findAll() {
		List<Test> list = testDao.findAllData();
		return list;
	}
	
	/**
	 * 获取通知数目
	 * @param oaNotify
	 * @return
	 */
	public Long findCount(Test test) {
		return testDao.findCount(test);
	}
	
	@Transactional(readOnly = false)
	public void save(Test test) {

		if (Strings.isNullOrEmpty(test.getId())){
			test.preInsert();
			testDao.insert(test);
		}else{
			test.preUpdate();
			testDao.update(test);
		}
	
	}
	
	@Transactional(readOnly = false)
	public void delete(Test test) {
		testDao.delete(test);
	}
	
}