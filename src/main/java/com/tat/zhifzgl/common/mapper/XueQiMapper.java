package com.tat.zhifzgl.common.mapper;

import com.tat.zhifzgl.common.pojo.XueQi;

import java.util.List;

/**
 * Created by caowe on 2017-02-07.
 */
public interface XueQiMapper {
    public List<XueQi> getAllXueQi();
    public Integer insertXueQi(XueQi xueQi);
    public Integer selectXueQiByMingCheng(XueQi xueQi);
}
