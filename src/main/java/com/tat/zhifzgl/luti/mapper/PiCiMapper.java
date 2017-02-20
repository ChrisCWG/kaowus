package com.tat.zhifzgl.luti.mapper;

import com.tat.zhifzgl.luti.pojo.PiCi;

import java.util.List;

public interface PiCiMapper {
    Integer insertPICi(PiCi piCi);
    List<PiCi> selectPiCis(PiCi piCi);
    Integer updatePiCi(PiCi piCi);
    void deletePiCi(PiCi piCi);
}
