package com.demos.aop1;

import org.aspectj.lang.annotation.After;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.springframework.stereotype.Component;

/**
 * User: wlai
 * Date: 3/26/14
 * Time: 10:13 AM
 */
@Aspect
@Component
public class RegisterHelper {
    @Before("execution(* com..*Controller.registe(..))")
    public void inputName() {
        System.out.println("please input name...");
    }

    @After("execution(* com..*Controller.registe(..))")
    public void afterRegiste() {
        System.out.println("welcome....");
    }
}
