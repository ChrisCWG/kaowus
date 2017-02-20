package com.tat.zhifzgl.common.pojo;

import java.util.List;

/**
 * Created by caowe on 2017-02-10.
 */
public class JiaoShi extends JiaoShiBase {
    private List<KeMu> keMus;
    private Integer xuexiao_id;

    public Integer getXuexiao_id() {
        return xuexiao_id;
    }

    public void setXuexiao_id(Integer xuexiao_id) {
        this.xuexiao_id = xuexiao_id;
    }

    public List<KeMu> getKeMus() {
        return keMus;
    }

    public void setKeMus(List<KeMu> keMus) {
        this.keMus = keMus;
    }
}
