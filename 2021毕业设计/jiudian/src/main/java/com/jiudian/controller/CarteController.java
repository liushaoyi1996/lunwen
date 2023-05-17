package com.jiudian.controller;

import com.jiudian.service.ICarteService;
import com.jiudian.service.IClientService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.HashMap;
import java.util.Map;

@Controller
@RequestMapping("/carte")
public class CarteController {
    @Autowired
    ICarteService carteService;

    @RequestMapping("/select")
    @ResponseBody
    public Map select(int page, int rows,String name,String money,String type,String taste){
        Map map=new HashMap();
        map.put("pageSize",page);
        map.put("rows",rows);
        map.put("name",name);
        map.put("money",money);
        map.put("type",type);
        map.put("taste",taste);
        return carteService.select(map);
    }

    @RequestMapping("/delete")
    @ResponseBody
    public Map de(String id){
        Map<String,String> map=new HashMap<String,String>();
        map.put("id",id);
        int i=carteService.delete(map);
        if(i==1){
            map.put("success",i+"");
        }else{
            map.put("errorMsg","失败！请检查网络或联系管理员");
        }
        return map;
    }

    @RequestMapping("/add")
    @ResponseBody
    public Map add(String name,String money,String type,String taste){
        Map<String,String> map=new HashMap<String,String>();
        map.put("name",name);
        map.put("money",money);
        map.put("type",type);
        map.put("taste",taste);
        int i=carteService.add(map);
        if(i==1){
            map.put("success",i+"");
        }else{
            map.put("errorMsg","失败！请检查网络或联系管理员");
        }
        return map;
    }

    @RequestMapping("/edit")
    @ResponseBody
    public Map edit(String id,String name,String money,String type,String taste){
        Map<String,String> map=new HashMap<String,String>();
        map.put("id",id);
        map.put("name",name);
        map.put("money",money);
        map.put("type",type);
        map.put("taste",taste);
        int i=carteService.edit(map);
        if(i==1){
            map.put("success",i+"");
        }else{
            map.put("errorMsg","失败！请检查网络或联系管理员");
        }
        return map;
    }
}
