package com.genghis.sls.security.service.impl;

import com.genghis.core.page.entity.Page;
import com.genghis.core.page.entity.PageParameter;
import com.genghis.sls.security.dao.RoleDao;
import com.genghis.sls.security.dao.RolePermissionDao;
import com.genghis.sls.security.entity.MenuPerm;
import com.genghis.sls.security.entity.Permission;
import com.genghis.sls.security.entity.Role;
import com.genghis.sls.security.service.RolePermissionService;
import com.genghis.sls.security.service.RoleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * 角色service实现
 *
 * @author chenl
 * @version 1.0.1
 */

@Transactional
@Service("roleService")
public class RoleServiceImpl implements RoleService {

    @Autowired
    private RoleDao roleDao;

    @Autowired
    private RolePermissionDao rolePermissionDao;

    @Autowired
    private RolePermissionService rolePermissionService;

    @Override
    public Page<Role> findRolePageList(PageParameter pageParameter, Role role) {
        return roleDao.findRolePageList(pageParameter, role);
    }

    @Override
    public List<Role> findAllRole() {
        return roleDao.findAllRole();
    }

    @Override
    public int addRole(Role role) {
        return roleDao.addRole(role);
    }

    @Override
    public void editRole(Role role) {
        roleDao.editRole(role);
    }

    @Override
    public int delRoleDo(Role role) {
        rolePermissionDao.deleteRolePermissionsByRoleId(role.getId());
        return roleDao.delRole(role.getId());
    }

    @Override
    public Role findRoleById(int id) {
        return roleDao.findRoleById(id);
    }

    @Override
    public Role findRoleByRoleName(String roleName) {
        return roleDao.findRoleByRoleName(roleName);
    }

    @Override
    public Boolean checkRepeatRoleName(String roleName, String primaryRoleName) {
        Boolean notHasRepeatName = roleDao.checkRepeatRoleName(roleName);
        Boolean notEquOldName = !(roleName.equals(primaryRoleName));
        return !(!notHasRepeatName & notEquOldName);
    }

    @Override
    public Role findRoleByUserId(int userId) {
        return roleDao.findRoleByUserId(userId);
    }

    public void setHasChecked(List<MenuPerm> menuPermList, List<Permission> choosedPerms) {
        for (MenuPerm menuPerm : menuPermList) {
            for (Permission permissionSelect : choosedPerms) {
                if (permissionSelect.getPermissionToken().equals(menuPerm.getPermissionToken())) {
                    menuPerm.setChecked(true);
                }
            }
        }
    }

    public String getPermissionTokenValue(List<Permission> choosedPerms) {
        String permissionTokenValue = "";
        if (choosedPerms != null && choosedPerms.size() != 0) {
            for (Permission permission : choosedPerms) {
                permissionTokenValue += permission.getDescription() + ",";
            }
            permissionTokenValue = permissionTokenValue.substring(0, permissionTokenValue.length() - 1);
        }
        return permissionTokenValue;
    }

}
