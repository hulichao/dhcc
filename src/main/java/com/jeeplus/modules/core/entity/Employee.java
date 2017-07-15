package com.jeeplus.modules.core.entity;

import com.jeeplus.common.persistence.DataEntity;
import com.jeeplus.common.utils.IdGen;
import com.jeeplus.modules.oa.entity.OaNotify;

public class Employee extends DataEntity<OaNotify>{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String id;
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	private String num;
	private String name;
	
	public Employee(String num, String name, int age, String works) {
		super();
		this.num = num;
		this.name = name;
		this.age = age;
		this.works = works;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	private int age;
	private String works;
	public String getNum() {
		return num;
	}
	public void setNum(String num) {
		this.num = num;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public String getWorks() {
		return works;
	}
	public void setWorks(String works) {
		this.works = works;
	}
	public Employee() {
		super();
	}
	
}
