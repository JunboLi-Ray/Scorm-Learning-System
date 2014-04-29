package com.sls.admin;

import com.core.autocomplete.service.AutoCompleteService;
import com.core.page.entity.Page;
import com.core.page.entity.PageParameter;
import com.sls.admin.entity.Role;
import com.sls.admin.service.PermissionService;
import com.sls.admin.service.RolePermissionService;
import com.sls.admin.service.RoleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.security.GeneralSecurityException;

/**
 * 用户组类
 *
 * @author chenl
 * @version 1.0.1
 */

@Controller
@Transactional
@RequestMapping("/admin/role/")
public class RoleController {

    @Autowired
    private RoleService roleService;

    @Autowired
    private PermissionService permissionService;

    @Autowired
    private RolePermissionService rolePermissionService;

    @Autowired
    private AutoCompleteService autoCompleteService;

    @RequestMapping(value = "listAllRoleDo", method = {RequestMethod.GET, RequestMethod.POST})
    public String listAllRoleDo() {
        return "scormadmin/role/listAllRoleDo";
    }

    @RequestMapping(value = "listAllRole", method = {RequestMethod.GET, RequestMethod.POST})
    @ResponseBody
    public Page<Role> listAllRole(PageParameter pageParameter, Role role) {
        return roleService.findRolePageList(pageParameter, role);
    }

    @RequestMapping(value = "addRoleDo", method = {RequestMethod.GET})
    public String addRoleDo(HttpServletRequest request) {
        return "scormadmin/role/addRoleDo";
    }

    @RequestMapping(value = "addRole", method = {RequestMethod.POST})
    @ResponseBody
    public void addRole(Role role, @RequestParam("permissionTokens") String permissionTokens) {
        roleService.checkRepeatRoleName(role.getRoleName(), "");
        int roleId = roleService.addRole(role);
        rolePermissionService.addRolePermissions(roleId, permissionTokens);
        autoCompleteService.initAutoComplete();
    }

    @RequestMapping(value = "editRoleDo", method = {RequestMethod.GET})
    public String editRoleDo(HttpServletRequest request, @RequestParam("id") int id) {
        Role role = roleService.findRoleById(id);
        request.setAttribute("role", role);
        return "scormadmin/role/editRoleDo";
    }

    @RequestMapping(value = "checkRepeatRoleName", method = {RequestMethod.POST})
    @ResponseBody
    public boolean checkRepeatRoleName(Role role, @RequestParam("primaryRoleName") String primaryRoleName) {
        return roleService.checkRepeatRoleName(role.getRoleName(), primaryRoleName);
    }

    @RequestMapping(value = "editRole", method = {RequestMethod.POST})
    @ResponseBody
    public void editRole(Role role, @RequestParam("permissionTokens") String permissionTokens) throws GeneralSecurityException {
        roleService.editRole(role);
        autoCompleteService.initAutoComplete();
    }

    @RequestMapping(value = "delRoleDo", method = {RequestMethod.DELETE})
    @ResponseBody
    public void delRoleDo(@RequestParam("id") int id) throws GeneralSecurityException {
        Role role = roleService.findRoleById(id);
        roleService.delRoleDo(role);
        autoCompleteService.initAutoComplete();
    }
}