package com.lai.controllers;

import com.lai.entities.Role;
import com.lai.entities.User;
import com.lai.services.RoleService;
import com.lai.services.UserService;
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
import java.util.List;
import java.util.Set;

/**
 * Created with IntelliJ IDEA.
 * User: Administrator
 * Date: 13-10-20
 * Time: 下午4:30
 * To change this template use File | Settings | File Templates.
 */
@Controller
@RequestMapping("/u")
public class UserCtrl {

    @Autowired
    private UserService userService;
    @Autowired
    private RoleService roleService;

    @RequestMapping("/save")
    public String save(@Valid User user, BindingResult result, int[] roleIds,HttpServletRequest request, ModelMap model) {
        if (result.hasErrors()) {
            model.put("status", result);
            return "/user/showError";
        }
        Set roles = roleService.findByIds(roleIds);
        user.setRoles(roles);
        if (user.getId() == null || user.getId() == -1) {
            userService.save(user);
        } else {
            userService.update(user);
        }
        return this.listUser(new Page(), request, model);
    }

    @RequestMapping("/{type}/{id}")
    public String toCreateOrUpdateUser(@PathVariable String type, @PathVariable Integer id, ModelMap model) {
        List<Role> roles=roleService.findAll();
        model.put("roles",roles);
        User user = null;
        if ("new".equals(type)) {
            user = new User();
            model.put("user", user);
            return "/user/create";
        } else if ("update".equals(type)) {
            if (id != null) {
                user = userService.find(id);
                model.put("user", user);
                return "/user/update";
            }
        }

        return "/404";
    }

    @RequestMapping("/list")
    public String listUser(Page page, HttpServletRequest request, ModelMap model) {

        Page<User> result = userService.findByPage(page);
        model.addAttribute("page", result);
        return "/user/list";
    }

    @RequestMapping(value = "/{id}", method = RequestMethod.GET)
    public String userDetail(@PathVariable Integer id, ModelMap model) {
        User user = userService.find(id);
        model.put("user", user);
        return "/user/detail";
    }

    @RequestMapping(value = "/remove/{id}", method = RequestMethod.GET)
    public String remove(@PathVariable Integer id, HttpServletRequest request, ModelMap model) {
        User user = userService.find(id);
        user.setDisabled(true);
        userService.update(user);
        return this.listUser(new Page(), request, model);
    }
    @RequestMapping(value = "/roles", method = RequestMethod.POST)
    public String setRoles(int userId,HttpServletRequest request, ModelMap model) {
        User user = userService.find(userId);
        List<Role> roles=roleService.findAll();
        model.put("user",user);
        model.put("roles",roles);
        return "/user/roles";
    }

    @RequestMapping(value = "/role/set", method = RequestMethod.POST)
    public String setRoles(int[] roleIds, int userId, HttpServletRequest request, ModelMap model) {
        Set roles = roleService.findByIds(roleIds);
        User user = userService.find(userId);
        user.setRoles(roles);
        userService.update(user);
        return this.listUser(new Page(), request, model);

    }

    @InitBinder
    public void initBinder(DataBinder binder) {
//        binder.setValidator(new UserValidator());
    }
}
