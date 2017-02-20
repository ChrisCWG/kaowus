package com.tat.zhifzgl.luti.pojo;

/**
 * Created by caowe on 2017-02-07.
 */
public class LuTi extends LuTiBase {
    private Integer pici_id;
    private Integer user_id;
    private String xueXiaoMingCheng;
    private String jieZhiShiJian;

    public String getJieZhiShiJian() {
        return jieZhiShiJian;
    }

    public void setJieZhiShiJian(String jieZhiShiJian) {
        this.jieZhiShiJian = jieZhiShiJian;
    }

    public String getXueXiaoMingCheng() {
        return xueXiaoMingCheng;
    }

    public void setXueXiaoMingCheng(String xueXiaoMingCheng) {
        this.xueXiaoMingCheng = xueXiaoMingCheng;
    }

    public Integer getPici_id() {
        return pici_id;
    }

    public void setPici_id(Integer pici_id) {
        this.pici_id = pici_id;
    }

    public Integer getUser_id() {
        return user_id;
    }

    public void setUser_id(Integer user_id) {
        this.user_id = user_id;
    }
}
