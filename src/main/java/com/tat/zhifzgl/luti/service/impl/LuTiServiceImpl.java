package com.tat.zhifzgl.luti.service.impl;

import com.tat.zhifzgl.common.mapper.JiaoShiMapper;
import com.tat.zhifzgl.common.mapper.KeMuMapper;
import com.tat.zhifzgl.common.mapper.XueXiaoMapper;
import com.tat.zhifzgl.luti.mapper.LuTiMapper;
import com.tat.zhifzgl.luti.mapper.PiCiMapper;
import com.tat.zhifzgl.luti.mapper.ShenHeMapper;
import com.tat.zhifzgl.luti.pojo.LuTi;
import com.tat.zhifzgl.luti.pojo.PiCi;
import com.tat.zhifzgl.luti.pojo.ShenHe;
import com.tat.zhifzgl.luti.service.LuTiService;
import com.tat.zhifzgl.user.mapper.UserMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/**
 * Created by caowe on 2017-02-13.
 */
@Service("LuTiService")
public class LuTiServiceImpl implements LuTiService {
    @Resource
    private PiCiMapper piCiMapper;
    @Resource
    private UserMapper userMapper;
    @Resource
    private LuTiMapper luTiMapper;
    @Resource
    private ShenHeMapper shenHeMapper;

    public Integer insetPiCi(PiCi piCi) {
        return piCiMapper.insertPICi(piCi);
    }
    public List<PiCi> selectPiCis(PiCi piCi){
        return piCiMapper.selectPiCis(piCi);
    }

    public Integer updatePiCi(PiCi piCi) {
        int i = 0;
        try{
            i = piCiMapper.updatePiCi(piCi);
        }catch (Exception e){
        }
        return i;
    }
    public List<Object> selectLuTiRelationPiCiAndUser(){
        List<Object> list = new ArrayList<Object>();
        list.add(userMapper.selectUsers());
        list.add(piCiMapper.selectPiCis(null));
        return list;
    }

    public Integer insertLuTi(LuTi luTi) {
        return luTiMapper.insertLuTi(luTi);
    }
    public List<LuTi> selectLuTis(LuTi luTi){
        return luTiMapper.selectLuTis(luTi);
    }
    public Integer updateLuTi(LuTi luTi){
        return luTiMapper.updateLuTi(luTi);
    }

    public Integer insertShenHe(ShenHe shenHe) {
        return shenHeMapper.insertShenHe(shenHe);
    }

    public List<ShenHe> selectShenHe(ShenHe shenHe) {
        return shenHeMapper.selectShenHe(shenHe);
    }

    public Integer updateShenHe(ShenHe shenHe) {
        return shenHeMapper.updateShenHe(shenHe);
    }

    public List<Object> selectLuTiRelationPiCiInUser() {
        List<Object> piCis = new ArrayList<Object>();
        Iterator<PiCi> iterator = piCiMapper.selectPiCis(null).iterator();
        while (iterator.hasNext()){
            PiCi next = iterator.next();
            LuTi luTi = new LuTi();
            luTi.setPici_id(next.getId());
            next.setLuTis(luTiMapper.selectLuTis(luTi));
            piCis.add(next);
        }
//        piCis.add(userMapper.selectUsers());
        return piCis;
    }

    public void deleteLuTi(LuTi luTi) {
        luTiMapper.deleteLuTi(luTi);
    }

    public void deletePiCi(PiCi piCi) {
        piCiMapper.deletePiCi(piCi);
    }

    public void deleteShenHe(ShenHe shenHe) {
        shenHeMapper.deleteShenHe(shenHe);
    }
}
