package com.tat.zhifzgl.luti.service;

import com.tat.zhifzgl.luti.pojo.LuTi;
import com.tat.zhifzgl.luti.pojo.PiCi;
import com.tat.zhifzgl.luti.pojo.ShenHe;

import java.util.List;

/**
 * Created by caowe on 2017-02-13.
 */
public interface LuTiService {
    Integer insetPiCi(PiCi piCi);
    List<PiCi> selectPiCis(PiCi piCi);
    Integer updatePiCi(PiCi piCi);
    List<Object> selectLuTiRelationPiCiAndUser();
    Integer insertLuTi(LuTi luTi);
    List<LuTi> selectLuTis(LuTi luTi);
    Integer updateLuTi(LuTi luTi);
    Integer insertShenHe(ShenHe shenHe);
    List<ShenHe> selectShenHe(ShenHe shenHe);
    Integer updateShenHe(ShenHe shenHe);
    List<Object> selectLuTiRelationPiCiInUser();
    void deleteLuTi(LuTi luTi);
    void deletePiCi(PiCi piCi);
    void deleteShenHe(ShenHe shenHe);
}
