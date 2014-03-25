import org.springframework.aop.MethodBeforeAdvice;

import java.lang.reflect.Method;

/**
 * User: wlai
 * Date: 3/25/14
 * Time: 4:06 PM
 */
public class BeforeLoginService implements MethodBeforeAdvice{

    @Override
    public void before(Method method, Object[] objects, Object o) throws Throwable {
        System.out.println("before login...");
    }
}
