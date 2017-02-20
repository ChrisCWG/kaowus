package com.tat.zhifzgl.luti.pojo;

/**
 * Created by caowe on 2017-02-07.
 */
public class ShenHe extends ShenHeBase {
    private Integer luti_id;
    private Integer user_id;
    private Integer pici_id;
    private Integer luTiRen_ID;

    public Integer getPici_id() {
        return pici_id;
    }

    public void setPici_id(Integer pici_id) {
        this.pici_id = pici_id;
    }

    public Integer getLuTiRen_ID() {
        return luTiRen_ID;
    }

    public void setLuTiRen_ID(Integer luTiRen_ID) {
        this.luTiRen_ID = luTiRen_ID;
    }

    public Integer getLuti_id() {
        return luti_id;
    }

    public void setLuti_id(Integer luti_id) {
        this.luti_id = luti_id;
    }

    public Integer getUser_id() {
        return user_id;
    }

    public void setUser_id(Integer user_id) {
        this.user_id = user_id;
    }
}
