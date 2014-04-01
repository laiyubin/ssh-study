package com.demos.aop1;

import org.springframework.stereotype.Component;

/**
 * User: wlai
 * Date: 3/26/14
 * Time: 11:37 AM
 */
@Component("test")
public class TestController {
    public void registe(){
        System.out.println("just test");
    }
}
