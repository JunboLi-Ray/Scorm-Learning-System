package com.sls.scorm.dao.impl;

import com.core.page.dao.PageDao;
import com.sls.scorm.dao.ScormDao;
import com.sls.scorm.entity.Sco;
import com.sls.scorm.entity.Scorm;
import com.sls.scorm.entity.ScormSummarize;
import com.sls.scorm.entity.StudyNote;
import com.sls.util.DictConstant;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.namedparam.BeanPropertySqlParameterSource;
import org.springframework.jdbc.support.GeneratedKeyHolder;
import org.springframework.jdbc.support.KeyHolder;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository("scormDao")
public class ScormDaoImpl extends PageDao implements ScormDao {

    @Override
    public int addScorm(Scorm scorm) {
        String sql = "INSERT INTO ss_scorm(scorm_id,scorm_name,register_sum,recommend_level,total_time,img_path,description,upload_user_id,upload_date,in_use) " +
                "VALUES(:scormId,:scormName,:registerSum,:recommendLevel,:total_time,:imgPath,:description,:uploadUserId,:uploadDate,:inUse)";
        KeyHolder keyHolder = new GeneratedKeyHolder();
        getNamedParameterJdbcTemplate().update(sql, new BeanPropertySqlParameterSource(scorm), keyHolder);
        return keyHolder.getKey().intValue();
    }

    @Override
    public void addScormSummarize(ScormSummarize scormSummarize) {
        String sql = "INSERT INTO luss_scorm_summarize(user_id,scorm_id,score,discuss,grade,discuss_date,complete_date) " +
                "VALUES(:userId, :scormId, :score, :discuss, :grade, :discussDate, :completeDate)";
        getNamedParameterJdbcTemplate().update(sql, new BeanPropertySqlParameterSource(scormSummarize));
    }

    @Override
    public void addVisitSum(int scormId) {
        String sql = "UPDATE ss_scorm SET register_sum=register_sum+1 WHERE scorm_id=?";
        getJdbcTemplate().update(sql, scormId);
    }

    @Override
    public Scorm findScormInfoByScormId(int scormId) {
        String sql = "SELECT * FROM ss_scorm WHERE scorm_id = ?";
        return getJdbcTemplate().queryForObject(sql, new BeanPropertyRowMapper<Scorm>(Scorm.class), scormId);
    }

    @Override
    public List<ScormSummarize> getAllCommentsByScormId(int scormId) {
        String sql = " SELECT lss.*,uu.`login_name` FROM luss_scorm_summarize lss " +
                " JOIN us_user uu ON lss.`user_id` = uu.user_id " +
                " WHERE uu.`in_use`='1' AND scorm_id = ?";
        return getJdbcTemplate().query(sql, new BeanPropertyRowMapper<ScormSummarize>(ScormSummarize.class), scormId);
    }

    @Override
    public boolean checkNotHasCollected(int scormId, int userId) {
        String sql = "SELECT * FROM luss_user_collect WHERE scorm_id = " + scormId + " AND user_id = ? ";
        return getJdbcTemplate().query(sql, new BeanPropertyRowMapper<Scorm>(Scorm.class), userId).isEmpty();
    }

    @Override
    public boolean checkNotHasRegister(int scormId, int userId) {
        String sql = "SELECT * FROM luss_scorm_sco WHERE scorm_id = " + scormId + " AND user_id = ? ";
        return getJdbcTemplate().query(sql, new BeanPropertyRowMapper<Sco>(Sco.class), userId).isEmpty();
    }

    @Override
    public void addCollectScorm(Scorm scorm) {
        String sql = "INSERT INTO luss_user_collect (user_id, scorm_id, collect_date)VALUES (:userId, :scormId, :collectDate)";
        getNamedParameterJdbcTemplate().update(sql, new BeanPropertySqlParameterSource(scorm));
    }

    @Override
    public List<Scorm> findCollectScormByScormIdAndUserId(int scormId, int userId) {
        String sql = "SELECT * FROM luss_user_collect WHERE user_id = " + userId + " AND scorm_id = ?";
        return getJdbcTemplate().query(sql, new BeanPropertyRowMapper<Scorm>(Scorm.class), scormId);
    }

    @Override
    public int addStudyNote(StudyNote studyNote) {
        String sql = "INSERT INTO luss_study_note(user_id,scorm_id,sco_id, `date`, note, note_type, img_path) " +
                "VALUES(:userId, :scormId, :scoId,:date, :note, :noteType, :imgPath)";
        KeyHolder keyHolder = new GeneratedKeyHolder();
        getNamedParameterJdbcTemplate().update(sql, new BeanPropertySqlParameterSource(studyNote), keyHolder);
        return keyHolder.getKey().intValue();
    }

    @Override
    public List<StudyNote> getAllStudyNotesByScormIdAndUserId(StudyNote studyNote) {
        String sql = "SELECT * FROM luss_study_note WHERE user_id =? AND scorm_id = ? ORDER BY note_id DESC ";
        return getJdbcTemplate().query(sql, new BeanPropertyRowMapper<StudyNote>(StudyNote.class), studyNote.getUserId(), studyNote.getScormId());
    }

    @Override
    public void changeTotalTimeByScormId(int scormId, String totalTime) {
        String sql = "UPDATE ss_scorm SET total_time=? WHERE scorm_id=?";
        getJdbcTemplate().update(sql, totalTime, scormId);
    }
}
