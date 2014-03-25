package com.lai.controllers;

import com.lai.dao.RoleDao;
import com.lai.entities.Role;
import com.lai.entities.Role;
import com.lai.services.RoleService;
import com.lai.services.RoleService;
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
 * Role: Administrator
 * Date: 13-10-20
 * Time: 下午4:30
 * To change this template use File | Settings | File Templates.
 */
@Controller
@RequestMapping("/r")
public class RoleCtrl {

    @Autowired
    private RoleService roleService;

    @RequestMapping("/save")
    public String save(@Valid Role role, BindingResult result, HttpServletRequest request, ModelMap model) {
        if (result.hasErrors()) {
            model.put("status", result);
            return "/role/showError";
        }
        if (role.getId()==null||role.getId() == -1) {
            roleService.save(role);
        } else {
            roleService.update(role);
        }
        return this.listRole(new Page(), request, model);
    }

    @RequestMapping("/{type}/{id}")
    public String toCreateOrUpdateRole(@PathVariable String type, @PathVariable Integer id, ModelMap model) {
        Role role = null;
        if ("new".equals(type)) {
            role = new Role();
            model.put("role", role);
            return "/role/create";
        } else if ("update".equals(type)) {
            if (id != null) {
                role = roleService.find(id);
                model.put("role", role);
                return "/role/update";
            }
        }
        return "/404";
    }

    @RequestMapping("/list")
    public String listRole(Page page, HttpServletRequest request, ModelMap model) {

        Page<Role> result = roleService.findByPage(page);
        model.addAttribute("page", result);
        return "/role/list";
    }

    @RequestMapping(value = "/{id}", method = RequestMethod.GET)
    public String roleDetail(@PathVariable Integer id, ModelMap model) {
        Role role = roleService.find(id);
        model.put("role", role);
        return "/role/detail";
    }

    @RequestMapping(value = "/remove/{id}", method = RequestMethod.GET)
    public String remove(@PathVariable Integer id,HttpServletRequest request, ModelMap model) {
        Role role = roleService.find(id);
        role.setDisabled(true);
        roleService.update(role);
        return this.listRole(new Page(),request, model);
    }
    @InitBinder
    public void initBinder(DataBinder binder) {
//        binder.setValidator(new RoleValidator());
    }
}
