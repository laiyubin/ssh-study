package com.lai.validator;

import com.lai.entities.User;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

/**
 * Created with IntelliJ IDEA.
 * User: Administrator
 * Date: 13-10-29
 * Time: 下午8:33
 * To change this template use File | Settings | File Templates.
 */
public class UserValidator implements Validator {
    @Override
    public boolean supports(Class<?> aClass) {
        return User.class.equals(aClass);
    }

    @Override
    public void validate(Object o, Errors errors) {
        ValidationUtils.rejectIfEmpty(errors, "name", null, "Username is empty.");
        User user = (User) o;
        if (null == user.getPassword() || "".equals(user.getPassword()))
            errors.rejectValue("password", null, "Password is empty.");
    }
}
