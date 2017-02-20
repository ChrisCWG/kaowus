package com.tat.zhifzgl.common.pojo;

/**
 * Created by caowe on 2017-02-07.
 */
public class XueQiBase {
    private int id;
    private String xueQiMingCheng;

    public XueQiBase() {
    }

    public XueQiBase(int id, String xueQiMingCheng) {
        this.id = id;
        this.xueQiMingCheng = xueQiMingCheng;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getXueQiMingCheng() {
        return xueQiMingCheng;
    }

    public void setXueQiMingCheng(String xueQiMingCheng) {
        this.xueQiMingCheng = xueQiMingCheng;
    }

    @Override
    public String toString() {
        return "XueQiBase{" +
                "id=" + id +
                ", xueQiMingCheng='" + xueQiMingCheng + '\'' +
                '}';
    }
}
