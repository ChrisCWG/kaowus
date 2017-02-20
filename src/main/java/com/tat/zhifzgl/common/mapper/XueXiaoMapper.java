package com.tat.zhifzgl.common.mapper;

import com.tat.zhifzgl.common.pojo.XueQi;
import com.tat.zhifzgl.common.pojo.XueXiao;

import java.util.List;

/**
 * Created by caowe on 2017-02-07.
 */
public interface XueXiaoMapper{
    List<XueXiao> getAllXueXiaoById(XueQi xueQi);
    List<XueXiao> selectXueXiaoById(XueXiao xueXiao);
    List<XueXiao> selectXueXiaoDoPiCi();
    Integer insertXueXiao(XueXiao xueXiao);
}
