package com.jeeplus.modules.demo.entity;

import com.jeeplus.common.persistence.DataEntity;
import com.jeeplus.modules.oa.entity.OaNotify;

public class Test extends DataEntity<OaNotify>{
	private static final long serialVersionUID = 1L;
	
	private String name;
	private Integer age;
	private String jobs;
	private String address;
	
	
	public Test() {
		super();
	}


	public Test(String id) {
		super(id);
	}


	public Test(String name, Integer age, String jobs, String address) {
		super();
		this.name = name;
		this.age = age;
		this.jobs = jobs;
		this.address = address;
	}


	public String getName() {
		return name;
	}


	public void setName(String name) {
		this.name = name;
	}


	public Integer getAge() {
		return age;
	}


	public void setAge(Integer age) {
		this.age = age;
	}


	public String getJobs() {
		return jobs;
	}


	public void setJobs(String jobs) {
		this.jobs = jobs;
	}


	public String getAddress() {
		return address;
	}


	public void setAddress(String address) {
		this.address = address;
	}
	
}
