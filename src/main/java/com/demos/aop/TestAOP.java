package com.demos.aop;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

/**
 * User: wlai
 * Date: 3/25/14
 * Time: 3:55 PM
 */
public class TestAOP {
    public static void main(String[] args) {

        ApplicationContext ctx = new ClassPathXmlApplicationContext("testAOP.xml");

        LoginController lc = (LoginController) ctx.getBean("customerServiceProxy");

        lc.login2();
        lc.login();
    }
}



