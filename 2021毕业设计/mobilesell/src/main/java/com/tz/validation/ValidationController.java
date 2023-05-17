package com.tz.validation;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.validation.ObjectError;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.validation.Valid;
import java.util.HashMap;
import java.util.Map;

@Controller
public class ValidationController {

    @RequestMapping(value = "/validation", method = RequestMethod.POST)
    //如果要验证,则添加@Valid
    public String test(Model model, @Valid User user, BindingResult bindingResult) {
        if (bindingResult.hasErrors()) {
            model.addAttribute("user", user);
            model.addAttribute("errors", getErrorMap(bindingResult));
            return "/register.jsp";
        }
        model.addAttribute("user", user);
        return "/result.jsp";
    }

    /**
     * 将参数错误信息封装到 map
     */
    private Object getErrorMap(BindingResult bindingResult) {
        Map<String, String> errorMap = new HashMap<>();
        for (ObjectError objectError : bindingResult.getAllErrors()) {
            FieldError fieldError = (FieldError) objectError;
            String field = fieldError.getField();
            String error = fieldError.getDefaultMessage();
            errorMap.put(field, error);
        }
        return errorMap;
    }
}
