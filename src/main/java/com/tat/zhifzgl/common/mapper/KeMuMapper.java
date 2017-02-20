package com.tat.zhifzgl.common.mapper;

import com.tat.zhifzgl.common.pojo.JiaoShi;
import com.tat.zhifzgl.common.pojo.KeMu;

import java.util.List;

/**
 * Created by caowe on 2017-02-10.
 */
public interface KeMuMapper {
    List<KeMu> getAllKeMuByJiaoShiId(JiaoShi jiaoShi);
    List<KeMu> selectKeMuById(KeMu keMu);
    List<KeMu> selectKeMuDoPiCi();
    Integer insertKeMu(KeMu keMu);
}
