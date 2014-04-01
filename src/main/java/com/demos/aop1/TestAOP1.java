package com.demos.aop1;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

/**
 * User: wlai
 * Date: 3/26/14
 * Time: 10:21 AM
 */
public class TestAOP1 {
    public static void main(String[] args) {
       // ApplicationContext ctx = new ClassPathXmlApplicationContext("testAOP1.xml");
        ApplicationContext ctx = new ClassPathXmlApplicationContext("testAOP_aspectj.xml");
        RegisterController rc=(RegisterController)ctx.getBean("register")  ;
        rc.registe("laiyubin");

        TestController tc=(TestController)ctx.getBean("test")  ;

        tc.registe();

    }
}
