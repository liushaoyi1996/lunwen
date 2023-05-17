package com.jiudian.service.imp;
import com.jiudian.mapper.CarteMapper;
import com.jiudian.mapper.ClientMapper;
import com.jiudian.service.ICarteService;
import com.jiudian.service.IClientService;
import org.apache.ibatis.session.RowBounds;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.Map;

@Service
public class CarteService implements ICarteService {
    @Autowired
    CarteMapper carteMapper;

    @Override
    public Map select(Map map) {
        int currentPage=Integer.parseInt(map.get("pageSize").toString());
        int pageSize=Integer.parseInt(map.get("rows").toString());
        RowBounds rowBounds=new RowBounds((currentPage-1)*pageSize, pageSize);
        Map map1=new HashMap();
        map1.put("rows",carteMapper.select(rowBounds,map));
        map1.put("total",carteMapper.select(new RowBounds(),map).size());
        return map1;
    }

    @Override
    public int delete(Map map) {
        return carteMapper.delete(map);
    }

    @Override
    public int add(Map map) {
        return carteMapper.add(map);
    }

    @Override
    public int edit(Map map) {
        return carteMapper.edit(map);
    }
}
