package com.jiudian.controller;

import com.jiudian.service.IClientService;
import com.jiudian.service.IPersonService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.HashMap;
import java.util.Map;

@Controller
@RequestMapping("/client")
public class ClientController {
    @Autowired
    IClientService clientService;

    @RequestMapping("/select")
    @ResponseBody
    public Map select(int page, int rows,String name,String sex,String number,String phone,String ps){
        Map map=new HashMap();
        map.put("pageSize",page);
        map.put("rows",rows);
        map.put("name",name);
        map.put("sex",sex);
        map.put("number",number);
        map.put("phone",phone);
        map.put("ps",ps);
        return clientService.select(map);
    }

    @RequestMapping("/delete")
    @ResponseBody
    public Map de(String id){
        Map<String,String> map=new HashMap<String,String>();
        map.put("id",id);
        int i=clientService.delete(map);
        if(i==1){
            map.put("success",i+"");
        }else{
            map.put("errorMsg","失败！请检查网络或联系管理员");
        }
        return map;
    }

    @RequestMapping("/add")
    @ResponseBody
    public Map add(String name,String sex,String number,String phone,String ps){
        Map<String,String> map=new HashMap<String,String>();
        map.put("name",name);
        map.put("sex",sex);
        map.put("number",number);
        map.put("phone",phone);
        map.put("ps",ps);
        int i=clientService.add(map);
        if(i==1){
            map.put("success",i+"");
        }else{
            map.put("errorMsg","失败！请检查网络或联系管理员");
        }
        return map;
    }

    @RequestMapping("/edit")
    @ResponseBody
    public Map edit(String id,String name,String sex,String number,String phone,String ps){
        Map<String,String> map=new HashMap<String,String>();
        map.put("id",id);
        map.put("name",name);
        map.put("sex",sex);
        map.put("number",number);
        map.put("phone",phone);
        map.put("ps",ps);
        int i=clientService.edit(map);
        if(i==1){
            map.put("success",i+"");
        }else{
            map.put("errorMsg","失败！请检查网络或联系管理员");
        }
        return map;
    }
}
