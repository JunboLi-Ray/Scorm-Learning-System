package com.sls.user.dao.impl;

import com.core.page.dao.PageDao;
import com.sls.user.dao.UserAttentionDao;
import com.sls.user.entity.UserAttention;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.namedparam.BeanPropertySqlParameterSource;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository("userAttentionDao")
public class UserAttentionDaoImpl extends PageDao implements UserAttentionDao {

    @Override
    public List<UserAttention> findAttention(int userId, int userAttentionId) {
        String sql = "SELECT * FROM us_user_attention WHERE user_id=? AND user_attention_id=?";
        return getJdbcTemplate().query(sql, new BeanPropertyRowMapper<UserAttention>(UserAttention.class), userId, userAttentionId);
    }

    @Override
    public void addUserAttention(UserAttention userAttention) {
        String sql = "INSERT INTO us_user_attention(user_id,user_attention_id,new_message) VALUES(:userId,:userAttentionId,:newMessage)";
        getNamedParameterJdbcTemplate().update(sql, new BeanPropertySqlParameterSource(userAttention));
    }

    @Override
    public void delUserAttention(UserAttention userAttention) {
        String sql = "DELETE FROM us_user_attention WHERE user_id=? AND user_attention_id=?";
        getJdbcTemplate().update(sql, userAttention.getUserId(), userAttention.getUserAttentionId());
    }
}