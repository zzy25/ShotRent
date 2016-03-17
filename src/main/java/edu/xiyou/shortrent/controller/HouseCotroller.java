package edu.xiyou.shortrent.controller;

import com.google.common.collect.Maps;
import edu.xiyou.shortrent.constant.HouseConstant;
import edu.xiyou.shortrent.constant.UserConstant;
import edu.xiyou.shortrent.exception.ArguException;
import edu.xiyou.shortrent.model.House;
import edu.xiyou.shortrent.model.Role;
import edu.xiyou.shortrent.model.User;
import edu.xiyou.shortrent.model.vo.ResultVo;
import edu.xiyou.shortrent.security.PermissionSign;
import edu.xiyou.shortrent.security.RoleSign;
import edu.xiyou.shortrent.utils.ArguUtils;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.apache.shiro.authz.annotation.RequiresRoles;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import java.util.Date;
import java.util.List;
import java.util.Map;

/**
 * Created by andrew on 16-3-10.
 */
@Controller
@RequestMapping("/house")
public class HouseCotroller extends BaseController{

    @RequestMapping("/create.action")
//    @RequiresPermissions(value = PermissionSign.HOUSE_CREATE)
    public String createHouse(ModelMap modelMap) {
        modelMap.addAttribute("action", "<%=basePath%>house/createData.action");
        return "publishHoure";
    }

    @ResponseBody
    @RequestMapping(value = "/createData.action", method = RequestMethod.POST)
//    @RequiresPermissions(value = PermissionSign.HOUSE_CREATE)
    public ResultVo<House> createData(@RequestParam("mobile") String mobile, @RequestParam("tel") String tel,
                                        @RequestParam(value = "houseType" , defaultValue = "1", required = false) Short houseType, @RequestParam("address") String address,
                                        @RequestParam("area") Integer area, @RequestParam("price") Integer price,
                                        @RequestParam("content") String content,
                                       @RequestParam(value = "furniture", defaultValue = "", required = false) String furniture,
                                        @RequestParam(value = "online", defaultValue = "1", required = false) Short online, HttpServletRequest request, ModelMap modelMap) {
        ResultVo<House> resultVo = new ResultVo<>();
        House house = new House();
        try {
            ArguUtils.strLengthInterval(mobile, 11, 15, "手机号");
            ArguUtils.strLengthInterval(tel, 7, 15, "固话");
            User user = (User) request.getSession().getAttribute(UserConstant.USER_DETAIL);
            if (user == null){
                resultVo.setMsg("请先登录");
                resultVo.setApproved(false);
                return resultVo;
            }
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
            resultVo.setElement(house);
            resultVo.setApproved(true);
            resultVo.setMsg("添加成功");
        } catch (ArguException e) {
            resultVo.setMsg(e.getMessage());
            resultVo.setApproved(false);
        } catch (Exception e) {
            logger.error("createData record={}, exception={}", house, e);
            resultVo.setApproved(false);
            resultVo.setMsg("输入信息有误，请重新输入");
        }
        modelMap.addAttribute("result", resultVo);
        modelMap.addAttribute("house", house);
        return resultVo;
    }

    @RequestMapping(value = "/ower/houseList.action")
//    @RequiresRoles(value = RoleSign.owner)
    public String listHouse(HttpServletRequest request, ModelMap modelMap){
        User user = (User) request.getSession().getAttribute(UserConstant.USER_DETAIL);
        if (user == null){
            return "redirect:/user/login.action";
        }
        Integer owerid = user.getId();
        List<House> houseList = null;
        try {
            User emptyUser = new User();
            List<User> userList = userService.selectBySelective(emptyUser);
            Map<Integer, String> map = Maps.newHashMap();
            for (User element : userList){
                map.put(element.getId(), element.getUsername());
            }
            houseList = houseService.selectHouseByOweId(owerid);
            for (House house : houseList){
                house.setOwerName(map.get(house.getOwerid()));
            }
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

    @RequestMapping(value = "/update/{houseId}.action")
//    @RequiresPermissions(PermissionSign.HOUSE_UPDATE)
    public String updateHouse(@PathVariable Integer houseId, HttpServletRequest request, ModelMap modelMap){
        House house = null;
        try {
            house = houseService.selectHouseByHouseId(houseId);
        }catch (Exception e){
            logger.error("getHouse houseId={}, exception={}", houseId, e);
        }
        modelMap.addAttribute("house", house);
//        modelMap.addAttribute("action", "<%=basePath%>house/updateData.action");
        return "publishHoure";
    }

    @ResponseBody
    @RequestMapping(value = "/updateData.action", method = RequestMethod.POST)
//    @RequiresPermissions(PermissionSign.HOUSE_UPDATE)
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
        /*modelMap.addAttribute("house", house);
        modelMap.addAttribute("result", resultVo);*/
        return resultVo;
    }

    @RequestMapping(value = "/checkHouse.action")
//    @RequiresRoles(RoleSign.admin)
    public String checkHouseList(HttpServletRequest request, ModelMap modelMap){
        List<House> houseList = null;
        House house = new House();

        try {
            house.setChecked(HouseConstant.HOUSE_CHECKED);
            house.setOnline(HouseConstant.HOUSE_ONLINE);
            houseList = houseService.selectBySelective(house);
            User emptyUser = new User();
            List<User> userList = userService.selectBySelective(emptyUser);
            Map<Integer, User> map = Maps.newHashMap();
            for (User user : userList){
                map.put(user.getId(), user);
            }
            for (House house1 : houseList){
                house1.setOwerName(map.get(house1.getOwerid()).getUsername());
            }
        }catch (Exception e){
            logger.error("checkHouseList record={}, exception={}", house, e);
        }
        modelMap.addAttribute("houseList", houseList);
        return "houseCheck";
    }

    @ResponseBody
    @RequestMapping(value = "/check/{houseId}.action", method = RequestMethod.POST)
//    @RequiresRoles(RoleSign.admin)
    public ResultVo<House> checkHouse(@PathVariable Integer houseId,@RequestParam("checked") Short checked,
                                      HttpServletRequest request, ModelMap modelMap){
        ResultVo<House> resultVo = new ResultVo<>();
        House house = new House();
        house.setId(houseId);
        house.setChecked(checked);
        resultVo.setElement(house);
        try {
            ArguUtils.notNull(houseId, "房子信息");
            ArguUtils.notNull(checked, "审核信息");
            houseService.updateHouse(house);
            resultVo.setApproved(true);
            resultVo.setMsg("更新信息成功");
        } catch (ArguException e) {
            resultVo.setApproved(false);
            resultVo.setMsg(e.getMessage());
            logger.error("checkHouse houseId={}, exception={}", houseId, e);
        } catch (Exception e){
            resultVo.setApproved(false);
            resultVo.setMsg("更新信息失败");
        }
        return resultVo;
    }

    @ResponseBody
    @RequestMapping(value = "/online/{houseId}.action", method = RequestMethod.POST)
//    @RequiresRoles(RoleSign.admin)
    public ResultVo<House> onlineHouse(@PathVariable Integer houseId,@RequestParam("online") Short online,
                                      HttpServletRequest request, ModelMap modelMap){
        ResultVo<House> resultVo = new ResultVo<>();
        House house = new House();
        house.setId(houseId);
        house.setOnline(online);
        resultVo.setElement(house);
        try {
            ArguUtils.notNull(houseId, "房子信息");
            ArguUtils.notNull(online, "审核信息");
            houseService.updateHouse(house);
            resultVo.setApproved(true);
            resultVo.setMsg("更新信息成功");
        } catch (ArguException e) {
            resultVo.setApproved(false);
            resultVo.setMsg(e.getMessage());
            logger.error("checkHouse houseId={}, exception={}", houseId, e);
        } catch (Exception e){
            resultVo.setApproved(false);
            resultVo.setMsg("更新信息失败");
        }
        return resultVo;
    }
}
