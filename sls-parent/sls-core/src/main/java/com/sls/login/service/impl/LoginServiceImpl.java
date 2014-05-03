package com.sls.login.service.impl;

import com.sls.admin.dao.RoleDao;
import com.sls.admin.dao.UserDao;
import com.sls.admin.entity.User;
import com.sls.login.service.LoginService;
import com.sls.util.DictConstant;
import com.sls.util.LoginUserUtil;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;

@Service("loginService")
public class LoginServiceImpl implements LoginService {

    @Autowired
    private UserDao userDao;

    @Autowired
    private RoleDao roleDao;

    public String toIndex(HttpServletRequest request) {
        String loginName = LoginUserUtil.findLoginUserName();
        List<User> user = userDao.findUserByLoginName(loginName);
        if (user.size() > 0) {
            if (user.get(0).getRoleId() == roleDao.findRoleByRoleName(DictConstant.ADMIN).getId()) {
                return "/scormadmin/index";
            }
        }
        setIndexInfo(request);
        return "/scormfront/index";
    }

    public ModelAndView loginResult(HttpServletRequest request, User user, HttpSession session) {
        ModelAndView modelView = new ModelAndView();
        Subject currentUser = SecurityUtils.getSubject();
        UsernamePasswordToken token = new UsernamePasswordToken(user.getLoginName(), user.getPassword());
        token.setRememberMe(true);
        try {
            currentUser.login(token);
        } catch (Exception e) {
            modelView.addObject("message", "password error！");
            modelView.setViewName("/scormfront/login");
        }
        if (currentUser.isAuthenticated()) {
            List<User> userList = userDao.findUserByLoginName(LoginUserUtil.findLoginUserName());
            session.setAttribute("userId", userList.get(0).getId());
            modelView.setViewName("/scormadmin/index");
            if (userList.get(0).getRoleId() == roleDao.findRoleByRoleName(DictConstant.USER).getId()) {
                setIndexInfo(request);
                modelView.setViewName("/scormfront/index");
            }
        } else {
            modelView.addObject("message", "password error！");
            modelView.setViewName("/scormfront/login");
        }
        return modelView;
    }

    public void setIndexInfo(HttpServletRequest request) {
        String userId = LoginUserUtil.findLoginUserName();
        if (userId != "") {
            //todo ,用户信息
        }
        //todo 首页需要显示的信息
    }
}