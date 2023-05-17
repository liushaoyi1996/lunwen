package com.jiudian.controller;

import com.jiudian.service.IClientService;
import com.jiudian.service.IReserveService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.HashMap;
import java.util.Map;

@Controller
@RequestMapping("/reserve")
public class ReserveController {
    @Autowired
    IReserveService iReserveService;

    @RequestMapping("/select")
    @ResponseBody
    public Map select(int page, int rows,String sum,String name,String number,String phone,String reserve_day,String check_day1,String check_day2,String money){
        Map map=new HashMap();
        map.put("pageSize",page);
        map.put("rows",rows);
        map.put("sum",sum);
        map.put("name",name);
        map.put("number",number);
        map.put("phone",phone);
        map.put("reserve_day",reserve_day);
        map.put("check_day1",check_day1);
        map.put("check_day2",check_day2);
        map.put("money",money);
        return iReserveService.select(map);
    }

    @RequestMapping("/delete")
    @ResponseBody
    public Map de(String id){
        Map<String,String> map=new HashMap<String,String>();
        map.put("id",id);
        int i=iReserveService.delete(map);
        if(i==1){
            map.put("success",i+"");
        }else{
            map.put("errorMsg","失败！请检查网络或联系管理员");
        }
        return map;
    }

    @RequestMapping("/add")
    @ResponseBody
    public Map add(String sum,String name,String number,String phone,String reserve_day,String check_day1,String check_day2,String money){
        Map<String,String> map=new HashMap<String,String>();
        map.put("sum",sum);
        map.put("name",name);
        map.put("number",number);
        map.put("phone",phone);
        map.put("reserve_day",reserve_day);
        map.put("check_day1",check_day1);
        map.put("check_day2",check_day2);
        map.put("money",money);
        int i=iReserveService.add(map);
        if(i==1){
            map.put("success",i+"");
        }else{
            map.put("errorMsg","失败！请检查网络或联系管理员");
        }
        return map;
    }

    @RequestMapping("/edit")
    @ResponseBody
    public Map edit(String id,String sum,String name,String number,String phone,String reserve_day,String check_day1,String check_day2,String money,String status){
        Map<String,String> map=new HashMap<String,String>();
        map.put("id",id);
        map.put("sum",sum);
        map.put("name",name);
        map.put("number",number);
        map.put("phone",phone);
        map.put("reserve_day",reserve_day);
        map.put("check_day1",check_day1);
        map.put("check_day2",check_day2);
        map.put("money",money);
        map.put("status",status);
        int i=iReserveService.edit(map);
        if(i==1){
            map.put("success",i+"");
        }else{
            map.put("errorMsg","失败！请检查网络或联系管理员");
        }
        return map;
    }
}
