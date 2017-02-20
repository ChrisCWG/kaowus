package com.tat.zhifzgl.common.pojo;

/**
 * Created by caowe on 2017-02-07.
 */
public class XueXiaoBase {
    private int id;
    private String xueXiaoMingCheng;

    public XueXiaoBase() {
    }

    public XueXiaoBase(int id, String xueXiaoMingCheng) {
        this.id = id;
        this.xueXiaoMingCheng = xueXiaoMingCheng;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getXueXiaoMingCheng() {
        return xueXiaoMingCheng;
    }

    public void setXueXiaoMingCheng(String xueXiaoMingCheng) {
        this.xueXiaoMingCheng = xueXiaoMingCheng;
    }

    @Override
    public String toString() {
        return "XueXiaoBase{" +
                "id=" + id +
                ", xueXiaoMingCheng='" + xueXiaoMingCheng + '\'' +
                '}';
    }
}
