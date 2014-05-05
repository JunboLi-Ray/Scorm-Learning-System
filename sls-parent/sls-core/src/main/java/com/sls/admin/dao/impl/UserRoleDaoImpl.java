package com.sls.admin.dao.impl;

import com.core.page.dao.PageDao;
import com.sls.admin.dao.UserRoleDao;
import com.sls.admin.entity.UserRole;
import org.springframework.jdbc.core.namedparam.BeanPropertySqlParameterSource;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository("userRoleDao")
public class UserRoleDaoImpl extends PageDao implements UserRoleDao {

    @Override
    public int addUserRole(UserRole userRole) {
        final String sql = "INSERT INTO sys_user_role(user_id, role_id) VALUES(:userId, :roleId)";
        return getNamedParameterJdbcTemplate().update(sql, new BeanPropertySqlParameterSource(userRole));
    }

    @Override
    public int editRoleByUserId(UserRole userRole){
        String sql = "UPDATE sys_user_role SET role_id = :roleId WHERE user_id = :userId";
        return getNamedParameterJdbcTemplate().update(sql, new BeanPropertySqlParameterSource(userRole));
    }

    @Override
    public int deleteUserRoleByUserId(String userId) {
        final String sql = "DELETE FROM sys_user_role WHERE user_id = ?";
        return getJdbcTemplate().update(sql, userId);
    }
}
