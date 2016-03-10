package edu.xiyou.shotrent.controller;

import edu.xiyou.shotrent.model.House;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

/**
 * Created by andrew on 16-3-9.
 */
@Controller
public class RentController extends BaseController{

    @RequestMapping(value = "findHouses.action")
    public String findHouses(ModelMap modelMap){
        List<House> houseList;
        houseList = rentService.selectBySelective(new House());
        modelMap.addAttribute("houseList", houseList);
        return "findHouses";
    }
}
