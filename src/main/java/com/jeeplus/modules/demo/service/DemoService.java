/**
 * Copyright &copy; 2015-2020 <a href="http://www.jeeplus.org/">JeePlus</a> All rights reserved.
 */
package com.jeeplus.modules.demo.service;

import java.util.List;

import com.jeeplus.common.persistence.Page;
import com.jeeplus.common.service.CrudService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.google.common.base.Strings;
import com.jeeplus.modules.demo.dao.DemoDao;
import com.jeeplus.modules.demo.entity.Demo;

/**
 * DEMOService
 * @author xieyongkang
 * @version 2017-07-6
 */
@Service
@Transactional(readOnly = true)
public class DemoService extends CrudService<DemoDao, Demo> {

	@Autowired
	private DemoDao demoDao;

	public Demo get(String id) {
		Demo entity = demoDao.get(id);
		return entity;
	}
	
	
	public List<Demo> findAll() {
		List<Demo> list = demoDao.findAllData();
		return list;
	}
	public Page<Demo> findPage(Page<Demo> page, Demo demo){
		return super.findPage(page, demo);
	}
	/**
	 * 获取通知数目
	 * @param oaNotify
	 * @return
	 */
	public Long findCount(Demo demo) {
		return demoDao.findCount(demo);
	}
	
	@Transactional(readOnly = false)
	public void save(Demo demo) {

		if (Strings.isNullOrEmpty(demo.getId())){
			demo.preInsert();
			demoDao.insert(demo);
		}else{
			demo.preUpdate();
			demoDao.update(demo);
		}
	
	}
	
	@Transactional(readOnly = false)
	public void delete(Demo demo) {
		demoDao.delete(demo);
	}
	
}