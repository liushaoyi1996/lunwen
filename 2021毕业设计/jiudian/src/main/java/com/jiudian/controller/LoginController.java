package com.jiudian.controller;

import com.jiudian.service.ILoginService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import java.util.HashMap;
import java.util.Map;

@Controller
@RequestMapping("/main")
public class LoginController {
    @Autowired
    ILoginService loginService;

    @RequestMapping("/login")
    @ResponseBody
    public Map login(String name,String psw,String sf){
        Map map=new HashMap();
        map.put("name",name);
        map.put("psw",psw);
        if(sf.equals("gk")){
            if(loginService.login2(map)==1){
                map.put("success","2");
                return map;
            }
            map.put("success","0");
            return map;
        }
        map.put("success",loginService.login(map));
        return map;
    }


    @RequestMapping("/zhuce")
    @ResponseBody
    public Map zhuce(String name,String psw,String psw2){
        Map map=new HashMap();
        if(!psw.equals(psw2)){
            map.put("success","2");
            return map;
        }
        map.put("name",name);
        map.put("psw",psw);
        int w = loginService.selectByName(map);
        System.out.println(w);
        if(w==1){
            map.put("success","3");
            return map;
        }
        map.put("success",loginService.zhuce(map));


        return map;
    }


}

