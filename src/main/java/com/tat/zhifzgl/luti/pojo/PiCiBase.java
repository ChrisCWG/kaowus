package com.tat.zhifzgl.luti.pojo;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * Created by caowe on 2017-02-07.
 */
public class PiCiBase {
    private int id;
    private String xueXiao;
    private String keMu;
    private String fuZeJiaoShi;
    private String luTiPiHao;
    private String wenJianShuLiang;
    private String luTiShuoMing;
    private String kaiShiShiJian;
    private String jieZhiShiJian;
    private String zhuangTai;
    private String beiZhu;

    public PiCiBase() {
    }

    public PiCiBase(int id, String xueXiao, String keMu, String fuZeJiaoShi, String luTiPiHao, String wenJianShuLiang, String luTiShuoMing, String kaiShiShiJian, String jieZhiShiJian, String zhuangTai, String beiZhu) {
        this.id = id;
        this.xueXiao = xueXiao;
        this.keMu = keMu;
        this.fuZeJiaoShi = fuZeJiaoShi;
        this.luTiPiHao = luTiPiHao;
        this.wenJianShuLiang = wenJianShuLiang;
        this.luTiShuoMing = luTiShuoMing;
        this.kaiShiShiJian = kaiShiShiJian;
        this.jieZhiShiJian = jieZhiShiJian;
        this.zhuangTai = zhuangTai;
        this.beiZhu = beiZhu;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getXueXiao() {
        return xueXiao;
    }

    public void setXueXiao(String xueXiao) {
        this.xueXiao = xueXiao;
    }

    public String getKeMu() {
        return keMu;
    }

    public void setKeMu(String keMu) {
        this.keMu = keMu;
    }

    public String getFuZeJiaoShi() {
        return fuZeJiaoShi;
    }

    public void setFuZeJiaoShi(String fuZeJiaoShi) {
        this.fuZeJiaoShi = fuZeJiaoShi;
    }

    public String getLuTiPiHao() {
        return luTiPiHao;
    }

    public void setLuTiPiHao(String luTiPiHao) {
        this.luTiPiHao = luTiPiHao;
    }

    public String getWenJianShuLiang() {
        return wenJianShuLiang;
    }

    public void setWenJianShuLiang(String wenJianShuLiang) {
        this.wenJianShuLiang = wenJianShuLiang;
    }

    public String getLuTiShuoMing() {
        return luTiShuoMing;
    }

    public void setLuTiShuoMing(String luTiShuoMing) {
        this.luTiShuoMing = luTiShuoMing;
    }

    public String getKaiShiShiJian() {
        return kaiShiShiJian;
    }

    public void setKaiShiShiJian(String kaiShiShiJian) {
        this.kaiShiShiJian = kaiShiShiJian;
    }

    public String getJieZhiShiJian() {
        return jieZhiShiJian;
    }

    public void setJieZhiShiJian(String jieZhiShiJian) {
        this.jieZhiShiJian = jieZhiShiJian;
    }

    public String getZhuangTai() {
        return zhuangTai;
    }

    public void setZhuangTai(String zhuangTai) {
        this.zhuangTai = zhuangTai;
    }

    public String getBeiZhu() {
        return beiZhu;
    }

    public void setBeiZhu(String beiZhu) {
        this.beiZhu = beiZhu;
    }

    @Override
    public String toString() {
        return "PiCiBase{" +
                "id=" + id +
                ", xueXiao='" + xueXiao + '\'' +
                ", keMu='" + keMu + '\'' +
                ", fuZeJiaoShi='" + fuZeJiaoShi + '\'' +
                ", luTiPiHao='" + luTiPiHao + '\'' +
                ", wenJianShuLiang='" + wenJianShuLiang + '\'' +
                ", luTiShuoMing='" + luTiShuoMing + '\'' +
                ", kaiShiShiJian='" + kaiShiShiJian + '\'' +
                ", jieZhiShiJian='" + jieZhiShiJian + '\'' +
                ", zhuangTai='" + zhuangTai + '\'' +
                ", beiZhu='" + beiZhu + '\'' +
                '}';
    }
}
