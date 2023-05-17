package com.jiudian.service.imp;
import com.jiudian.mapper.CarteMapper;
import com.jiudian.mapper.DingdanMapper;
import com.jiudian.service.ICarteService;
import com.jiudian.service.IDingdanService;
import org.apache.ibatis.session.RowBounds;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.Map;

@Service
public class DingdanService implements IDingdanService {
    @Autowired
    DingdanMapper dingdanMapper;

    @Override
    public Map select(Map map) {
        int currentPage=Integer.parseInt(map.get("pageSize").toString());
        int pageSize=Integer.parseInt(map.get("rows").toString());
        RowBounds rowBounds=new RowBounds((currentPage-1)*pageSize, pageSize);
        Map map1=new HashMap();
        map1.put("rows",dingdanMapper.select(rowBounds,map));
        map1.put("total",dingdanMapper.select(new RowBounds(),map).size());
        return map1;
    }

    @Override
    public int delete(Map map) {
        return dingdanMapper.delete(map);
    }

    @Override
    public int add(Map map) {
        return dingdanMapper.add(map);
    }

    @Override
    public int edit(Map map) {
        return dingdanMapper.edit(map);
    }
}
