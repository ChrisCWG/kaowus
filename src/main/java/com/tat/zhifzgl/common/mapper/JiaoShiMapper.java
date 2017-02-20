package com.tat.zhifzgl.common.mapper;

import com.tat.zhifzgl.common.pojo.JiaoShi;
import com.tat.zhifzgl.common.pojo.XueXiao;

import java.util.List;

/**
 * Created by caowe on 2017-02-10.
 */
public interface JiaoShiMapper {
    List<JiaoShi> getAllJiaoShiByXueXiaoId(XueXiao xueXiao);
    List<JiaoShi> getAllJiaoShiById(JiaoShi jiaoShi);
    List<JiaoShi> selectJiaoShiDoPiCi();
    Integer insertJiaoShi(JiaoShi jiaoShi);
}
