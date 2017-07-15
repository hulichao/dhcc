package com.jeeplus.modules.demo.dao;

import java.util.List;

import com.jeeplus.common.persistence.CrudDao;
import com.jeeplus.common.persistence.annotation.MyBatisDao;
import com.jeeplus.modules.demo.entity.Demo;


@MyBatisDao
public interface DemoDao extends CrudDao<Demo>{

	Long findCount(Demo demo);
	
	List<Demo> findAllData();
	
	int delete(Demo demo);
	
}
