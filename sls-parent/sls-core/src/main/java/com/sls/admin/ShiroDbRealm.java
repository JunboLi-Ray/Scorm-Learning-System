package com.sls.admin;

import com.sls.admin.entity.User;
import com.sls.admin.service.AccountService;
import org.apache.shiro.authc.*;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.authz.SimpleAuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

public class ShiroDbRealm extends AuthorizingRealm {

    private AccountService accountService;

    @Autowired
    public void setAccountService(AccountService accountService) {
        this.accountService = accountService;
    }

    @Override
    protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principals) {
        String loginName = (String) getAvailablePrincipal(principals);
        if (loginName != null) {
            List<String> roles = accountService.getRolesByLoginName(loginName);
            SimpleAuthorizationInfo info = new SimpleAuthorizationInfo();
            if (roles != null) {
                info.addRoles(roles);
            }
            return info;
        }
        return null;
    }

    @Override
    protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken authcToken) throws AuthenticationException {
        UsernamePasswordToken token = (UsernamePasswordToken) authcToken;
        String loginName = token.getUsername();
        if (loginName != null && !"".equals(loginName)) {
            List<User> userList=accountService.findUserByLoginName(loginName);
            if(userList.size()>0){
                return new SimpleAuthenticationInfo(userList.get(0).getLoginName(), userList.get(0).getPassword(), getName());
            }
        }
        return null;
    }
}
