package com.tat.zhifzgl.kaowu.service.impl;

import com.tat.zhifzgl.kaowu.mapper.KaoWuMapper;
import com.tat.zhifzgl.kaowu.pojo.KaoWu;
import com.tat.zhifzgl.kaowu.pojo.KaoWuQueryVo;
import com.tat.zhifzgl.kaowu.service.KaoWuService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by caowe on 2017-02-07.
 */
@Service("KaoWuService")
public class KaoWuServiceImpl implements KaoWuService {

    @Resource
    KaoWuMapper kaoWuMapper;

    public KaoWu getKaoWuById(KaoWu kaoWu) {
        return kaoWuMapper.getKaoWuById(kaoWu);
    }

    public List<KaoWu> getKaoWu(KaoWuQueryVo kaoWuQueryVo) {
        return kaoWuMapper.getKaoWuByIds(kaoWuQueryVo);
    }

    public Integer insertKaoWu(KaoWu kaoWu) {
        return kaoWuMapper.insertKaoWu(kaoWu);
    }

    public Integer updateKaoWu(KaoWu kaoWu) {
        return kaoWuMapper.updateKaoWu(kaoWu);
    }

    public void deleteKaoWu(KaoWu kaoWu) {
        kaoWuMapper.deleteKaoWu(kaoWu);
    }
}
