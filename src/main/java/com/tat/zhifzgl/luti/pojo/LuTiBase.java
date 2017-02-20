package com.tat.zhifzgl.luti.pojo;

/**
 * Created by caowe on 2017-02-07.
 */
public class LuTiBase {
    private int id;
    private String luTiPiHao;
    private String luTiRen;
    private String wenJianMing;
    private String tiMuShuLiang;
    private String jinDu;
    private String beiZhu;

    public LuTiBase() {
    }

    public LuTiBase(int id, String luTiPiHao, String luTiRen, String wenJianMing, String tiMuShuLiang, String jinDu, String beiZhu) {
        this.id = id;
        this.luTiPiHao = luTiPiHao;
        this.luTiRen = luTiRen;
        this.wenJianMing = wenJianMing;
        this.tiMuShuLiang = tiMuShuLiang;
        this.jinDu = jinDu;
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

    public String getLuTiRen() {
        return luTiRen;
    }

    public void setLuTiRen(String luTiRen) {
        this.luTiRen = luTiRen;
    }

    public String getWenJianMing() {
        return wenJianMing;
    }

    public void setWenJianMing(String wenJianMing) {
        this.wenJianMing = wenJianMing;
    }

    public String getTiMuShuLiang() {
        return tiMuShuLiang;
    }

    public void setTiMuShuLiang(String tiMuShuLiang) {
        this.tiMuShuLiang = tiMuShuLiang;
    }

    public String getJinDu() {
        return jinDu;
    }

    public void setJinDu(String jinDu) {
        this.jinDu = jinDu;
    }

    public String getBeiZhu() {
        return beiZhu;
    }

    public void setBeiZhu(String beiZhu) {
        this.beiZhu = beiZhu;
    }

    @Override
    public String toString() {
        return "LuTiBase{" +
                "id=" + id +
                ", luTiPiHao='" + luTiPiHao + '\'' +
                ", luTiRen='" + luTiRen + '\'' +
                ", wenJianMing='" + wenJianMing + '\'' +
                ", tiMuShuLiang='" + tiMuShuLiang + '\'' +
                ", jinDu='" + jinDu + '\'' +
                ", beiZhu='" + beiZhu + '\'' +
                '}';
    }
}
