package com.tat.zhifzgl.kaowu.controller;

import com.alibaba.fastjson.JSONObject;
import com.tat.zhifzgl.common.pojo.XueQi;
import com.tat.zhifzgl.kaowu.pojo.KaoWu;
import com.tat.zhifzgl.kaowu.pojo.KaoWuQueryVo;
import com.tat.zhifzgl.kaowu.service.KaoWuService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by caowe on 2017-02-07.
 */
@Controller
@RequestMapping("/kaowu")
public class KaoWuController {
    @Autowired
    private KaoWuService kaoWuService;

    @RequestMapping("/index")
    public String index(Model model) {

        return "kaowu/index";
    }

    @RequestMapping("/getAllKaoWu")
    public void getAllKaoWu() {
//        List<KaoWu> all = kaoWuService.getAllKaoWu();
//        System.err.println(all.toString());
    }

    @RequestMapping(value = "/getKaoWu", method = RequestMethod.POST)
    @ResponseBody
    public Object getList(@RequestBody Map<String, Object> param) {
        if (param.get("ids").toString().length() < 1) {
            return JSONObject.toJSON("[]");
        } else {
            KaoWuQueryVo vo = new KaoWuQueryVo();
            String xq = null;
            List list = null;
            int i = 0;
            try {
                xq = (String) param.get("xq");
                i = Integer.parseInt(xq);
                list = (ArrayList) param.get("ids");
            } catch (Exception e) {
            }
            vo.setIds(list);
            if (list.size() > 0 && i != 0) {
                XueQi xueQi = new XueQi();
                xueQi.setId(i);
                vo = new KaoWuQueryVo(list, null, xueQi);
            }
            Map<String, Object> result = new HashMap<String, Object>();
            Map<String, Object> data = new HashMap<String, Object>();
            result.put("result", 1);
            data.put("kaoWus", kaoWuService.getKaoWu(vo));
            result.put("data", data);
            return JSONObject.toJSON(result);
        }
    }

    @RequestMapping(value = "/getkaowu", method = RequestMethod.POST)
    @ResponseBody
    public Object getKaoWu(@RequestBody Map<String, Object> param) {
        int kid = 0;
        int res = 0;
        Object data = "错误";
        try {
            kid = (Integer) param.get("KID");
            KaoWu kaoWu = new KaoWu();
            kaoWu.setId(kid);
            data = kaoWuService.getKaoWuById(kaoWu);
        } catch (Exception e) {
        }
        Map<String, Object> result = new HashMap<String, Object>();
        result.put("result", res);
        result.put("data", data);
        return JSONObject.toJSON(result);
    }

    @RequestMapping(value = "/kaowu", method = RequestMethod.POST)
    @ResponseBody
    public Object postKaoWu(@RequestBody KaoWu kaoWu){
        Object res = false;
        Map<String, Object> result = new HashMap<String, Object>();
        try {

            int i = kaoWuService.insertKaoWu(kaoWu);
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
    @RequestMapping(value = "/kaowu", method = RequestMethod.PUT)
    @ResponseBody
    public Object putKaoWu(@RequestBody KaoWu kaoWu){
        Object res = false;
        Map<String, Object> result = new HashMap<String, Object>();
        try {

            int i = kaoWuService.updateKaoWu(kaoWu);
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
    @RequestMapping(value = "/kaowu", method = RequestMethod.DELETE)
    @ResponseBody
    public Object delKaoWu(@RequestBody KaoWu kaoWu){
        Object result = false;
        try {
            kaoWuService.deleteKaoWu(kaoWu);
            result = true;
        } catch (Exception e) {
        }
        return result;
    }

}
