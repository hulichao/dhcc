package com.jeeplus.modules.demo.web;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.jeeplus.common.persistence.Page;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.google.common.base.Strings;
import com.jeeplus.common.web.BaseController;
import com.jeeplus.modules.demo.entity.Demo;
import com.jeeplus.modules.demo.service.DemoService;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@Controller
@RequestMapping(value = "${adminPath}/demo")
public class DemoController extends BaseController{
	
	@Autowired
	private DemoService demoService;

	@RequestMapping("index")
	public ModelAndView index(){
		ModelAndView mv = new ModelAndView();
		System.out.println("测试");
		mv.setViewName("modules/demo/demo");
		mv.addObject("valueA", "htllo word");
		return mv;
	}


	public Map<String,Object> getData(){
		List<Demo> demoList = demoService.findAll();
		System.out.println(demoList.size());
		Map<String,Object> map = new HashMap<String,Object>();
		map.put("items", demoList);
		return map;
	}
	@RequestMapping(value = "data",method=RequestMethod.GET)
	@ResponseBody
	public Map<String,Object> list(HttpServletRequest request, HttpServletResponse response) {
		Demo demo = new Demo();
		Page<Demo> page = demoService.findPage(new Page<Demo>(request, response,true), demo);
		Map<String,Object> map = new HashMap<>();
		map.put("items",page.getList());
		map.put("totalCount",page.getCount());
		return map;
	}
		@RequestMapping(value = "add",method=RequestMethod.GET)
	@ResponseBody
	public ModelAndView add(String id){
		ModelAndView mv = new ModelAndView();
		if(!Strings.isNullOrEmpty(id)){
			Demo demo = demoService.get(id);
			mv.addObject("data", demo);
		}
		mv.setViewName("modules/demo/demoDetail");
		return mv;
	}
	
	@RequestMapping(value = "save",method=RequestMethod.POST)
	@ResponseBody
	public Map<String,Object> save(Demo demo){
		demoService.save(demo);
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
	public Map<String,Object> del(Demo demo){
		demoService.delete(demo);
		Map<String,Object> map = new HashMap<String,Object>();
		map.put("result", "success");
		return map;
	}
}
