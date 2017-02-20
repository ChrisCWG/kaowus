package com.tat.zhifzgl.portal.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by Chris on 2016/10/3.
 */
@Controller
@RequestMapping("/portal")
public class PortalController {

    @RequestMapping("/index")
    public String index(Model model){

        return "portal/index";
    }
}
