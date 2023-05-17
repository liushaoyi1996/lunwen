package com.jiudian.service.imp;
import com.jiudian.mapper.KefangMapper;
import com.jiudian.service.IKefangService;
import org.apache.ibatis.session.RowBounds;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.Map;
@Service
public class KefangService implements IKefangService {
    @Autowired
    KefangMapper kefangMapper;

    @Override
    public Map select(Map map) {
        int currentPage=Integer.parseInt(map.get("pageSize").toString());
        int pageSize=Integer.parseInt(map.get("rows").toString());
        RowBounds rowBounds=new RowBounds((currentPage-1)*pageSize, pageSize);
        Map map1=new HashMap();
        map1.put("rows",kefangMapper.select(rowBounds,map));
        map1.put("total",kefangMapper.select(new RowBounds(),map).size());
        return map1;
    }

    @Override
    public Map selectBysum(Map map) {
        return kefangMapper.selectBysum(map);
    }

    @Override
    public int delete(Map map) {
        return kefangMapper.delete(map);
    }

    @Override
    public int add(Map map) {
        return kefangMapper.add(map);
    }

    @Override
    public int edit(Map map) {
        return kefangMapper.edit(map);
    }
}
