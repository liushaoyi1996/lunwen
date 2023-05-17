package com.jiudian.controller;
import com.jiudian.service.IKefangService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import java.util.HashMap;
import java.util.Map;

@Controller
@RequestMapping("/kefang")
public class KefangController {
    @Autowired
    IKefangService kefangService;

    @RequestMapping("/select")
    @ResponseBody
    public Map select(int page, int rows,String sum,String type,String window,String level,String money1,String money2){
        Map map=new HashMap();
        map.put("pageSize",page);
        map.put("rows",rows);
        map.put("sum",sum);
        map.put("type",type);
        map.put("window",window);
        map.put("level",level);
        map.put("money1",money1);
        map.put("money2",money2);
        //return JSON.toJSONString(list);
        return kefangService.select(map);
    }

    @RequestMapping("/delete")
    @ResponseBody
    public Map de(String id){
        Map<String,String> map=new HashMap<String,String>();
        map.put("id",id);
        int i=kefangService.delete(map);
        if(i==1){
            map.put("success",i+"");
        }else{
            map.put("errorMsg","失败！请检查网络或联系管理员");
        }
        return map;
    }

    @RequestMapping("/add")
    @ResponseBody
    public Map add(String sum,String type,String window,String clean,String level,String size,String money){
        Map<String,String> map=new HashMap<String,String>();
        map.put("sum",sum);
        map.put("type",type);
        map.put("window",window);
        map.put("clean",clean);
        map.put("level",level);
        map.put("size",size);
        map.put("money",money);
        if(kefangService.selectBysum(map)!=null){
            map.put("errorMsg","该房间号已存在，请更换！");
            return map;
        }
//        if(x!=0){
//
//        }
        int i=kefangService.add(map);
        if(i==1){
            map.put("success",i+"");
        }else{
            map.put("errorMsg","失败！请检查网络或联系管理员");
        }
        return map;
    }

    @RequestMapping("/edit")
    @ResponseBody
    public Map edit(String id,String sum,String type,String window,String clean,String level,String size,String money){
        Map<String,String> map=new HashMap<String,String>();
        map.put("id",id);
        map.put("sum",sum);
        map.put("type",type);
        map.put("window",window);
        map.put("clean",clean);
        map.put("level",level);
        map.put("size",size);
        map.put("money",money);
        int i=kefangService.edit(map);
        if(i==1){
            map.put("success",i+"");
        }else{
            map.put("errorMsg","失败！请检查网络或联系管理员");
        }
        return map;
    }
}
