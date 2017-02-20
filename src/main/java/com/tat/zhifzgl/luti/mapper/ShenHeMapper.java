package com.tat.zhifzgl.luti.mapper;

import com.tat.zhifzgl.luti.pojo.ShenHe;

import java.util.List;

/**
 * Created by caowe on 2017-02-14.
 */
public interface ShenHeMapper {
    Integer insertShenHe(ShenHe shenHe);
    List<ShenHe> selectShenHe(ShenHe shenHe);
    Integer updateShenHe(ShenHe shenHe);
    void deleteShenHe(ShenHe shenHe);
}
