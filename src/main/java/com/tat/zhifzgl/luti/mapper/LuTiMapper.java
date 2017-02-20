package com.tat.zhifzgl.luti.mapper;

import com.tat.zhifzgl.luti.pojo.LuTi;

import java.util.List;

public interface LuTiMapper {
    Integer insertLuTi(LuTi luTi);
    List<LuTi> selectLuTis(LuTi luTi);
    Integer updateLuTi(LuTi luTi);
    void deleteLuTi(LuTi luTi);
}
