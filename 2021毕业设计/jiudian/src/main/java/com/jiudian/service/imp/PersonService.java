package com.jiudian.service.imp;
import com.jiudian.mapper.KefangMapper;
import com.jiudian.mapper.PersonMapper;
import com.jiudian.service.IKefangService;
import com.jiudian.service.IPersonService;
import org.apache.ibatis.session.RowBounds;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.Map;

@Service
public class PersonService implements IPersonService {
    @Autowired
    PersonMapper personMapper;

    @Override
    public Map select(Map map) {
        int currentPage=Integer.parseInt(map.get("pageSize").toString());
        int pageSize=Integer.parseInt(map.get("rows").toString());
        RowBounds rowBounds=new RowBounds((currentPage-1)*pageSize, pageSize);
        Map map1=new HashMap();
        map1.put("rows",personMapper.select(rowBounds,map));
        map1.put("total",personMapper.select(new RowBounds(),map).size());
        return map1;
    }

    @Override
    public Map selectByCY(Map map) {
        int currentPage=Integer.parseInt(map.get("pageSize").toString());
        int pageSize=Integer.parseInt(map.get("rows").toString());
        RowBounds rowBounds=new RowBounds((currentPage-1)*pageSize, pageSize);
        Map map1=new HashMap();
        map1.put("rows",personMapper.selectByCY(rowBounds,map));
        map1.put("total",personMapper.selectByCY(new RowBounds(),map).size());
        return map1;
    }

    @Override
    public int delete(Map map) {
        return personMapper.delete(map);
    }

    @Override
    public int add(Map map) {
        return personMapper.add(map);
    }

    @Override
    public int edit(Map map) {
        return personMapper.edit(map);
    }
}
