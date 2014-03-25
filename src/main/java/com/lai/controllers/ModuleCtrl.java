package com.lai.controllers;

import com.lai.dao.ModuleDao;
import com.lai.dao.ModuleDao;
import com.lai.entities.Module;
import com.lai.entities.Module;
import com.lai.services.ModuleService;
import com.lai.utils.Page;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.validation.DataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

/**
 * Created with IntelliJ IDEA.
 * Module: Administrator
 * Date: 13-10-20
 * Time: 下午4:30
 * To change this template use File | Settings | File Templates.
 */
@Controller
@RequestMapping("/m")
public class ModuleCtrl {

    @Autowired
    private ModuleService moduleService;

    @RequestMapping("/save")
    public String save(@Valid Module module, BindingResult result, HttpServletRequest request, ModelMap model) {
        if (result.hasErrors()) {
            model.put("status", result);
            return "/module/showError";
        }
        if (module.getId()==null||module.getId() == -1) {
            moduleService.save(module);
        } else {
            moduleService.update(module);
        }
        return this.listModule(new Page(),request, model);
    }

    @RequestMapping("/{type}/{id}")
    public String toCreateOrUpdateModule(@PathVariable String type, @PathVariable Integer id, ModelMap model) {
        Module module = null;
        if ("new".equals(type)) {
            module = new Module();
            model.put("module", module);
            return "/module/create";
        } else if ("update".equals(type)) {
            if (id != null) {
                module = moduleService.find(id);
                model.put("module", module);
                return "/module/update";
            }
        }
        return "/404";
    }

    @RequestMapping("/list")
    public String listModule(Page page, HttpServletRequest request, ModelMap model) {

        Page<Module> result = moduleService.findByPage(page);
        model.addAttribute("page", result);
        return "/module/list";
    }

    @RequestMapping(value = "/{id}", method = RequestMethod.GET)
    public String moduleDetail(@PathVariable Integer id, ModelMap model) {
        Module module = moduleService.find(id);
        model.put("module", module);
        return "/module/detail";
    }

    @RequestMapping(value = "/remove/{id}", method = RequestMethod.GET)
    public String remove(@PathVariable Integer id,HttpServletRequest request, ModelMap model) {
        Module module = moduleService.find(id);
        module.setDeleted(true);
        moduleService.update(module);
        return this.listModule(new Page(),request, model);
    }
    @InitBinder
    public void initBinder(DataBinder binder) {
//        binder.setValidator(new ModuleValidator());
    }
}
