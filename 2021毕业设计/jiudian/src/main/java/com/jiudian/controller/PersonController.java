package com.jiudian.controller;

import com.jiudian.service.IKefangService;
import com.jiudian.service.IPersonService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.Date;
import java.util.HashMap;
import java.util.Map;

@Controller
@RequestMapping("/person")
public class PersonController {
    @Autowired
    IPersonService personService;

    @RequestMapping("/select")
    @ResponseBody
    public Map select(int page, int rows,String name,String sex,String year1,String year2,String number,String type,String branch,String phone,String birthday0,String birthday1){
        Map map=new HashMap();
        map.put("pageSize",page);
        map.put("rows",rows);
        map.put("name",name);
        map.put("sex",sex);
        map.put("year1",year1);
        map.put("year2",year2);
        map.put("number",number);
        map.put("type",type);
        map.put("branch",branch);
        map.put("phone",phone);
        map.put("birthday0",birthday0);
        map.put("birthday1",birthday1);
        return personService.select(map);
    }

    @RequestMapping("/selectByCY")
    @ResponseBody
    public Map selectByCY(int page, int rows,String name,String sex,String year1,String year2,String number,String type,String branch,String phone,String birthday0,String birthday1){
        Map map=new HashMap();
        map.put("pageSize",page);
        map.put("rows",rows);
        map.put("name",name);
        map.put("sex",sex);
        map.put("year1",year1);
        map.put("year2",year2);
        map.put("number",number);
        map.put("type",type);
        map.put("branch",branch);
        map.put("phone",phone);
        map.put("birthday0",birthday0);
        map.put("birthday1",birthday1);
        return personService.selectByCY(map);
    }

    @RequestMapping("/delete")
    @ResponseBody
    public Map de(String id){
        Map<String,String> map=new HashMap<String,String>();
        map.put("id",id);
        int i=personService.delete(map);
        if(i==1){
            map.put("success",i+"");
        }else{
            map.put("errorMsg","失败！请检查网络或联系管理员");
        }
        return map;
    }

    @RequestMapping("/add")
    @ResponseBody
    public Map add(String name,String sex,String year,String number,String type,String branch,String phone,String birthday){
        Map<String,String> map=new HashMap<String,String>();
        map.put("name",name);
        map.put("type",type);
        map.put("sex",sex);
        map.put("year",year);
        map.put("number",number);
        map.put("branch",branch);
        map.put("phone",phone);
        if(birthday==""){
            map.put("birthday",null);
        }else{
            map.put("birthday",birthday);
        }

        int i=personService.add(map);
        if(i==1){
            map.put("success",i+"");
        }else{
            map.put("errorMsg","失败！请检查网络或联系管理员");
        }
        return map;
    }

    @RequestMapping("/edit")
    @ResponseBody
    public Map edit(String id,String name,String sex,String year,String number,String type,String branch,String phone,String birthday){
        Map<String,String> map=new HashMap<String,String>();
        map.put("id",id);
        map.put("name",name);
        map.put("type",type);
        map.put("sex",sex);
        map.put("year",year);
        map.put("number",number);
        map.put("branch",branch);
        map.put("birthday",birthday);
        map.put("phone",phone);
        int i=personService.edit(map);
        if(i==1){
            map.put("success",i+"");
        }else{
            map.put("errorMsg","失败！请检查网络或联系管理员");
        }
        return map;
    }
}
