package com.tat.zhifzgl.common.pojo;

/**
 * Created by caowe on 2017-02-10.
 */
public class JiaoShiBase {
    private int id;
    private String xingMing;
    private String shouJiHaoMa;

    public JiaoShiBase() {
    }

    public JiaoShiBase(int id, String xingMing, String shouJiHaoMa) {
        this.id = id;
        this.xingMing = xingMing;
        this.shouJiHaoMa = shouJiHaoMa;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getXingMing() {
        return xingMing;
    }

    public void setXingMing(String xingMing) {
        this.xingMing = xingMing;
    }

    public String getShouJiHaoMa() {
        return shouJiHaoMa;
    }

    public void setShouJiHaoMa(String shouJiHaoMa) {
        this.shouJiHaoMa = shouJiHaoMa;
    }

    @Override
    public String toString() {
        return "JiaoShiBase{" +
                "id=" + id +
                ", xingMing='" + xingMing + '\'' +
                ", shouJiHaoMa='" + shouJiHaoMa + '\'' +
                '}';
    }
}
