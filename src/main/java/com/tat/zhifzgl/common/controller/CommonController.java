package com.tat.zhifzgl.common.controller;

import com.alibaba.fastjson.JSONObject;
import com.alibaba.fastjson.serializer.ArraySerializer;
import com.tat.zhifzgl.common.pojo.JiaoShi;
import com.tat.zhifzgl.common.pojo.KeMu;
import com.tat.zhifzgl.common.pojo.XueQi;
import com.tat.zhifzgl.common.pojo.XueXiao;
import com.tat.zhifzgl.common.service.CommonService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.*;

/**
 * Created by caowe on 2017-02-07.
 */
@Controller
public class CommonController {
    @Autowired
    private CommonService commonService;

    @RequestMapping(value = "/xueqi", method = RequestMethod.GET)
    @ResponseBody
    public Object getAllXueQi() {
        Object result = "ERROR";
        try {
            Object all = commonService.getAllXueQi();
            result = JSONObject.toJSON(all);
        } catch (Exception e) {
        }
        return result;
    }

    @RequestMapping(value = "/jiaoshi", method = RequestMethod.GET)
    @ResponseBody
    public Object getAllJiaoShi() {
        Object result = "ERROR";
        try {
            Object all = commonService.getAllJiaoShiById(null);
            result = JSONObject.toJSON(all);
        } catch (Exception e) {
        }
        return result;
    }

    @RequestMapping(value = "/xuexiao", method = RequestMethod.GET)
    @ResponseBody
    public Object getAllXueXiao() {
        Object result = "ERROR";
        try {
            Object all = commonService.getAllXueXiaoInjiaoShi(null);
            result = JSONObject.toJSON(all);
        } catch (Exception e) {
        }
        return result;
    }

    @RequestMapping(value = "/kemu", method = RequestMethod.GET)
    @ResponseBody
    public Object getAllKeMu() {
        Object result = "ERROR";
        try {
            Object all = commonService.getAllKeMuById(null);
            result = JSONObject.toJSON(all);
        } catch (Exception e) {
        }
        return result;
    }

    @RequestMapping(value = "/xueqi", method = RequestMethod.POST)
    @ResponseBody
    public Object postXueQi(@RequestBody Map<String, String> map) {
        Object res = false;
        Map<String, Object> result = new HashMap<String, Object>();
        try {
            XueQi xueQi = new XueQi();
            if (map.containsKey("学期名称")) {
                xueQi.setXueQiMingCheng(map.get("学期名称"));
            }
            int i = commonService.putXueQi(xueQi);
            if(i==2){
                res = true;
                result.put("data",i);
            }
            if(i==1){
                res = false;
                result.put("msg","请检查输入内容");
            }
        } catch (Exception e) {
            result.put("msg","错误提示");
        }
        result.put("result", res);
        return JSONObject.toJSON(result);
    }
    @RequestMapping(value = "/xuexiao", method = RequestMethod.POST)
    @ResponseBody
    public Object postXueXiao(@RequestBody Map<String, String> map) {
        Object res = false;
        Map<String, Object> result = new HashMap<String, Object>();
        try {
            XueXiao xueXiao = new XueXiao();
            if (map.containsKey("学校ID")) {
                int i = Integer.parseInt(map.get("学校ID"));
                xueXiao.setId(i);
            }
            if (map.containsKey("学校名称")) {
                xueXiao.setXueXiaoMingCheng(map.get("学校名称"));
            }
            int i = commonService.insertXueXiao(xueXiao);
            if(i==1){
                res = true;
                result.put("data",i);
            }
            if(i==0){
                res = false;
                result.put("msg","请检查输入内容");
            }
        } catch (Exception e) {
            result.put("msg","错误提示");
        }
        result.put("result", res);
        return JSONObject.toJSON(result);
    }
    @RequestMapping(value = "/jiaoshi", method = RequestMethod.POST)
    @ResponseBody
    public Object postJiaoShi(@RequestBody Map<String, String> map) {
        Object res = false;
        Map<String, Object> result = new HashMap<String, Object>();
        try {
            JiaoShi jiaoShi = new JiaoShi();
            if (map.containsKey("学校ID")) {
                int i = Integer.parseInt(map.get("学校ID"));
                jiaoShi.setXuexiao_id(i);
            }
            if (map.containsKey("教师姓名")) {
                jiaoShi.setXingMing(map.get("教师姓名"));
            }
            if (map.containsKey("手机号码")) {
                jiaoShi.setShouJiHaoMa(map.get("手机号码"));
            }
            int i = commonService.insertJiaoShi(jiaoShi);
            if(i==1){
                res = true;
                result.put("data",i);
            }
            if(i==0){
                res = false;
                result.put("msg","请检查输入内容");
            }
        } catch (Exception e) {
            result.put("msg","错误提示");
        }
        result.put("result", res);
        return JSONObject.toJSON(result);
    }
    @RequestMapping(value = "/kemu", method = RequestMethod.POST)
    @ResponseBody
    public Object postKeMu(@RequestBody Map<String, String> map) {
        Object res = false;
        Map<String, Object> result = new HashMap<String, Object>();
        try {
            KeMu keMu = new KeMu();
            if (map.containsKey("科目名称")) {
                keMu.setMingCheng(map.get("科目名称"));
            }
            int i = commonService.insertKeMu(keMu);
            if(i==1){
                res = true;
                result.put("data",i);
            }
            if(i==0){
                res = false;
                result.put("msg","请检查输入内容");
            }
        } catch (Exception e) {
            result.put("msg","错误提示");
        }
        result.put("result", res);
        return JSONObject.toJSON(result);
    }
    @RequestMapping(value = "/PiCiRelation", method = RequestMethod.GET)
    @ResponseBody
    public Object PiCiRelation() {
        Object result = "ERROR";
        try {
            Object all = commonService.selectPiCiRelationXueXiaoAndJiaoShiAndKeMU();
            result = JSONObject.toJSON(all);
        } catch (Exception e) {
        }
        return result;
    }
}
