package com.tat.zhifzgl.kaowu.pojo;

import com.tat.zhifzgl.common.pojo.XueQi;

import java.util.List;

/**
 * Created by caowe on 2017-02-08.
 */
public class KaoWuQueryVo {
    private List ids;
    private KaoWu kaoWu;
    private XueQi xueQi;

    public KaoWuQueryVo() {
    }

    public KaoWuQueryVo(List ids, KaoWu kaoWu, XueQi xueQi) {
        this.ids = ids;
        this.kaoWu = kaoWu;
        this.xueQi = xueQi;
    }

    public List getIds() {
        return ids;
    }

    public void setIds(List ids) {
        this.ids = ids;
    }

    public KaoWu getKaoWu() {
        return kaoWu;
    }

    public void setKaoWu(KaoWu kaoWu) {
        this.kaoWu = kaoWu;
    }

    public XueQi getXueQi() {
        return xueQi;
    }

    public void setXueQi(XueQi xueQi) {
        this.xueQi = xueQi;
    }
}
