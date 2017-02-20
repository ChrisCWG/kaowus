package com.tat.zhifzgl.common.pojo;

/**
 * Created by caowe on 2017-02-10.
 */
public class KeMuBase {
    private int id;
    private String mingCheng;

    public KeMuBase() {
    }

    public KeMuBase(int id, String mingCheng) {
        this.id = id;
        this.mingCheng = mingCheng;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getMingCheng() {
        return mingCheng;
    }

    public void setMingCheng(String mingCheng) {
        this.mingCheng = mingCheng;
    }

    @Override
    public String toString() {
        return "KeMuBase{" +
                "id=" + id +
                ", mingCheng='" + mingCheng + '\'' +
                '}';
    }
}
