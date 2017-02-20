package com.tat.zhifzgl.common.service;

import com.tat.zhifzgl.common.pojo.JiaoShi;
import com.tat.zhifzgl.common.pojo.KeMu;
import com.tat.zhifzgl.common.pojo.XueQi;
import com.tat.zhifzgl.common.pojo.XueXiao;

import java.util.List;

/**
 * Created by caowe on 2017-02-08.
 */
public interface CommonService {
    List<XueQi> getAllXueQi();
    List<XueXiao> getAllXueXiaoInjiaoShi(XueQi xueQi);
    List<JiaoShi> getAllJiaoShiById(JiaoShi jiaoShi);
    List<XueXiao> getAllXueXiaoById(XueXiao xueXiao);
    List<KeMu> getAllKeMuById(KeMu kemu);
    Integer putXueQi(XueQi xueQi);
    List<Object> selectPiCiRelationXueXiaoAndJiaoShiAndKeMU();
    Integer insertJiaoShi(JiaoShi jiaoShi);
    Integer insertKeMu(KeMu keMu);
    Integer insertXueXiao(XueXiao xueXiao);
}
