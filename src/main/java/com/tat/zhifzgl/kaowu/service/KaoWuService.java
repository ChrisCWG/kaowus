package com.tat.zhifzgl.kaowu.service;

import com.tat.zhifzgl.kaowu.pojo.KaoWu;
import com.tat.zhifzgl.kaowu.pojo.KaoWuQueryVo;

import java.util.List;

/**
 * Created by caowe on 2017-02-07.
 */
public interface KaoWuService {
    public KaoWu getKaoWuById(KaoWu kaoWu);
    public List<KaoWu> getKaoWu(KaoWuQueryVo kaoWuQueryVo);
    Integer insertKaoWu(KaoWu kaoWu);
    Integer updateKaoWu(KaoWu kaoWu);
    void deleteKaoWu(KaoWu kaoWu);
}
