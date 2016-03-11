package edu.xiyou.shotrent.controller;

import edu.xiyou.shotrent.constant.UserConstant;
import edu.xiyou.shotrent.exception.ArguException;
import edu.xiyou.shotrent.model.House;
import edu.xiyou.shotrent.model.User;
import edu.xiyou.shotrent.model.vo.ResultVo;
import edu.xiyou.shotrent.utils.ArguUtils;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import java.util.Date;
import java.util.List;

/**
 * Created by andrew on 16-3-10.
 */
@Controller
@RequestMapping("/house")
public class HoureCotroller extends BaseController{

    @RequestMapping("/create.action")
    public String createHouse() {
        return "publishHoure";
    }

    @RequestMapping("/createData.action")
    public ResultVo<String> createData(@RequestParam("mobile") String mobile, @RequestParam("tel") String tel,
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
            house.setCreatetime(new Date());
            house.setUpdatetime(new Date());
            houseService.addHouse(house);
        } catch (ArguException e) {
            resultVo.setMsg(e.getMessage());
            resultVo.setApproved(false);
        } catch (Exception e) {
            logger.error("createData record={}, exception={}", house, e);
            resultVo.setApproved(false);
            resultVo.setMsg("输入信息有误，请重新输入");
        }
        return resultVo;
    }

    @RequestMapping(value = "/ower/{owerId}.action")
    public String listHouse(@PathVariable Integer owerid, HttpServletRequest request, ModelMap modelMap){
        List<House> houseList = null;
        try {
            houseList = houseService.selectHouseByOweId(owerid);
        }catch (Exception e){
            logger.error("listHouse owerId={}, exception={}", owerid, e);
        }
        modelMap.addAttribute("houseList", houseList);
        return "listHouse";
    }

    @RequestMapping(value = "/${houseId}.action")
    public String getHouse(@PathVariable Integer houseId, HttpServletRequest request, ModelMap modelMap){
        House house = null;
        try {
            house = houseService.selectHouseByHouseId(houseId);
        }catch (Exception e){
            logger.error("getHouse houseId={}, exception={}", houseId, e);
        }
        modelMap.addAttribute("house", house);
        return "houseInfo";
    }

    @RequestMapping(value = "/update.action")
    public String updateHouse(@PathVariable Integer houseId, HttpServletRequest request, ModelMap modelMap){
        House house = null;
        try {
            house = houseService.selectHouseByHouseId(houseId);
        }catch (Exception e){
            logger.error("getHouse houseId={}, exception={}", houseId, e);
        }
        modelMap.addAttribute("house", house);
        return "updateHouse";
    }

    @ResponseBody
    @RequestMapping(value = "/updateData.action", method = RequestMethod.POST)
    public ResultVo<House> updateHouseData(@RequestParam("houseId")Integer houseId,
                                       @RequestParam(value = "mobile", required = false)String mobile,
                                       @RequestParam(value = "tel", required = false)String tel,
                                       @RequestParam(value = "price", required = false)Integer price,
                                       @RequestParam(value = "content", required = false)String content,
                                       @RequestParam(value = "furniture", required = false)String furniture,
                                       @RequestParam(value = "online", required = false)short online,
                                       @RequestParam(value = "checked", required = false)short checked,
                                       @RequestParam(value = "rented", required = false)short rented,
                                       HttpServletRequest request, ModelMap modelMap){
        ResultVo<House> resultVo = new ResultVo<>();
        House house = new House();
        house.setId(houseId);
        house.setMobile(mobile);
        house.setTel(tel);
        house.setPrice(price);
        house.setContent(content);
        house.setFurniture(furniture);
        house.setOnline(online);
        house.setChecked(checked);
        house.setRented(rented);
        house.setUpdatetime(new Date());

        try {
            houseService.updateHouse(house);
            resultVo.setApproved(true);
            resultVo.setMsg("更新成功");
        }catch (ArguException e){
            resultVo.setMsg(e.getMessage());
            resultVo.setApproved(false);
        }catch (Exception e){
            resultVo.setMsg("输入信息有误");
            resultVo.setApproved(false);
        }
        return resultVo;
    }
}
