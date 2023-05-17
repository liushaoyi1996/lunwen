package com.jiudian.controller;

import com.jiudian.service.ICanteenService;
import com.jiudian.service.IKefangService;
import com.jiudian.service.imp.CanteenService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.HashMap;
import java.util.Map;

@Controller
@RequestMapping("/canteen")
public class CanteenController {
    @Autowired
    ICanteenService canteenService;

    @RequestMapping("/select")
    @ResponseBody
    public Map select(int page, int rows,String sum,String type,String level,String style,String size,String ps){
        Map map=new HashMap();
        map.put("pageSize",page);
        map.put("rows",rows);
        map.put("sum",sum);
        map.put("type",type);
        map.put("level",level);
        map.put("style",style);
        map.put("size",size);
        map.put("ps",ps);
        //return JSON.toJSONString(list);
        return canteenService.select(map);
    }

    @RequestMapping("/delete")
    @ResponseBody
    public Map de(String id){
        Map<String,String> map=new HashMap<String,String>();
        map.put("id",id);
        int i=canteenService.delete(map);
        if(i==1){
            map.put("success",i+"");
        }else{
            map.put("errorMsg","失败！请检查网络或联系管理员");
        }
        return map;
    }

    @RequestMapping("/add")
    @ResponseBody
    public Map add(String sum,String type,String level,String style,String size,String ps){
        Map<String,String> map=new HashMap<String,String>();
        map.put("sum",sum);
        map.put("type",type);
        map.put("level",level);
        map.put("style",style);
        map.put("size",size);
        map.put("ps",ps);
        if(canteenService.selectBysum(map)!=null){
            map.put("errorMsg","该房间号已存在，请更换！");
            return map;
        }
        int i=canteenService.add(map);
        if(i==1){
            map.put("success",i+"");
        }else{
            map.put("errorMsg","失败！请检查网络或联系管理员");
        }
        return map;
    }

    @RequestMapping("/edit")
    @ResponseBody
    public Map edit(String id,String sum,String type,String level,String style,String size,String ps){
        Map<String,String> map=new HashMap<String,String>();
        map.put("id",id);
        map.put("sum",sum);
        map.put("type",type);
        map.put("level",level);
        map.put("style",style);
        map.put("size",size);
        map.put("ps",ps);
        int i=canteenService.edit(map);
        if(i==1){
            map.put("success",i+"");
        }else{
            map.put("errorMsg","失败！请检查网络或联系管理员");
        }
        return map;
    }
}
