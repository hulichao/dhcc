package com.jeeplus.modules.debug.service;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.jeeplus.common.persistence.Page;
import com.jeeplus.common.service.CrudService;
import com.jeeplus.modules.debug.dao.CoreDao;
import com.jeeplus.modules.debug.entity.CoreEntity;

@Service
@Transactional(readOnly = true)
public class CoreService extends CrudService<CoreDao, CoreEntity> {

	public Page<CoreEntity> find(Page<CoreEntity> page, CoreEntity emp) {
		emp.setPage(page);
		page.setList(dao.findList(emp));
		return page;
	}

}
