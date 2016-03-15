package edu.xiyou.shortrent.controller;

import edu.xiyou.shortrent.constant.CommenConstant;
import edu.xiyou.shortrent.constant.UserConstant;
import edu.xiyou.shortrent.exception.ArguException;
import edu.xiyou.shortrent.model.House;
import edu.xiyou.shortrent.model.Order;
import edu.xiyou.shortrent.model.User;
import edu.xiyou.shortrent.model.vo.HouseVo;
import edu.xiyou.shortrent.model.vo.ResultVo;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import java.util.Date;
import java.util.List;

/**
 * Created by andrew on 16-3-9.
 */
@Controller
@RequestMapping("/rent")
public class RentController extends BaseController {

    @RequestMapping(value = "/listHouses.action")
    public String listHouses(ModelMap modelMap) {
        List<House> houseList = null;
        try {
            houseList = rentService.selectBySelective(new House());
        }catch (Exception e){
            logger.error("findHouses exception={}", e);
        }
        modelMap.addAttribute("houseList", houseList);
        return "findHouses";
    }

    @ResponseBody
    @RequestMapping(value = "/findHouses.action", method = RequestMethod.POST)
    public ResultVo<List<House>> findHouses(@RequestParam(value = "maxArea", required = false)Integer maxArea,
                                            @RequestParam(value = "minArea", required = false)Integer minArea,
                                            @RequestParam(value = "maxPrice", required = false)Integer maxPrice,
                                            @RequestParam(value = "minPrice", required = false)Integer minPrice,
                                            @RequestParam(value = "addressContain", required = false)String addressContain,
                                            @RequestParam(value = "houseType", required = false) Short houseType,
                                            HttpServletRequest request, ModelMap modelMap){
        ResultVo<List<House>> resultVo = new ResultVo<>();
        List<House> houseList = null;
        HouseVo houseVo = new HouseVo();
        houseVo.setMaxArea(maxArea);
        houseVo.setMinArea(minArea);
        houseVo.setMaxPrice(maxPrice);
        houseVo.setMinArea(minArea);
        houseVo.setAddressContain(addressContain);
        houseVo.setHouseType(houseType);

        try {
            houseList = rentService.selectByHouseVo(houseVo);
            resultVo.setApproved(true);
            resultVo.setMsg("获取成功");
        }catch (ArguException e){
            resultVo.setApproved(false);
            resultVo.setMsg(e.getMessage());
        }catch (Exception e){
            resultVo.setApproved(false);
            resultVo.setMsg("获取信息失败");
        }
        resultVo.setElement(houseList);
        return resultVo;
    }

    @RequestMapping(value = "/{houseId}.action")
    public String findHouse(@PathVariable Integer houseId, HttpServletRequest request, ModelMap modelMap){
        if (houseId == null){
            modelMap.addAttribute(CommenConstant.ERROR, "查找信息不能为空");
            return "houseInfo";
        }

        House house = null;
        try {
            house = rentService.selectByPrimaryKey(houseId);
            User user = null;
            if (house != null && house.getOwerid() != null){
                user = userService.selectByPrimaryKey(house.getOwerid());
            }
            if (user != null && user.getUsername() != null){
                house.setOwerName(user.getUsername());
            }
        } catch (ArguException e){
            modelMap.addAttribute(CommenConstant.ERROR, e.getMessage());
        } catch (Exception e){
            modelMap.addAttribute(CommenConstant.ERROR, "房子信息有误");
        }
        modelMap.addAttribute("house", house);
        return "houseInfo";
    }

    @RequestMapping(value = "/ower/{owerId}.action")
    public String findOrders(@PathVariable Integer owerId, HttpServletRequest request, ModelMap modelMap){
        if (owerId == null){
            modelMap.addAttribute(CommenConstant.ERROR, "查找信息不能为空");
            return "orderList";
        }

        List<Order> orderList = null;
        try {
            Order order = new Order();
            order.setOwerid(owerId);
            orderList = orderService.selectBySelective(order);
        }catch (Exception e){
            logger.error("orderList owerId={}, exception={}", owerId, e);
        }
        modelMap.addAttribute("orderList", orderList);
        return "orderList";
    }

    @RequestMapping(value = "/order/${orderId}.action")
    public String findOrder(@PathVariable Integer orderId, HttpServletRequest request, ModelMap modelMap){
        if (orderId == null){
            modelMap.addAttribute(CommenConstant.ERROR, "查找信息不能为空");
            return "orderDetail";
        }
        Order order = null;

        try {
            order = orderService.selectByPrimaryKey(orderId);
        } catch (Exception e) {
            logger.error("findOrder orderId={}, exception={}", orderId, e);
        }
        modelMap.addAttribute("order", order);
        return "orderDetail";
    }

    @RequestMapping(value = "/order/update/${orderId}.action")
    public String updateOrder(@PathVariable Integer orderId, HttpServletRequest request, ModelMap modelMap){
        if (orderId == null){
            modelMap.addAttribute(CommenConstant.ERROR, "订单信息不能为空");
            return "updateOrder";
        }
        Order order = null;

        try {
            order = orderService.selectByPrimaryKey(orderId);
        } catch (Exception e) {
            logger.error("findOrder orderId={}, exception={}", orderId, e);
        }
        modelMap.addAttribute("order", order);

        return "updateOrder";
    }

    @ResponseBody
    @RequestMapping(value = "/order/updateData/${orderId}.action", method = RequestMethod.POST)
    public ResultVo<Order> updateOrderData(@PathVariable Integer orderId, @RequestParam("houseId")Integer houseId,
                                           @RequestParam("owerId")Integer owerId, @RequestParam("customerId")Integer customerId,
                                           @RequestParam(value = "amount", required = false)Integer amount,
                                           @RequestParam(value = "endTime", required = false)Date endTime,
                                           @RequestParam(value = "startTime", required = false)Date startTime,
                                           @RequestParam(value = "terminate", required = false)Short terminate,
                                           HttpServletRequest request, ModelMap modelMap){
        ResultVo<Order> resultVo = new ResultVo<>();
        Order order = new Order();
        order.setId(orderId);
        order.setOwerid(owerId);
        order.setCustomer(customerId);
        order.setAmount(amount);
        order.setEndtime(endTime);
        order.setTerminate(terminate);
        resultVo.setElement(order);
        if (amount == null || terminate == null || endTime == null){
            resultVo.setMsg("请输入正确的信息");
            resultVo.setApproved(true);
            return resultVo;
        }

        try {
            orderService.updateBySelective(order);
            resultVo.setApproved(true);
            resultVo.setMsg("修改成功");
        } catch (ArguException e) {
            resultVo.setMsg(e.getMessage());
            resultVo.setApproved(false);
        } catch (Exception e){
            resultVo.setApproved(false);
            resultVo.setMsg("请填写正确的信息");
        }
        return resultVo;
    }

    @RequestMapping(value = "/order/create.action")
    public String createOrder(HttpServletRequest request, ModelMap modelMap){
        modelMap.addAttribute(UserConstant.USER_DETAIL, request.getSession().getAttribute(UserConstant.USER_DETAIL));
        return "createOrder";
    }

    @ResponseBody
    @RequestMapping(value = "/order/createData.action", method = RequestMethod.POST)
    public ResultVo<Order> createOrderData(@RequestParam("hourseId")Integer hourseId, @RequestParam("owerId")Integer owerId,
                                           @RequestParam("customerId")Integer customerId, @RequestParam("amount")Integer amount,
                                           @RequestParam("beginTime")Date beginTime, @RequestParam("endTime")Date endTime,
                                           HttpServletRequest request, ModelMap modelMap){

        ResultVo<Order> resultVo = new ResultVo<>();
        Order order = new Order();
        order.setHourseid(hourseId);
        order.setOwerid(owerId);
        order.setCustomer(customerId);
        order.setAmount(amount);
        order.setBegintime(beginTime);
        order.setEndtime(endTime);

        try {
            orderService.insertBySelective(order);
            resultVo.setApproved(true);
            resultVo.setMsg("查找成功");
        } catch (ArguException e) {
            resultVo.setApproved(false);
            resultVo.setMsg(e.getMessage());
        } catch (Exception e){
            resultVo.setApproved(false);
            resultVo.setMsg("查找失败");
        }
        return resultVo;
    }
}
