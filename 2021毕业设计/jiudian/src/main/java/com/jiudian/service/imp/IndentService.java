package com.jiudian.service.imp;
import com.jiudian.mapper.IndentMapper;
import com.jiudian.mapper.ReserveMapper;
import com.jiudian.service.IIndentService;
import com.jiudian.service.IReserveService;
import org.apache.ibatis.session.RowBounds;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.Map;

@Service
public class IndentService implements IIndentService {
    @Autowired
    IndentMapper indentMapper;

    @Override
    public Map select(Map map) {
        int currentPage=Integer.parseInt(map.get("pageSize").toString());
        int pageSize=Integer.parseInt(map.get("rows").toString());
        RowBounds rowBounds=new RowBounds((currentPage-1)*pageSize, pageSize);
        Map map1=new HashMap();
        map1.put("rows",indentMapper.select(rowBounds,map));
        map1.put("total",indentMapper.select(new RowBounds(),map).size());
        return map1;
    }

    @Override
    public int delete(Map map) {
        return indentMapper.delete(map);
    }

    @Override
    public int add(Map map) {
        return indentMapper.add(map);
    }

    @Override
    public int edit(Map map) {
        return indentMapper.edit(map);
    }


}
