package edu.xiyou.shortrent.controller;

import com.google.common.collect.Maps;
import edu.xiyou.shortrent.constant.CommenConstant;
import edu.xiyou.shortrent.constant.UserConstant;
import edu.xiyou.shortrent.exception.ArguException;
import edu.xiyou.shortrent.model.House;
import edu.xiyou.shortrent.model.Order;
import edu.xiyou.shortrent.model.User;
import edu.xiyou.shortrent.model.vo.HouseVo;
import edu.xiyou.shortrent.model.vo.ResultVo;
import edu.xiyou.shortrent.security.RoleSign;
import edu.xiyou.shortrent.service.MailService;
import org.apache.commons.lang.time.DateFormatUtils;
import org.apache.commons.lang.time.DateUtils;
import org.apache.shiro.authz.annotation.RequiresRoles;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Map;

/**
 * Created by andrew on 16-3-9.
 */
@Controller
@RequestMapping("/rent")
public class RentController extends BaseController {

    @Resource
    private MailService mailService;

    @RequestMapping(value = "/listHouses.action")
    public String listHouses(ModelMap modelMap) {
        List<House> houseList = null;
        try {
            houseList = rentService.selectBySelective(new House());
        }catch (Exception e){
            logger.error("findHouses exception={}", e);
        }
        logger.info("listHouses record={}", houseList);
        modelMap.addAttribute("houseList", houseList);
        return "findHouses";
    }

    @RequestMapping(value = "findHouses.action", method = RequestMethod.POST)
    public String findHouses(@RequestParam(value = "maxArea", required = false)Integer maxArea,
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
        houseVo.setMinPrice(minPrice);
        houseVo.setAddressContain(addressContain);
        houseVo.setHouseType(houseType);

        try {
            houseList = rentService.selectByHouseVo(houseVo);
            resultVo.setElement(houseList);
            resultVo.setApproved(true);
            resultVo.setMsg("获取成功");
        }catch (ArguException e){
            resultVo.setApproved(false);
            resultVo.setMsg(e.getMessage());
        }catch (Exception e){
            resultVo.setApproved(false);
            resultVo.setMsg("获取信息失败");
        }
        modelMap.addAttribute("houseList", houseList);
        resultVo.setElement(houseList);
        modelMap.addAttribute("houseVo", houseVo);
        return "findHouses";
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

    @RequestMapping(value = "/ower/orderList.action")
//    @RequiresRoles(RoleSign.owner)
    public String findOrders(HttpServletRequest request, ModelMap modelMap){
        User user = (User) request.getSession().getAttribute(UserConstant.USER_DETAIL);
        if (user == null){
            return "redirect:/user/login.action";
        }
        Integer owerId = user.getId();
        if (owerId == null){
            modelMap.addAttribute(CommenConstant.ERROR, "查找信息不能为空");
            return "orderList";
        }

        List<Order> orderList = null;
        try {
            Order order = new Order();
            order.setOwerid(owerId);
            User emptyUser = new User();
            List<User> userList = userService.selectBySelective(emptyUser);
            Map<Integer, User> userMap = Maps.newHashMap();
            for (User user1 : userList){
                userMap.put(user1.getId(), user1);
            }

            for (Order order1 : orderList){
                User owner = userMap.get(order1.getOwerid());
                order1.setOwerName(owner.getUsername());
                order1.setOwerMobile(owner.getMobile());

                User customer = userMap.get(order1.getCustomer());
                order1.setCustomerMobile(customer.getUsername());
                order1.setCustomerMobile(customer.getMobile());
            }
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
//    @RequiresRoles(RoleSign.customer)
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
//    @RequiresRoles(RoleSign.customer)
    public String createOrder(@RequestParam("houseId")Integer houseId, HttpServletRequest request, ModelMap modelMap){
        User user = (User) request.getSession().getAttribute(UserConstant.USER_DETAIL);
        if (user == null){
            return "redirect:/user/login.action";
        }
        House house = null;
        try {
             house = houseService.selectHouseByHouseId(houseId);
        } catch (Exception e) {
            logger.error("createOrder record={}, exception={}", houseId, e);
        }
        modelMap.addAttribute(UserConstant.USER_DETAIL, user);
        modelMap.addAttribute("house", house);
        return "createOrder";
    }

    @ResponseBody
    @RequestMapping(value = "/order/createData.action", method = RequestMethod.POST)
//    @RequiresRoles(RoleSign.customer)
    public ResultVo<Order> createOrderData(@RequestParam("hourseId")Integer hourseId, @RequestParam("owerId")Integer owerId,
                                           @RequestParam("customerId")Integer customerId, @RequestParam("amount")Integer amount,
                                           @RequestParam("beginTime")String beginTimeStr, @RequestParam("endTime")String endTimeStr,
                                           HttpServletRequest request, ModelMap modelMap){

        SimpleDateFormat format = new SimpleDateFormat("yyyy/MM/dd");
        ResultVo<Order> resultVo = new ResultVo<>();
        Order order = new Order();
        order.setHourseid(hourseId);
        order.setOwerid(owerId);
        order.setCustomer(customerId);
        order.setAmount(amount);
        try {
            order.setBegintime(format.parse(beginTimeStr));
            order.setEndtime(format.parse(endTimeStr));
        } catch (ParseException e) {
            e.printStackTrace();
        }

        try {
            User owner = userService.selectByPrimaryKey(owerId);
            User customer = userService.selectByPrimaryKey(customerId);
            orderService.insertBySelective(order);
            if (owner.getEmail() != null && owner.getEmail().length() > 5){
                mailService.sendMail(owner.getEmail(), "您的房子被租了", "您的房子被租了，详情请登录短租网");
            }
            if (customer.getEmail() != null && customer.getEmail().length() > 5){
                mailService.sendMail(customer.getEmail(), "恭喜您租房成功", "恭喜您租房成功，详情请登录租房网");
            }
            resultVo.setApproved(true);
            resultVo.setMsg("添加成功");
        } catch (ArguException e) {
            resultVo.setApproved(false);
            resultVo.setMsg(e.getMessage());
        } catch (Exception e){
            resultVo.setApproved(false);
            resultVo.setMsg("添加失败");
        }
        return resultVo;
    }

    public MailService getMailService() {
        return mailService;
    }

    public void setMailService(MailService mailService) {
        this.mailService = mailService;
    }
}
