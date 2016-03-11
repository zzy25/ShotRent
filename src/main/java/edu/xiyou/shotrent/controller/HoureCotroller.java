package edu.xiyou.shotrent.controller;

import edu.xiyou.shotrent.constant.UserConstant;
import edu.xiyou.shotrent.exception.ArguException;
import edu.xiyou.shotrent.model.House;
import edu.xiyou.shotrent.model.User;
import edu.xiyou.shotrent.model.vo.ResultVo;
import edu.xiyou.shotrent.utils.ArguUtils;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;

/**
 * Created by andrew on 16-3-10.
 */
@Controller
@RequestMapping("/house")
public class HoureCotroller extends BaseController{

    @RequestMapping("/create.action")
    public String publishHouse() {
        return "publishHoure";
    }

    @RequestMapping("/createData.action")
    public ResultVo<String> publishData(@RequestParam("mobile") String mobile, @RequestParam("tel") String tel,
                                        @RequestParam("houseType") Short houseType, @RequestParam("address") String address,
                                        @RequestParam("area") Integer area, @RequestParam("price") Integer price,
                                        @RequestParam("content") String content, @RequestParam("furniture") String furniture,
                                        @RequestParam("online") Short online, HttpServletRequest request, ModelMap modelMap) {
        ResultVo<String> resultVo = new ResultVo<>();
        House house = new House();
        try {
            ArguUtils.strLengthInterval(mobile, 11, 15, "手机号");
            ArguUtils.strLengthInterval(tel, 7, 15, "固话");
            User user = (User) request.getSession().getAttribute(UserConstant.USER_DETAIL);
            house.setOwerid(user.getId());
            house.setMobile(mobile);
            house.setTel(tel);
            house.setHousetype(houseType);
            house.setAddress(address);
            house.setArea(area);
            house.setPrice(price);
            house.setContent(content);
            house.setOnline(online);
            houseService.addHouse(house);
        } catch (ArguException e) {
            resultVo.setMsg(e.getMessage());
            resultVo.setApproved(false);
        } catch (Exception e) {
            logger.error("publishData record={}, exception={}", house, e);
            resultVo.setApproved(false);
            resultVo.setMsg("输入信息有误，请重新输入");
        }
        return resultVo;
    }

    @RequestMapping(value = "/list/{owerId}.action")
    public String listHouse(HttpServletRequest request, ModelMap modelMap){

        return "listHouse";
    }
}
