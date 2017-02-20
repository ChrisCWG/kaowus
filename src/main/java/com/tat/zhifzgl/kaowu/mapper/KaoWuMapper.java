package com.tat.zhifzgl.kaowu.mapper;

import com.tat.zhifzgl.kaowu.pojo.KaoWu;
import com.tat.zhifzgl.kaowu.pojo.KaoWuQueryVo;

import java.util.List;

/**
 * Created by caowe on 2017-02-07.
 */
public interface KaoWuMapper {
    KaoWu getKaoWuById(KaoWu kaoWu);
    List<KaoWu> getKaoWuByIds(KaoWuQueryVo kaoWuQueryVo);
    Integer insertKaoWu(KaoWu kaoWu);
    Integer updateKaoWu(KaoWu kaoWu);
    void deleteKaoWu(KaoWu kaoWu);
}
