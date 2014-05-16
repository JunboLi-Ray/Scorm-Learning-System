package com.sls.scorm.service.impl;

import com.core.page.entity.Page;
import com.core.page.entity.PageParameter;
import com.sls.scorm.dao.ScoDao;
import com.sls.scorm.dao.ScormDao;
import com.sls.scorm.dao.SummarizeDao;
import com.sls.scorm.entity.*;
import com.sls.scorm.service.ScormService;
import com.sls.system.service.DictService;
import com.sls.user.dao.UserDao;
import com.sls.user.entity.User;
import com.sls.util.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.xml.sax.SAXException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.xml.parsers.ParserConfigurationException;
import javax.xml.xpath.XPathExpressionException;
import java.io.IOException;
import java.util.Date;
import java.util.LinkedList;
import java.util.List;

@Transactional
@Service("scormService")
public class ScormServiceImpl implements ScormService {

    @Autowired
    private UserDao userDao;

    @Autowired
    private ScormDao scormDao;

    @Autowired
    private ScoDao scoDao;

    @Autowired
    private SummarizeDao summarizeDao;

    @Autowired
    private DictService dictService;

    @Override
    public void upScorm(HttpServletRequest request, String upFile, String upImg, Scorm scorm) throws ServletException, IOException, ParserConfigurationException, SAXException,
            XPathExpressionException {
        try {
            FileUp fileUp = new FileUp();
            Date date = new Date();
            int userId = userDao.findInUseUserByLoginName(LoginUserUtil.getLoginName()).get(0).getUserId();
            String fileName = date.getTime() + userId + "";
//            scorm.setScormName(BaseUtil.iso2utf(scorm.getScormName()));
            scorm.setImgPath(fileUp.upImg(request, DictConstant.TOP_SCORM_FILE_NAME, "/" + fileName, DictConstant.SCORM_IMG, upImg));
            scorm.setUploadUserId(userId);
            List<Sco> scoNodes = fileUp.analyzeXml(fileUp.upScorm(request, fileName, upFile) + DictConstant.IMSMANIFEST);
            int scormId = scormDao.addScorm(scorm);
            scoNodes.add(new Sco(scorm.getScormName(), DictConstant.SCO_MAIN, "0", "1", "", ""));
            ScoInfo scoInfo = new ScoInfo();
            for (Sco scoNode : scoNodes) {
                scoNode.setScormId(scormId);
                scoInfo.setScoId(scoDao.addSco(scoNode));
                scoInfo.setLaunchData(scoNode.getLaunchData());
                scoInfo.setPassRaw(scoNode.getPassRaw());
                scoInfo.setCoreCredit(scoNode.getCoreCredit());
                scoDao.addScoInfo(scoInfo);
            }
            request.setAttribute("result", "上传成功");
        } catch (Exception e) {
            request.setAttribute("result", "上传失败");
        }
    }

    @Override
    public String registerScorm(int scormId, HttpServletRequest request) {
        User user = userDao.findInUseUserByLoginName(LoginUserUtil.getLoginName()).get(0);
        int scormState = scormDao.findScormInfoByScormId(scormId).getInUse();
        if (scoDao.findScosByScormIdAndUserId(scormId, user.getUserId()).size() > 0) {
            return "对不起，您已注册。";
        }
        if (scormState == DictConstant.NO_USE) {
            return "此课件不可注册。";
        }
        List<Sco> scoList = scoDao.findScosByScormIdAndUserId(scormId, DictConstant.VOID_VALUE);
        ScoInfo scoInfo;
        for (Sco sco : scoList) {
            sco.setUserId(user.getUserId());
            scoInfo = scoDao.getScoApiInfoByScoId(sco.getScoId()).get(0);
            scoInfo.setScoId(scoDao.addSco(sco));
            //TOdo 找到用户级别名称
            user.getLevelName();
            scoInfo.setCoreStudentId("");
            scoInfo.setCoreStudentName(user.getUserName());
            scoDao.addScoInfo(scoInfo);
        }
        ScormSummarize scormSummarize = new ScormSummarize();
        scormSummarize.setUserId(user.getUserId());
        scormSummarize.setScormId(scormId);
        scormDao.addScormSummarize(scormSummarize);
        scormDao.addVisitSum(scormId);
        return "注册成功。";
    }

    @Override
    public String collectScorm(int scormId, HttpServletRequest request) {
        int userId = userDao.findInUseUserByLoginName(LoginUserUtil.getLoginName()).get(0).getUserId();
        int scormState = scormDao.findScormInfoByScormId(scormId).getInUse();
        if (scormDao.findCollectScormByScormIdAndUserId(scormId, userId).size() > 0) {
            return "对不起，您已收藏。";
        }
        if (scormState == DictConstant.NO_USE) {
            return "此课件不可收藏。";
        }
        Scorm scorm = new Scorm();
        scorm.setScormId(scormId);
        scorm.setUserId(userId);
        scorm.setCollectDate(DateUtil.getSystemDate("yyyy-MM-dd"));
        scormDao.addCollectScorm(scorm);
        return "收藏成功。";
    }

    @Override
    public void addStudyNote(StudyNote studyNote) {
        studyNote.setNoteType(DictConstant.TEXT_TYPE);
        studyNote.setImgPath("");
        studyNote.setDate(DateUtil.getSystemDate("yyyy-MM-dd HH:mm:ss"));
        studyNote.setUserId(userDao.findInUseUserByLoginName(LoginUserUtil.getLoginName()).get(0).getUserId());
        scormDao.addStudyNote(studyNote);
    }

    @Override
    public void getAllStudyNotesByScormIdAndUserId(int i, HttpServletRequest request) {
        int userId = userDao.findInUseUserByLoginName(LoginUserUtil.getLoginName()).get(0).getUserId();
        StudyNote studyNote = new StudyNote();
        studyNote.setScormId(i);
        studyNote.setUserId(userId);
        List<StudyNote> studyNoteList = scormDao.getAllStudyNotesByScormIdAndUserId(studyNote);
        for (StudyNote studyNote1 : studyNoteList) {
            studyNote1.setTime(studyNote1.getDate().substring(10));
            studyNote1.setDate(studyNote1.getDate().substring(0, 10));
        }
        request.setAttribute("noteList", studyNoteList.size() == 0 ? new LinkedList<StudyNote>() : studyNoteList);
    }

    @Override
    public void upStudyImg(HttpServletRequest request, String upImg, StudyNote studyNote) throws ServletException, IOException {
        FileUp fileUp = new FileUp();
        Date date = new Date();
        int userId = userDao.findInUseUserByLoginName(LoginUserUtil.getLoginName()).get(0).getUserId();
        studyNote.setNoteType(DictConstant.IMG);
        studyNote.setUserId(userId);
        studyNote.setDate(DateUtil.getSystemDate("yyyy-MM-dd HH:mm:ss"));
        studyNote.setImgPath(fileUp.upImg(request, DictConstant.STUDY_IMG, "/" + userId, studyNote.getScormId() + date.getTime() + DictConstant.PHOTO_FORM, upImg));
        scormDao.addStudyNote(studyNote);
    }

    @Override
    public void studyScorm(int scormId, HttpServletRequest request) {
        Scorm scorm = scormDao.findScormInfoByScormId(scormId);
        if (scorm.getInUse() == DictConstant.NO_USE) {
            return;
        }
        request.setAttribute("scorm", scorm);
    }

    @Override
    public void studyScormZtree(int scormId, HttpServletRequest request) {
        int userId = userDao.findInUseUserByLoginName(LoginUserUtil.getLoginName()).get(0).getUserId();
        List<Sco> scoList = scoDao.findScosByScormIdAndUserId(scormId, userId);
        for (Sco sco : scoList) {
            sco.setShowStudyState(dictService.changeDictCodeToValue(sco.getStudyState(), DictConstant.STUDY_STATE));
        }
        request.setAttribute("scoList", scoList);
        request.setAttribute("isLast", DictConstant.LAST_VISIT);
    }

    @Override
    public void changeScoState(int scormId, int scoId) {
        int userId = userDao.findInUseUserByLoginName(LoginUserUtil.getLoginName()).get(0).getUserId();
        ScoInfo scoInfo = new ScoInfo();
        scoInfo.setScoId(scoId);
        scoInfo.setCoreEntry(DictConstant.ENTRY_RE);
        scoDao.changeScoInfoByScoId(scoInfo);
        //改变最后访问SCO
        Sco oneSco = new Sco();
        oneSco.setUserId(userId);
        oneSco.setScormId(scormId);
        oneSco.setScoId(scoId);
        scoDao.setLastVisitScoByScoId(oneSco);
        //将所有父节点变为已看
        List<Sco> scoList = scoDao.findScosByScormIdAndUserId(scormId, userId);
        for (Sco sco : scoList) {
            if (sco.getScoId() == scoId) {
                changeState(sco, scoList);
                break;
            }
        }
    }

    public void changeState(Sco sco, List<Sco> scoList) {
        if (sco.getStudyState() != DictConstant.STUDY_STATE_1) {
            scoDao.changeStudyStateByScoId(sco.getScoId(), DictConstant.STUDY_STATE_1);
            for (Sco onesco : scoList) {
                if (onesco.getTreeId().equals(sco.getTreeParentId())) {
                    changeState(onesco, scoList);
                    break;
                }
            }
        }
    }

    @Override
    public List<ScoInfo> getScoApiInfo(int scoId) {
        return scoDao.getScoApiInfoByScoId(scoId);
    }

    @Override
    public void changeScoInfoByScoId(ScoInfo scoInfo, int scormId) {
        //获取本次学习时间，分别加入课件总学习时间和这个SCO总学习时间
        String sessionTime = scoInfo.getCoreSessionTime();
        if (!("".equals(sessionTime))) {
            scoInfo.setCoreTotalTime(DateUtil.getTotalTime(sessionTime, scoDao.getScoApiInfoByScoId(scoInfo.getScoId()).get(0).getCoreTotalTime()));
            scormDao.changeTotalTimeByScormId(scormId, DateUtil.getTotalTime(sessionTime, scormDao.findScormInfoByScormId(scormId).getTotalTime()));
        }
        //处理SCO的学习状态,带测试和不带测试
        if (scoInfo.getCoreCredit() == DictConstant.CREDIT_IM) {
            if (("").equals(scoInfo.getCoreLessonStatus())) {
                scoInfo.setCoreLessonStatus(DictConstant.LESSON_STATUS_FAILED);
                if (Integer.parseInt(scoInfo.getCoreScoreRaw()) >= Integer.parseInt(scoInfo.getPassRaw())) {
                    scoInfo.setCoreLessonStatus(DictConstant.LESSON_STATUS_PASS);
                }
            }
        } else {
            if (("").equals(scoInfo.getCoreLessonStatus())) {
                scoInfo.setCoreLessonStatus(DictConstant.LESSON_STATUS_COMPLETED);
            }
        }
        //删除不该修改项目（置为空串）
        scoInfo = changeScoInfoFromRead(scoInfo);
        scoDao.changeScoInfoByScoId(scoInfo);
        //判断是否通过整个课程，并更新成绩
        checkAllSco(scormId);
    }

    public void checkAllSco(int scormId) {
        int userId = userDao.findInUseUserByLoginName(LoginUserUtil.getLoginName()).get(0).getUserId();
        ScormSummarize scormSummarize = scormDao.findScormSummarizeByUserIdAndScormId(userId, scormId);
        if (scoDao.isAllScoClick(scormId, userId)) {
            //课件完成方式为浏览即可完成时,判断通过并处理
            if (scormDao.findScormInfoByScormId(scormId).getCompleteWay() != DictConstant.VOID_VALUE) {
                if (scormSummarize.getCompleteDate().equals("")) {
                    changeSummarize(scormSummarize, "");
                    return;
                }
            }
            //课件完成方式为默认时，判断通过并处理
            checkIsPassAllSco(scormSummarize, scormId, userId);
        }
    }

    public void checkIsPassAllSco(ScormSummarize scormSummarize, int scormId, int userId) {
        //1不带测试的课件
        List<ScoInfo> scoInfoList = scoDao.findScosByCreditAndScormIdAndUserId(DictConstant.CREDIT_NO, scormId, userId);
        for (ScoInfo oneScoInfo : scoInfoList) {
            if (!oneScoInfo.getCoreLessonStatus().equals(DictConstant.LESSON_STATUS_COMPLETED)) {
                return;
            }
        }
        //2带测试的课件
        scoInfoList = scoDao.findScosByCreditAndScormIdAndUserId(DictConstant.CREDIT_IM, scormId, userId);
        int i = 0, sum = 0, flag = 0;
        for (ScoInfo oneScoInfo : scoInfoList) {
            if ((!oneScoInfo.getCoreLessonStatus().equals(DictConstant.LESSON_STATUS_PASS))
                    || oneScoInfo.getCoreScoreRaw().equals("")
                    || (Integer.parseInt(oneScoInfo.getCoreScoreRaw()) < Integer.parseInt(oneScoInfo.getPassRaw()))) {
                return;
            }
            i++;
            if (!oneScoInfo.getCoreScoreRaw().equals("")) {
                sum += Integer.parseInt(oneScoInfo.getCoreScoreRaw());
                flag = 1;
            }
        }
        defaultPassDeal(scormSummarize, flag, sum, i);
    }

    public void defaultPassDeal(ScormSummarize scormSummarize, int flag, int sum, int i) {
        if (flag == 1) {
            //1.1带测试时，若原来有成绩，则比较成绩，只有大于原有成绩才更新
            if (!scormSummarize.getCompleteDate().equals("")) {
                if (!scormSummarize.getGrade().equals("")) {
                    if ((sum / i) > Integer.parseInt(scormSummarize.getGrade())) {
                        changeSummarize(scormSummarize, sum / i + "");
                    }
                }
            } else {
                changeSummarize(scormSummarize, sum / i + "");
            }
        } else {
            //1.2不带测试时，若原来没有成绩，则更新成绩
            if (scormSummarize.getCompleteDate().equals("")) {
                changeSummarize(scormSummarize, "");
            }
        }
    }

    public void changeSummarize(ScormSummarize scormSummarize, String grade) {
        scormSummarize.setGrade(grade);
        scormSummarize.setCompleteDate(DateUtil.getCurrentTimestamp().toString().substring(0, 16));
        scormDao.changeCompleteInfoByScormIdAndUserId(scormSummarize);
    }

    public ScoInfo changeScoInfoFromRead(ScoInfo scoInfo) {
        scoInfo.setCoreStudentId("");
        scoInfo.setCoreStudentName("");
        scoInfo.setCoreCredit("");
        scoInfo.setCoreEntry("");
        scoInfo.setLaunchData("");
        return scoInfo;
    }

    @Override
    public void getScormInfoAndChapterInfo(int scormId, HttpServletRequest request) {
        Scorm scormInfo = scormDao.findScormInfoByScormId(scormId);
        if (scormInfo.getInUse() == DictConstant.NO_USE) {
            return;
        }
        request.setAttribute("scormInfo", scormInfo);
        List<Sco> scoList = scoDao.findScosByScormIdAndUserId(scormId, DictConstant.VOID_VALUE);
        for (Sco sco : scoList) {
            sco.setShowStudyState(dictService.changeDictCodeToValue(sco.getStudyState(), DictConstant.STUDY_STATE));
        }
        request.setAttribute("scoList", scoList);
        request.setAttribute("isLast", DictConstant.LAST_VISIT);
    }

    @Override
    public void getAllCommentsByScormId(int scormId, HttpServletRequest request) {
        request.setAttribute("allComments", scormDao.getAllCommentsByScormId(scormId));
    }

    @Override
    public void judgeDemonstrationStatus(int scormId, HttpServletRequest request) {
        boolean collectScorm = true;
        boolean registerScorm = true;
        boolean complete = true;
        boolean isTourist = "".equals(LoginUserUtil.getLoginName());
        if (!isTourist) {
            int userId = userDao.findInUseUserByLoginName(LoginUserUtil.getLoginName()).get(0).getUserId();
            if (scormDao.checkNotHasCollected(scormId, userId)) {
                collectScorm = false;
            }
            if (scormDao.checkNotHasRegister(scormId, userId)) {
                registerScorm = false;
            }
            if (scormDao.getCompleteInfo(scormId, userId)) {
                complete = false;
            }
        }
        request.setAttribute("collectScorm", collectScorm);
        request.setAttribute("registerScorm", registerScorm);
        request.setAttribute("complete", complete);
    }

    @Override
    public Page<Scorm> listNotAuditScormPageList(PageParameter pageParameter, Scorm scorm) {
        return scormDao.listNotAuditScormPageList(pageParameter, scorm);
    }

    @Override
    public Page<Scorm> listAuditScormPageList(PageParameter pageParameter, Scorm scorm) {
        Page<Scorm> scormPage = scormDao.listAuditScormPageList(pageParameter, scorm);
        String totalTime;
        int[] splitTime;
        for (Scorm oneScorm : scormPage.getResultList()) {
            totalTime = oneScorm.getTotalTime();
            if (("").equals(totalTime)) {
                oneScorm.setTotalTime(DictConstant.NO_LOG);
            } else {
                splitTime = DateUtil.splitScormTime(totalTime);
                oneScorm.setTotalTime(splitTime[0] + "小时" + splitTime[1] + "分钟" + splitTime[2] + "秒" + splitTime[3] + "毫秒");
            }
        }
        return scormPage;
    }

    @Override
    public void checkScormInfo(HttpServletRequest request, int scormId) {
        Scorm scorm = scormDao.findScormInfoByScormId(scormId);
        scorm.setShowRecommendLevel(dictService.changeDictCodeToValue(scorm.getRecommendLevel(), DictConstant.RECOMMEND));
        scorm.setShowUploadUserId(userDao.findUserAllInfoById(scorm.getUploadUserId()).getUserName());
        List<Sco> scoList = scoDao.findScosByScormIdAndUserId(scormId, DictConstant.VOID_VALUE);
        request.setAttribute("scorm", scorm);
        request.setAttribute("scoList", scoList);
        request.setAttribute("inUse", DictConstant.IN_USE);
        request.setAttribute("levelOne", DictConstant.RECOMMEND_1);
        request.setAttribute("levelTwo", DictConstant.RECOMMEND_2);
        request.setAttribute("levelThree", DictConstant.RECOMMEND_3);
        request.setAttribute("levelFour", DictConstant.RECOMMEND_4);
        request.setAttribute("levelFive", DictConstant.RECOMMEND_5);
        request.setAttribute("completeWay1", DictConstant.COMPLETE_WAY_1);
        request.setAttribute("completeWay0", DictConstant.VOID_VALUE);
    }

    @Override
    public void changeScormInUse(int scormId, int isUse) {
        scormDao.changeScormInUse(scormId, isUse);
    }

    @Override
    public String changeScormRecommend(int scormId, int recommend) {
        scormDao.changeScormRecommend(scormId, recommend);
        return dictService.changeDictCodeToValue(recommend, DictConstant.RECOMMEND);
    }

    @Override
    public void changScormCompleteWay(int scormId, int completeWay) {
        scormDao.changScormCompleteWayByScormId(scormId, completeWay);
    }

    @Override
    public void evaluateScorm(ScormSummarize scormSummarize) {
        int userId = userDao.findInUseUserByLoginName(LoginUserUtil.getLoginName()).get(0).getUserId();
        scormSummarize.setUserId(userId);
        summarizeDao.changeSummarizeScoreByUserIdAndScormId(scormSummarize);
        scormDao.updateScormScoreByScormId(scormSummarize.getScormId());
    }
}
