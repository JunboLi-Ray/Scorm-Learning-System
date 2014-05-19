package com.sls.login.service.impl;

import com.sls.scorm.dao.ScormDao;
import com.sls.user.dao.RoleDao;
import com.sls.user.dao.UserDao;
import com.sls.user.entity.User;
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

    @Autowired
    private ScormDao scormDao;

    public String toIndex(HttpServletRequest request, HttpSession session) {
        String loginName = LoginUserUtil.getLoginName();
        List<User> user = userDao.findInUseUserByLoginName(loginName);
        if (user.size() > 0) {
            session.setAttribute("userId", user.get(0).getUserId());
            if (user.get(0).getRoleId() == roleDao.findRoleByAuthority(DictConstant.ROLE_AUTHORITY_ADMIN).getRoleId()) {
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
            List<User> userList = userDao.findInUseUserByLoginName(LoginUserUtil.getLoginName());
            session.setAttribute("userId", userList.get(0).getUserId());
            modelView.setViewName("/scormadmin/index");
            if (userList.get(0).getRoleId() == roleDao.findRoleByAuthority(DictConstant.ROLE_AUTHORITY_USER).getRoleId()) {
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
        request.setAttribute("scormSum", scormDao.indexFindTopScormByFieldName("register_sum"));
        request.setAttribute("scormScore", scormDao.indexFindTopScormByFieldName("score"));
        request.setAttribute("scormTime", scormDao.indexFindTopScormByFieldName("total_time"));
        request.setAttribute("scormLevel", scormDao.indexFindTopScormByFieldName("recommend_level"));
    }
}
