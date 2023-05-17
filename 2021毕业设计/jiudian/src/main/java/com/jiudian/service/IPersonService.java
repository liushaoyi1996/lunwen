package com.jiudian.service;

import java.util.Map;

public interface IPersonService {
    public Map select(Map map);
    public Map selectByCY(Map map);
    public int delete(Map map);
    public int add(Map map);
    public int edit(Map map);
}
