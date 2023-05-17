package com.jiudian.mapper;

import java.util.List;
import java.util.Map;

public interface LoginMapper {
    public int login(Map map);
    public int login2(Map map);
    public int zhuce(Map map);
    public int selectByName(Map map);
}
