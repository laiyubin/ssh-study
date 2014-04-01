package com.demos.aop;

import org.springframework.aop.AfterReturningAdvice;

import java.lang.reflect.Method;

/**
 * User: wlai
 * Date: 3/25/14
 * Time: 4:35 PM
 */
public class AfterLoginService implements AfterReturningAdvice {
    @Override
    public void afterReturning(Object o, Method method, Object[] objects, Object o2) throws Throwable {
        System.out.println("after login....");
    }
}
