package com.sls.user.service.impl;

import com.core.page.entity.Page;
import com.core.page.entity.PageParameter;
import com.sls.scorm.dao.SummarizeDao;
import com.sls.scorm.entity.ScormSummarize;
import com.sls.system.entity.Label;
import com.sls.system.service.DictService;
import com.sls.user.dao.RoleDao;
import com.sls.user.dao.UserDao;
import com.sls.user.dao.UserRoleDao;
import com.sls.user.entity.Role;
import com.sls.user.entity.User;
import com.sls.user.entity.UserLevel;
import com.sls.user.entity.UserRole;
import com.sls.user.service.UserService;
import com.sls.util.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import java.io.IOException;
import java.util.Date;
import java.util.List;

@Service("userService")
public class UserServiceImpl implements UserService {

    @Autowired
    private RoleDao roleDao;

    @Autowired
    private UserDao userDao;

    @Autowired
    private UserRoleDao userRoleDao;

    @Autowired
    private DictService dictService;

    @Autowired
    private SummarizeDao summarizeDao;

    @Override
    public Page<User> findUserPageList(PageParameter pageParameter, User user) {
        Page<User> userPage = userDao.findUserPageList(pageParameter, user);
        for (User user1 : userPage.getResultList()) {
            user1.setShowInUse(dictService.changeDictCodeToValue(user1.getInUse(), DictConstant.STATE));
            user1.setUpLoadScormNum(userDao.findUploadScormNumByUserId(user1.getUserId()));
        }
        return userPage;
    }

    @Override
    public User findUserAllInfoById(int id) {
        return userDao.findUserAllInfoById(id);
    }

    @Override
    public List<User> findUserByLoginName(String loginName) {
        return userDao.findInUseUserByLoginName(loginName);
    }

    @Override
    public Boolean checkRepeatLoginName(String loginName, String oldName) {
        Boolean hasLoginName = userDao.checkRepeatLoginName(loginName);
        return !(hasLoginName && !oldName.equals(loginName));
    }

    @Override
    public Boolean checkRepeatUserName(String userName, String oldName) {
        Boolean hasLoginName = userDao.checkRepeatUserName(userName);
        return !(hasLoginName && !oldName.equals(userName));
    }

    @Override
    public void addUser(User user) {
        user.setInUse(DictConstant.IN_USE);
        user.setRoleId(roleDao.findRoleByAuthority(DictConstant.ROLE_AUTHORITY_USER).getRoleId());
        user.setRegisterDate(DateUtil.getCurrentTimestamp().toString().substring(0, 16));
        user.setUserName(DictConstant.DEFAULT_USER_NAME);
        user.setScore(DictConstant.SCORE_0);
        int id = userDao.addUser(user);
        user.setUserId(id);
        user.setImgUrl(DictConstant.DEFAULT_USER_PHOTO);
        userDao.addUserInfo(user);
        UserRole userRole = new UserRole();
        userRole.setRoleId(user.getRoleId());
        userRole.setUserId(id);
        userRoleDao.addUserRole(userRole);
    }

    @Override
    public void editUser(HttpServletRequest request, User user) {
        User oldUser = userDao.findUserAllInfoById(user.getUserId());
        if (oldUser.getImgUrl().equals(DictConstant.DEFAULT_USER_PHOTO) && oldUser.getUserName().equals(DictConstant.DEFAULT_USER_NAME)) {
            userDao.addScore(DictConstant.EXP_SCORE, user.getUserId());
        }
        user.setUserName(BaseUtil.iso2utf(user.getUserName()));
        userDao.editUser(user);
        request.setAttribute("userName", user.getUserName());
    }

    @Override
    public void upHeadImg(HttpServletRequest request, String upImg) throws ServletException, IOException {
        if (request.getParameter("haveImg").equals("")) {
            return;
        }
        FileUp fileUp = new FileUp();
        User user = new User();
        int userId = userDao.findInUseUserByLoginName(LoginUserUtil.getLoginName()).get(0).getUserId();
        user.setUserId(userId);
        Date date = new Date();
        user.setImgUrl(fileUp.upImg(request, DictConstant.USER_PHOTO_NAME, "", userId + "time" + date.getTime() + DictConstant.PHOTO_FORM, upImg));
        userDao.upUserPhoto(user);
        request.setAttribute("imgUrl", user.getImgUrl());
    }

    @Override
    public boolean checkRepeatLoginName(String loginName) {
        return !userDao.checkRepeatLoginName(loginName);
    }

    @Override
    public void shieldUser(int userId) {
        User user = userDao.findUserAllInfoById(userId);
        if (user.getInUse() == DictConstant.NO_USE) {
            user.setInUse(DictConstant.IN_USE);
        } else {
            user.setInUse(DictConstant.NO_USE);
        }
        userDao.editUseState(user);
    }

    @Override
    public void findUserNextLevelNameByScore(HttpServletRequest request) {
        User user = userDao.findInUseUserByLoginName(LoginUserUtil.getLoginName()).get(0);
        List<UserLevel> nextUserLevel = userDao.findUserNextLevelByScore(user.getScore());
        UserLevel userNowLevel = userDao.findUserNowLevelByScore(user.getScore());
        if (nextUserLevel.size() == 0) {
            request.setAttribute("finalScore", "100");
        } else {
            request.setAttribute("nextLevel", nextUserLevel.get(0).getLevelName());
            request.setAttribute("finalScore", (user.getScore() - userNowLevel.getScore()) * 100 / (nextUserLevel.get(0).getScore() - userNowLevel.getScore()));
        }
    }

    @Override
    public void getPieCharts(HttpServletRequest request) {
        request.setAttribute("userPeiCharts", userDao.getPieChartsByUserId(userDao.findInUseUserByLoginName(LoginUserUtil.getLoginName()).get(0).getUserId()));
    }

    @Override
    public Page<ScormSummarize> findDiscussPageList(PageParameter pageParameter, ScormSummarize scormSummarize) {
        return summarizeDao.findDiscussPageList(pageParameter, scormSummarize);
    }

    @Override
    public void shieldDiscuss(int userId, int scormId) {
        summarizeDao.shieldDiscuss(userId, scormId);
    }
}