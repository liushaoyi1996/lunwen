package com.jiudian.service.imp;
import com.jiudian.mapper.ClientMapper;
import com.jiudian.mapper.PersonMapper;
import com.jiudian.service.IClientService;
import com.jiudian.service.IPersonService;
import org.apache.ibatis.session.RowBounds;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.Map;

@Service
public class ClientService implements IClientService {
    @Autowired
    ClientMapper clientMapper;

    @Override
    public Map select(Map map) {
        int currentPage=Integer.parseInt(map.get("pageSize").toString());
        int pageSize=Integer.parseInt(map.get("rows").toString());
        RowBounds rowBounds=new RowBounds((currentPage-1)*pageSize, pageSize);
        Map map1=new HashMap();
        map1.put("rows",clientMapper.select(rowBounds,map));
        map1.put("total",clientMapper.select(new RowBounds(),map).size());
        return map1;
    }

    @Override
    public int delete(Map map) {
        return clientMapper.delete(map);
    }

    @Override
    public int add(Map map) {
        return clientMapper.add(map);
    }

    @Override
    public int edit(Map map) {
        return clientMapper.edit(map);
    }
}
