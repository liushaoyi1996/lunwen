package com.jiudian.service.imp;
import com.jiudian.mapper.ClientMapper;
import com.jiudian.mapper.ReserveMapper;
import com.jiudian.service.IClientService;
import com.jiudian.service.IReserveService;
import org.apache.ibatis.session.RowBounds;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.Map;

@Service
public class ReserveService implements IReserveService {
    @Autowired
    ReserveMapper reserveMapper;

    @Override
    public Map select(Map map) {
        int currentPage=Integer.parseInt(map.get("pageSize").toString());
        int pageSize=Integer.parseInt(map.get("rows").toString());
        RowBounds rowBounds=new RowBounds((currentPage-1)*pageSize, pageSize);
        Map map1=new HashMap();
        map1.put("rows",reserveMapper.select(rowBounds,map));
        map1.put("total",reserveMapper.select(new RowBounds(),map).size());
        return map1;
    }

    @Override
    public int delete(Map map) {
        return reserveMapper.delete(map);
    }

    @Override
    public int add(Map map) {
        return reserveMapper.add(map);
    }

    @Override
    public int edit(Map map) {
        return reserveMapper.edit(map);
    }

    @Override
    public Map selectByid(String id) {
        Map map=new HashMap();
        map.put("id",id);
        return reserveMapper.selectByid(map).get(0);
    }
}
