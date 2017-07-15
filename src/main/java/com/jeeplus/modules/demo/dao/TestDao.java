package com.jeeplus.modules.demo.dao;

import java.util.List;

import com.jeeplus.common.persistence.CrudDao;
import com.jeeplus.common.persistence.annotation.MyBatisDao;
import com.jeeplus.modules.demo.entity.Demo;
import com.jeeplus.modules.demo.entity.Test;


@MyBatisDao
public interface TestDao extends CrudDao<Test>{

	Long findCount(Test test);
	
	List<Test> findAllData();
	
	int delete(Test test);
	
}
