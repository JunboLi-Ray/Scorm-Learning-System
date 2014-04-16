package com.genghis.ptas.security.service;

import com.genghis.ptas.security.entity.Permission;
import com.genghis.ptas.security.entity.RolePermission;

import java.util.List;

/**
 * 角色权限service接口
 *
 * @author chenl
 * @version 1.0.1
 */
public interface RolePermissionService {

    void addRolePermissions(int roleId, String permissionTokens);

    void editRolePermissions(int roleId, String permissionIds);

    List<Permission> findChoosedPermsByRoleId(int roleId);

    List<RolePermission> findRolePermissionsByRoleId(int roleId);

}
