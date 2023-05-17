package com.jiudian.controller;

import com.jiudian.service.ICarteService;
import com.jiudian.service.IDingdanService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.HashMap;
import java.util.Map;

@Controller
@RequestMapping("/dingdan")
public class DingdanController {
    @Autowired
    IDingdanService dingdanService;

    @RequestMapping("/select")
    @ResponseBody
    public Map select(int page, int rows,String sum,String date,String discount,String money,String money1){
        Map map=new HashMap();
        map.put("pageSize",page);
        map.put("rows",rows);
        map.put("sum",sum);
        map.put("date",date);
        map.put("discount",discount);
        map.put("money",money);
        map.put("money1",money1);
        return dingdanService.select(map);
    }

    @RequestMapping("/delete")
    @ResponseBody
    public Map de(String id){
        Map<String,String> map=new HashMap<String,String>();
        map.put("id",id);
        int i=dingdanService.delete(map);
        if(i==1){
            map.put("success",i+"");
        }else{
            map.put("errorMsg","失败！请检查网络或联系管理员");
        }
        return map;
    }

    @RequestMapping("/add")
    @ResponseBody
    public Map add(String sum,String date,String discount,String money,String money1){
        Map<String,String> map=new HashMap<String,String>();
        map.put("sum",sum);
        map.put("date",date);
        map.put("discount",discount);
        map.put("money",money);
        map.put("money1",money1);
        int i=dingdanService.add(map);
        if(i==1){
            map.put("success",i+"");
        }else{
            map.put("errorMsg","失败！请检查网络或联系管理员");
        }
        return map;
    }

    @RequestMapping("/edit")
    @ResponseBody
    public Map edit(String id,String sum,String date,String discount,String money,String money1){
        Map<String,String> map=new HashMap<String,String>();
        map.put("id",id);
        map.put("sum",sum);
        map.put("date",date);
        map.put("discount",discount);
        map.put("money",money);
        map.put("money1",money1);
        int i=dingdanService.edit(map);
        if(i==1){
            map.put("success",i+"");
        }else{
            map.put("errorMsg","失败！请检查网络或联系管理员");
        }
        return map;
    }
}
