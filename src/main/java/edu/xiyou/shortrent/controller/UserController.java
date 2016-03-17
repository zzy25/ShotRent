package edu.xiyou.shortrent.controller;

import edu.xiyou.shortrent.constant.UserConstant;
import edu.xiyou.shortrent.exception.ArguException;
import edu.xiyou.shortrent.exception.AuthException;
import edu.xiyou.shortrent.model.User;
import edu.xiyou.shortrent.model.vo.ResultVo;
import edu.xiyou.shortrent.utils.ArguUtils;
import edu.xiyou.shortrent.utils.HttpUtils;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.servlet.http.HttpServletRequest;
import java.util.Date;

/**
 * Created by andrew on 16-3-9.
 */
@Controller
@RequestMapping(value = "/user")
public class UserController extends BaseController {

    @RequestMapping(value = "/login.action")
    public String login() {
        return "login";
    }

    @RequestMapping(value = "/logout.action")
    public String logout(HttpServletRequest request, ModelMap modelMap) {
        request.getSession().removeAttribute(UserConstant.USER_DETAIL);
        return "redirect:" + HttpUtils.getBasePath(request);
    }

    @ResponseBody
    @RequestMapping(value = "/loginData.action", method = RequestMethod.POST)
    public ResultVo<String> loginCheck(@RequestParam(value = "username") String username,
                                   @RequestParam(value = "password") String password,
                                   HttpServletRequest request, ModelMap modelMap) {
        ResultVo<String> resultVo = new ResultVo<>();

        try {
            ArguUtils.notNull(username, "用户名");
            ArguUtils.strLengthInterval(username, 2, 30, "用户名");
            ArguUtils.notNull(password, "密码");
            ArguUtils.strLengthInterval(password, 6, 30, "密码");

            User user = userService.loginCheck(username, password);
            request.getSession().setAttribute(UserConstant.USER_DETAIL, user);
            resultVo.setMsg("登陆成功");
            resultVo.setApproved(true);
        } catch (ArguException e) {
            resultVo.setMsg(e.getMessage());
            resultVo.setApproved(false);
        } catch (Exception e) {
            logger.error("loginCheck exception={}", e);
            resultVo.setMsg("账号或密码错误");
            resultVo.setApproved(false);
        }

        modelMap.addAttribute("result", resultVo.getMsg());
        return resultVo;
    }

    @RequestMapping(value = "/addUser.action")
    public String addUser(){
        return "addUser";
    }


    @ResponseBody
    @RequestMapping(value = "/postUser.action", method = RequestMethod.POST)
    public ResultVo<String> addUserData(@RequestParam("username") String username,
                                    @RequestParam("password") String password,
                                    @RequestParam("email") String email,
                                    @RequestParam("mobile") String mobile,
                                    HttpServletRequest request, ModelMap modelMap) {
        ResultVo<String> resultVo = new ResultVo<>();
        User user = new User();

        try {
            user.setUsername(username);
            user.setPassword(password);
            user.setEmail(email);
            user.setMobile(mobile);
            user.setCreatetime(new Date());
            user.setUpdatetime(new Date());
            userService.addUser(user);
        } catch (AuthException e) {
            resultVo.setMsg(e.getMessage());
            resultVo.setApproved(false);
        } catch (Exception e) {
            logger.error("addUser record={}, exception={}", user, e);
            resultVo.setMsg("账户创建失败");
            resultVo.setApproved(false);
        }

        modelMap.addAttribute("result", resultVo);

        return resultVo;
    }

    @RequestMapping(value = "update/{userId}.action")
    public String updateUser(@PathVariable Integer userId, ModelMap modelMap){
        User user;
        try {
            user = userService.selectByPrimaryKey(userId);
            modelMap.addAttribute("user", user);
        }catch (Exception e){
            logger.error("updateUser record={}, exception={}", userId, e);
        }
        return "updateUser";
    }

    @ResponseBody
    @RequestMapping(value = "updateData/{userId}.action", method = RequestMethod.POST)
    public ResultVo<User> updateUserData(@PathVariable Integer userId, @RequestParam(value = "username", required = false)String username,
                                         @RequestParam(value = "password", required = false)String password, @RequestParam(value = "mobile", required = false)String mobile,
                                         @RequestParam(value = "email", required = false)String email,@RequestParam(value = "permission", required = false)Short permission,
                                         HttpServletRequest request, ModelMap modelMap){

        User user = new User();
        user.setId(userId);
        user.setUsername(username);
        user.setPassword(password);
        user.setMobile(mobile);
        user.setEmail(email);
        user.setPermission(permission);
        user.setCreatetime(new Date());
        user.setUpdatetime(new Date());
        ResultVo<User> resultVo = new ResultVo<>();
        resultVo.setElement(user);
        try {
            userService.updateBySelective(user);
            resultVo.setApproved(true);
            resultVo.setMsg("修改成功");
        }catch (ArguException e){
            resultVo.setApproved(false);
            resultVo.setMsg(e.getMessage());
        }catch (Exception e){
            logger.error("updateUserData record={}, exception={}", user, e);
            resultVo.setApproved(false);
            resultVo.setMsg("输入信息有误");
        }
        return resultVo;
    }
}
