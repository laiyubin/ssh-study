package com.demos.aop;

import org.aopalliance.intercept.MethodInterceptor;
import org.aopalliance.intercept.MethodInvocation;

import java.lang.reflect.Method;

/**
 * User: wlai
 * Date: 3/25/14
 * Time: 4:36 PM
 */
public class AroundLogin implements MethodInterceptor {

    @Override
    public Object invoke(MethodInvocation methodInvocation) throws Throwable {
        System.out.println("before....");
        Object result=methodInvocation.proceed();
        System.out.println("after....");
        return result;
    }
}
