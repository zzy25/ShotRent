package edu.xiyou.shotrent.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by andrew on 16-3-9.
 */
@Controller
public class CommonController {

    @RequestMapping(value = "index.action")
    public String index(){
        return "index";
    }
}
