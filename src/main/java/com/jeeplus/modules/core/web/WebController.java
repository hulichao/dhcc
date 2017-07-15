package com.jeeplus.modules.core.web;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.google.common.base.Strings;
import com.jeeplus.common.web.BaseController;
import com.jeeplus.modules.core.entity.Employee;
import com.jeeplus.modules.core.service.WebService;
import com.jeeplus.modules.demo.entity.Demo;
import com.jeeplus.modules.demo.entity.Test;
import com.jeeplus.modules.demo.service.DemoService;
import com.jeeplus.modules.demo.service.TestService;
import com.jeeplus.modules.iim.service.MailService;
//用于表示是处理器类
@Controller
//请求处理器功能方法的映射规则
@RequestMapping(value = "${adminPath}/xiaohuli")
public class WebController extends BaseController{
	
	@Autowired
	private WebService webService;

	@RequestMapping("index")
	public ModelAndView index(){
		ModelAndView mv = new ModelAndView();
		System.out.println("测试");
		mv.setViewName("modules/xiaohuli/demo");
		mv.addObject("valueA", "htllo word");
		return mv;
	}
	//post查询
	@RequestMapping(value = "text",method=RequestMethod.POST)
	//处理器功能处理方法返回值作为响应体(通过HttpMessageConvert进行类型转换)
	@ResponseBody
	public Map<String,Object> getTest(String text){
		System.out.println("text="+text);
		text = "%"+text+"%";
		List<Employee> emplist = webService.findByText(text);
		Map<String,Object> map = new HashMap<String,Object>();
		map.put("items", emplist);
		System.out.println(emplist.size()+"-------------");
		return map;
	}
	@RequestMapping(value = "query",method=RequestMethod.GET)
	@ResponseBody
	public Map<String,Object> queryData(String id){
		List<Employee> empList = webService.findByText("%"+id+"%");
		System.out.println(empList.size());
		Map<String,Object> map = new HashMap<String,Object>();
		map.put("items", empList);
		return map;
	}
	@RequestMapping(value = "data",method=RequestMethod.GET)
	@ResponseBody
	public Map<String,Object> getData(String id){
		List<Employee> empList = webService.findAll();
		System.out.println(empList.size());
		Map<String,Object> map = new HashMap<String,Object>();
		map.put("items", empList);
		return map;
	}
	
	@RequestMapping(value = "add",method=RequestMethod.GET)
	@ResponseBody
	public ModelAndView add(String id){
		System.out.println("调用add方法了");
		ModelAndView mv = new ModelAndView();
		if(!Strings.isNullOrEmpty(id)){
			Employee emp = webService.get(id);
			System.out.println("------>传参Id"+id);
			mv.addObject("data", emp);
		}	
		mv.setViewName("modules/xiaohuli/demoDetail");
		return mv;
	}
	
	@RequestMapping(value = "save",method=RequestMethod.POST)
	@ResponseBody
	public Map<String,Object> save(Employee emp){
		webService.save(emp);
		Map<String,Object> map = new HashMap<String,Object>();
		map.put("result", "success");
		return map;
	}
	
//	@RequestMapping(value = "update",method=RequestMethod.POST)
//	@ResponseBody
//	public Map<String,Object> update(Demo demo){
////		demoService.save(demo);
//		Map<String,Object> map = new HashMap<String,Object>();
//		map.put("result", "success");
//		return map;
//	}
	
	@RequestMapping(value = "del",method=RequestMethod.POST)
	@ResponseBody
	public Map<String,Object> del(Employee emp){
		webService.delete(emp);
		Map<String,Object> map = new HashMap<String,Object>();
		map.put("result", "success");
		return map;
	}
}
