package com.tat.zhifzgl.luti.pojo;

import com.tat.zhifzgl.user.pojo.User;

import java.util.List;

/**
 * Created by caowe on 2017-02-07.
 */
public class PiCi extends PiCiBase {
    private List<LuTi> luTis;
    private Integer xueXiaoId;
    private Integer jiaoShiId;
    private Integer keMuId;
    private List<User> users;

    public List<User> getUsers() {
        return users;
    }

    public void setUsers(List<User> users) {
        this.users = users;
    }

    public List<LuTi> getLuTis() {
        return luTis;
    }

    public void setLuTis(List<LuTi> luTis) {
        this.luTis = luTis;
    }

    public Integer getXueXiaoId() {
        return xueXiaoId;
    }

    public void setXueXiaoId(Integer xueXiaoId) {
        this.xueXiaoId = xueXiaoId;
    }

    public Integer getJiaoShiId() {
        return jiaoShiId;
    }

    public void setJiaoShiId(Integer jiaoShiId) {
        this.jiaoShiId = jiaoShiId;
    }

    public Integer getKeMuId() {
        return keMuId;
    }

    public void setKeMuId(Integer keMuId) {
        this.keMuId = keMuId;
    }
}
