package com.sls.front;

import com.sls.scorm.entity.Scorm;
import com.sls.scorm.service.ScormService;
import com.sls.scorm.service.UserCenterService;
import com.sls.util.DictConstant;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.xml.sax.SAXException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.xml.parsers.ParserConfigurationException;
import javax.xml.xpath.XPathExpressionException;
import java.io.IOException;

@Controller
@Transactional
@RequestMapping("/user/center/")
public class UserCenterController {

    @Autowired
    private UserCenterService userCenterService;

    @Autowired
    private ScormService upScormService;

    @RequestMapping(value = "userCenterDo", method = {RequestMethod.GET})
    public String userCenter(HttpServletRequest request) {
        userCenterService.toUserCenter(request);
        return "scormfront/usercenter/userCenter";
    }

    //个人中心  上传课件
    @RequestMapping(value = "upScormDo", method = {RequestMethod.GET})
    public String upScormDo() {
        return "scormfront/usercenter/upscorm/upScorm";
    }

    @RequestMapping(value = "upScorm", method = {RequestMethod.POST})
    public String upScorm(HttpServletRequest request, @RequestParam("scormName") String scormName) throws ServletException, IOException, ParserConfigurationException, SAXException,
            XPathExpressionException {
        upScormService.upScorm(request, "upScorm", "upImg", scormName);
        request.setAttribute("noSuccess", DictConstant.NO_SUCCESS);
        return "scormfront/usercenter/upscorm/upResult";
    }

    //个人中心  个人资料
    @RequestMapping(value = "userInfoDo", method = {RequestMethod.GET})
    public String userInfoDo() {
        return "scormfront/usercenter/userInfo";
    }

    //个人中心  已注册课件
    @RequestMapping(value = "registerScormDo", method = {RequestMethod.GET})
    public String registerScormDo() {
        return "scormfront/usercenter/registerScorm";
    }

    //个人中心  已完成课件
    @RequestMapping(value = "finishScormDo", method = {RequestMethod.GET})
    public String finishScormDo() {
        return "scormfront/usercenter/finishScorm";
    }

    //个人中心  已收藏课件
    @RequestMapping(value = "collectScormDo", method = {RequestMethod.GET})
    public String collectScormDo() {
        return "scormfront/usercenter/collectScorm";
    }

    //个人中心  笔记本
    @RequestMapping(value = "notesDo", method = {RequestMethod.GET})
    public String notesDo() {
        return "scormfront/usercenter/notes";
    }
}
