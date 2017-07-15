package com.jeeplus.modules.demo.web;

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
import com.jeeplus.modules.demo.entity.Demo;
import com.jeeplus.modules.demo.entity.Test;
import com.jeeplus.modules.demo.service.DemoService;
import com.jeeplus.modules.demo.service.TestService;
import com.jeeplus.modules.iim.service.MailService;

@Controller
@RequestMapping(value = "${adminPath}/core")
public class TestController extends BaseController{
	
	@Autowired
	private TestService testService;

	@RequestMapping("index")
	public ModelAndView index(){
		ModelAndView mv = new ModelAndView();
		System.out.println("测试");
		mv.setViewName("modules/core/demo");
		mv.addObject("valueA", "htllo word");
		return mv;
	}
	
	@RequestMapping(value = "data",method=RequestMethod.GET)
	@ResponseBody
	public Map<String,Object> getData(String id){
		List<Test> testList = testService.findAll();
		System.out.println(testList.size());
		Map<String,Object> map = new HashMap<String,Object>();
		map.put("items", testList);
		return map;
	}
	
	@RequestMapping(value = "add",method=RequestMethod.GET)
	@ResponseBody
	public ModelAndView add(String id){
		System.out.println("调用add方法了");
		ModelAndView mv = new ModelAndView();
		if(!Strings.isNullOrEmpty(id)){
			Test test = testService.get(id);
			System.out.println("------>传参Id"+id);
			mv.addObject("data", test);
		}	
		mv.setViewName("modules/core/demoDetail");
		return mv;
	}
	
	@RequestMapping(value = "save",method=RequestMethod.POST)
	@ResponseBody
	public Map<String,Object> save(Test test){
		testService.save(test);
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
	public Map<String,Object> del(Test test){
		testService.delete(test);
		Map<String,Object> map = new HashMap<String,Object>();
		map.put("result", "success");
		return map;
	}
}
