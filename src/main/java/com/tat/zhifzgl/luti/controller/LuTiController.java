package com.tat.zhifzgl.luti.controller;

import com.alibaba.fastjson.JSONObject;
import com.tat.zhifzgl.luti.pojo.LuTi;
import com.tat.zhifzgl.luti.pojo.PiCi;
import com.tat.zhifzgl.luti.pojo.ShenHe;
import com.tat.zhifzgl.luti.service.LuTiService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.HashMap;
import java.util.Map;

/**
 * Created by caowe on 2017-02-08.
 */
@Controller
public class LuTiController {
    @Autowired
    private LuTiService luTiService;

    @RequestMapping("/luti/index")
    public String index(Model model) {

        return "luti/index";
    }

    @RequestMapping(value = "/pici", method = RequestMethod.POST)
    @ResponseBody
    public Object postPiCi(@RequestBody PiCi piCi) {
        Object res = false;
        Map<String, Object> result = new HashMap<String, Object>();
        try {
            int i = 2;
            if (piCi.getId() == 0) {
                i = luTiService.insetPiCi(piCi);

            } else {
                i = luTiService.updatePiCi(piCi);
            }
            if (i == 1) {
                res = true;
                result.put("data", i);
            }
            if (i == 2) {
                res = false;
                result.put("msg", "请检查输入内容");
            }
        } catch (Exception e) {
            result.put("msg", "错误提示");
        }
        result.put("result", res);
        return JSONObject.toJSON(result);
    }

    @RequestMapping(value = "/pici", method = RequestMethod.GET)
    @ResponseBody
    public Object getPiCi() {
        Object result = "ERROR";
        try {
            Object all = luTiService.selectPiCis(null);
            result = JSONObject.toJSON(all);
        } catch (Exception e) {
        }
        return result;
    }

    @RequestMapping(value = "/pici", method = RequestMethod.PUT)
    @ResponseBody
    public Object putPiCi(@RequestBody PiCi piCi) {
        Object result = "ERROR";
        try {
            Object all = luTiService.selectPiCis(piCi);
            result = JSONObject.toJSON(all);
        } catch (Exception e) {
        }
        return result;
    }
    @RequestMapping(value = "/luTiRelation", method = RequestMethod.GET)
    @ResponseBody
    public Object luTiRelation() {
        Object result = "ERROR";
        try {
            Object all = luTiService.selectLuTiRelationPiCiAndUser();
            result = JSONObject.toJSON(all);
        } catch (Exception e) {
        }
        return result;
    }
    @RequestMapping(value = "/luti/PiCiRelation", method = RequestMethod.GET)
    @ResponseBody
    public Object piCiRelation() {
        Object result = "ERROR";
        try {
            Object all = luTiService.selectLuTiRelationPiCiInUser();
            result = JSONObject.toJSON(all);
        } catch (Exception e) {
        }
        return result;
    }
    @RequestMapping(value = "/luti", method = RequestMethod.POST)
    @ResponseBody
    public Object postLuti(@RequestBody LuTi luti) {
        Object res = false;
        Map<String, Object> result = new HashMap<String, Object>();
        try {
            int i = 2;
            if (luti.getId() == 0) {
                i = luTiService.insertLuTi(luti);
            } else {
                i = luTiService.updateLuTi(luti);
            }
            if (i == 1) {
                res = true;
                result.put("data", i);
            }
            if (i == 2) {
                res = false;
                result.put("msg", "请检查输入内容");
            }
        } catch (Exception e) {
            result.put("msg", "错误提示");
        }
        result.put("result", res);
        return JSONObject.toJSON(result);
    }
    @RequestMapping(value = "/luti", method = RequestMethod.GET)
    @ResponseBody
    public Object getLuTi() {
        Object result = "ERROR";
        try {
            Object all = luTiService.selectLuTis(null);
            result = JSONObject.toJSON(all);
        } catch (Exception e) {
        }
        return result;
    }
    @RequestMapping(value = "/luti", method = RequestMethod.PUT)
    @ResponseBody
    public Object putLuTi(@RequestBody LuTi luTi) {
        Object result = "ERROR";
        try {
            Object all = luTiService.selectLuTis(luTi);
            result = JSONObject.toJSON(all);
        } catch (Exception e) {
        }
        return result;
    }
    @RequestMapping(value = "/shenhe", method = RequestMethod.POST)
    @ResponseBody
    public Object postShenHe(@RequestBody ShenHe shenHe) {
        Object res = false;
        Map<String, Object> result = new HashMap<String, Object>();
        try {
            int i = 2;
            if (shenHe.getId() == 0) {
                i = luTiService.insertShenHe(shenHe);
                int s = i;
            } else {
                i = luTiService.updateShenHe(shenHe);
            }
            if (i == 1) {
                res = true;
                result.put("data", i);
            }
            if (i == 2) {
                res = false;
                result.put("msg", "请检查输入内容");
            }
        } catch (Exception e) {
            result.put("msg", "错误提示");
        }
        result.put("result", res);
        return JSONObject.toJSON(result);
    }
    @RequestMapping(value = "/shenhe", method = RequestMethod.PUT)
    @ResponseBody
    public Object putShenHe(@RequestBody ShenHe shenhe) {
        Object result = "ERROR";
        try {
            Object all = luTiService.selectShenHe(shenhe);
            result = JSONObject.toJSON(all);
        } catch (Exception e) {
        }
        return result;
    }
    @RequestMapping(value = "/shenhe", method = RequestMethod.DELETE)
    @ResponseBody
    public Object delShenHe(@RequestBody ShenHe shenhe) {
        Object result = false;
        try {
            luTiService.deleteShenHe(shenhe);
            result = true;
        } catch (Exception e) {
        }
        return result;
    }
    @RequestMapping(value = "/luti", method = RequestMethod.DELETE)
    @ResponseBody
    public Object delLuTi(@RequestBody LuTi luTi) {
        Object result = false;
        try {
            luTiService.deleteLuTi(luTi);
            result = true;
        } catch (Exception e) {
        }
        return result;
    }
    @RequestMapping(value = "/pici", method = RequestMethod.DELETE)
    @ResponseBody
    public Object delShenHe(@RequestBody PiCi piCi) {
        Object result = false;
        try {
            luTiService.deletePiCi(piCi);
            result = true;
        } catch (Exception e) {
        }
        return result;
    }
}
