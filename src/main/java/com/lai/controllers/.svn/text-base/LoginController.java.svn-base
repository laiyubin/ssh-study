package com.lai.controllers;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


/**
 * Created with IntelliJ IDEA.
 * User: wlai
 * Date: 7/26/13
 * Time: 1:49 PM
 * To change this template use File | Settings | File Templates.
 */
@Controller
@RequestMapping("/login")
public class LoginController {
     public static final Logger logger= LoggerFactory.getLogger(LoginController.class);
    @RequestMapping(params = "act=login")
    public String login(String name, String password) {
        logger.warn(".......slf4j");
        return "index";

    }
}
