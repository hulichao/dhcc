/**
 * Copyright &copy; 2015-2020 <a href="http://www.jeeplus.org/">JeePlus</a> All rights reserved.
 */
package com.jeeplus.modules.debug.web;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.shiro.authz.annotation.Logical;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.jeeplus.common.persistence.Page;
import com.jeeplus.common.utils.StringUtils;
import com.jeeplus.common.web.BaseController;
import com.jeeplus.modules.debug.entity.CoreEntity;
import com.jeeplus.modules.debug.service.CoreService;
import com.jeeplus.modules.oa.entity.OaNotify;



/**
 * 通知通告Controller
 * @author jeeplus
 * @version 2014-05-16
 */
@Controller
@RequestMapping(value = "${adminPath}/core/debug")
public class CoreController extends BaseController {

	@Autowired
	private CoreService coreService;
	//在每个方法执行前执行
	@ModelAttribute
	public CoreEntity get(@RequestParam(required=false) String id) {
		CoreEntity entity = null;
		if (StringUtils.isNotBlank(id)){
			entity = coreService.get(id);
		}
		if (entity == null){
			entity = new CoreEntity();
		}
		return entity;
	}
	/**
	 * 所有数据
	 */
	@RequestMapping(value = "self")
	public String selfList(CoreEntity emp, HttpServletRequest request, HttpServletResponse response, Model model) {
		
		Page<CoreEntity> page = coreService.find(new Page<CoreEntity>(request, response), emp); 
		model.addAttribute("page", page);
		//return "modules/debug/demo";
		return "modules/debug/debug";
	}
	
	/**
	 * 查看，增加，编辑报告表单页面
	 */
	@RequiresPermissions(value={"oa:oaNotify:view","oa:oaNotify:add","oa:oaNotify:edit"},logical=Logical.OR)
	@RequestMapping(value = "form")
	public String form(CoreEntity coreEntity, Model model) {
		if (StringUtils.isNotBlank(coreEntity.getId())){
			coreEntity = coreService.get(coreEntity);
		}
		model.addAttribute("coreEntity", coreEntity);
		return "modules/debug/detail";
	}
	
	@RequiresPermissions(value={"oa:oaNotify:add","oa:oaNotify:edit"},logical=Logical.OR)
	@RequestMapping(value = "save")
	public String save(CoreEntity coreEntity, Model model, RedirectAttributes redirectAttributes) {
		if (!beanValidator(model, coreEntity)){
			return form(coreEntity, model);
		}
		
		coreService.save(coreEntity);
		addMessage(redirectAttributes, "保存通知'" + coreEntity.getName() + "'成功");
		return "redirect:" + adminPath + "/core/debug/self	";
	}
	@RequiresPermissions("oa:oaNotify:del")
	@RequestMapping(value = "delete")
	public String delete(CoreEntity coreEntity, RedirectAttributes redirectAttributes) {
		coreService.delete(coreEntity);
		addMessage(redirectAttributes, "删除通知成功");
		return "redirect:" + adminPath + "/core/debug/self";
	}
}