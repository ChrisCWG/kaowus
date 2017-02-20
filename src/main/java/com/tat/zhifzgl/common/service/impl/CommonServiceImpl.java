package com.tat.zhifzgl.common.service.impl;

import com.tat.zhifzgl.common.mapper.JiaoShiMapper;
import com.tat.zhifzgl.common.mapper.KeMuMapper;
import com.tat.zhifzgl.common.mapper.XueQiMapper;
import com.tat.zhifzgl.common.mapper.XueXiaoMapper;
import com.tat.zhifzgl.common.pojo.*;
import com.tat.zhifzgl.common.service.CommonService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/**
 * Created by caowe on 2017-02-07.
 */
@Service("CommonService")
public class CommonServiceImpl implements CommonService {
    @Resource
    private XueQiMapper xueQiMapper;
    @Resource
    private XueXiaoMapper xueXiaoMapper;
    @Resource
    private JiaoShiMapper jiaoShiMapper;
    @Resource
    private KeMuMapper keMuMapper;

    public List<XueQi> getAllXueQi() {
        List<XueQi> result = new ArrayList<XueQi>();
        Iterator<XueQi> iterator = xueQiMapper.getAllXueQi().iterator();
        while (iterator.hasNext()){
            XueQi xq = iterator.next();
            xq.setXueXiaos(getXueXiaoInjiaoShiInKeMuByXueQiId(xq));
            result.add(xq);
        }
        return result;
    }
    public List<XueXiao> getAllXueXiaoInjiaoShi(XueQi xueQi){
        List<XueXiao> result = new ArrayList<XueXiao>();
        Iterator<XueXiao> iterator = getXueXiaoById(xueQi).iterator();
        while (iterator.hasNext()){
            XueXiao xx = iterator.next();
            xx.setJiaoShis(getJiaoShiByXueXiaoId(xx));
            result.add(xx);
        }
        return result;
    }
    public List<Object> selectPiCiRelationXueXiaoAndJiaoShiAndKeMU(){
        List<Object> list = new ArrayList<Object>();
        list.add(xueXiaoMapper.selectXueXiaoDoPiCi());
        list.add(jiaoShiMapper.selectJiaoShiDoPiCi());
        list.add(keMuMapper.selectKeMuDoPiCi());
        return list;
    }

    public Integer insertJiaoShi(JiaoShi jiaoShi) {
        return jiaoShiMapper.insertJiaoShi(jiaoShi);
    }

    public Integer insertKeMu(KeMu keMu) {
        return keMuMapper.insertKeMu(keMu);
    }

    public Integer insertXueXiao(XueXiao xueXiao) {
        return xueXiaoMapper.insertXueXiao(xueXiao);
    }

    public List<JiaoShi> getAllJiaoShiById(JiaoShi jiaoShi){
        return jiaoShiMapper.getAllJiaoShiById(jiaoShi);
    }
    public List<XueXiao> getAllXueXiaoById(XueXiao xueXiao){
        return xueXiaoMapper.selectXueXiaoById(xueXiao);
    }
    public List<KeMu> getAllKeMuById(KeMu kemu){
        return keMuMapper.selectKeMuById(kemu);
    }
    public Integer putXueQi(XueQi xueQi){
        Integer i = selectXueQiByMingCheng(xueQi);
        if(i==0){
            i = xueQiMapper.insertXueQi(xueQi);
            i = 2;
        }
        return i;
    }
    private Integer selectXueQiByMingCheng(XueQi xueQi){
        return xueQiMapper.selectXueQiByMingCheng(xueQi);
    }
    private List<XueXiao> getXueXiaoInjiaoShiInKeMuByXueQiId(XueQi xueQi){
        List<XueXiao> result = new ArrayList<XueXiao>();
        Iterator<XueXiao> iterator = getXueXiaoById(xueQi).iterator();
        while (iterator.hasNext()){
            XueXiao xx = iterator.next();
            xx.setJiaoShis(getJiaoShiInKeMuByXueXiaoId(null));
            result.add(xx);
        }
        return result;
    }
    private List<JiaoShi> getJiaoShiInKeMuByXueXiaoId(XueXiao xueXiao){
        List<JiaoShi> result = new ArrayList<JiaoShi>();
        Iterator<JiaoShi> iterator = getJiaoShiByXueXiaoId(xueXiao).iterator();
        while (iterator.hasNext()){
            JiaoShi js = iterator.next();
            js.setKeMus(getKemuByJiaoShiId(js));
            result.add(js);
        }
        return result;
    }
    private List<XueXiao> getXueXiaoById(XueQi xq) {
        return xueXiaoMapper.getAllXueXiaoById(xq);
    }

    private List<JiaoShi> getJiaoShiByXueXiaoId(XueXiao xueXiao){
        return jiaoShiMapper.getAllJiaoShiByXueXiaoId(xueXiao);
    }

    private List<KeMu> getKemuByJiaoShiId(JiaoShi jiaoShi){
        return keMuMapper.getAllKeMuByJiaoShiId(jiaoShi);
    }


}
