package com.tat.zhifzgl.luti.pojo;

/**
 * Created by caowe on 2017-02-07.
 */
public class ShenHeBase {
    private int id;
    private String luTiPiHao;
    private String shenHeRen;
    private String shenHeJinDu;
    private String xiuGaiJiLu;
    private String xiuGaiShuLiang;
    private String beiZhu;

    public ShenHeBase() {
    }

    public ShenHeBase(int id, String luTiPiHao, String shenHeRen, String shenHeJinDu, String xiuGaiJiLu, String xiuGaiShuLiang, String beiZhu) {
        this.id = id;
        this.luTiPiHao = luTiPiHao;
        this.shenHeRen = shenHeRen;
        this.shenHeJinDu = shenHeJinDu;
        this.xiuGaiJiLu = xiuGaiJiLu;
        this.xiuGaiShuLiang = xiuGaiShuLiang;
        this.beiZhu = beiZhu;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getLuTiPiHao() {
        return luTiPiHao;
    }

    public void setLuTiPiHao(String luTiPiHao) {
        this.luTiPiHao = luTiPiHao;
    }

    public String getShenHeRen() {
        return shenHeRen;
    }

    public void setShenHeRen(String shenHeRen) {
        this.shenHeRen = shenHeRen;
    }

    public String getShenHeJinDu() {
        return shenHeJinDu;
    }

    public void setShenHeJinDu(String shenHeJinDu) {
        this.shenHeJinDu = shenHeJinDu;
    }

    public String getXiuGaiJiLu() {
        return xiuGaiJiLu;
    }

    public void setXiuGaiJiLu(String xiuGaiJiLu) {
        this.xiuGaiJiLu = xiuGaiJiLu;
    }

    public String getXiuGaiShuLiang() {
        return xiuGaiShuLiang;
    }

    public void setXiuGaiShuLiang(String xiuGaiShuLiang) {
        this.xiuGaiShuLiang = xiuGaiShuLiang;
    }

    public String getBeiZhu() {
        return beiZhu;
    }

    public void setBeiZhu(String beiZhu) {
        this.beiZhu = beiZhu;
    }

    @Override
    public String toString() {
        return "ShenHeBase{" +
                "id=" + id +
                ", luTiPiHao='" + luTiPiHao + '\'' +
                ", shenHeRen='" + shenHeRen + '\'' +
                ", shenHeJinDu='" + shenHeJinDu + '\'' +
                ", xiuGaiJiLu='" + xiuGaiJiLu + '\'' +
                ", xiuGaiShuLiang='" + xiuGaiShuLiang + '\'' +
                ", beiZhu='" + beiZhu + '\'' +
                '}';
    }
}
