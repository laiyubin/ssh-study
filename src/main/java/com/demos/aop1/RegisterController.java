package com.demos.aop1;

import org.springframework.stereotype.Component;

/**
 * User: wlai
 * Date: 3/26/14
 * Time: 10:12 AM
 */
@Component("register")
public class RegisterController {
    public void registe(String name){
        System.out.println("add new user "+name);
    }
}
