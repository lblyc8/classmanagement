package com.lyc.classmanag.shiro;

import com.lyc.classmanag.entity.User;
import com.lyc.classmanag.service.UserService;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.AuthenticationInfo;
import org.apache.shiro.authc.AuthenticationToken;
import org.apache.shiro.authc.SimpleAuthenticationInfo;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.authz.SimpleAuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.Set;

public class MyRealm extends AuthorizingRealm {

    @Autowired
    private UserService userService;

    /**
     * 登录身份验证
     * @param token
     * @return
     * @throws AuthenticationException
     */
    @Override
    protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken token) throws AuthenticationException {
        String UserId = token.getPrincipal().toString();
        User user = userService.findUserById(UserId);
        //应该对不同的异常进行分类，例如用户名/密码错误抛出AuthenticationException（认证异常）,
        //而根据用户status字段又可判断该用户是否被冻结，以抛出LockedAccountException（账户锁定异常）
        if (user != null) {
            //此处可加入盐的设定
            AuthenticationInfo authenticationInfo = new SimpleAuthenticationInfo(user.getUserName(),user.getPassword(),"");
            return authenticationInfo;
        }else{
            return null;
        }
    }

    /**
     * 用户权限验证
     * @param principals
     * @return
     */
    @Override
    protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principals) {
        String username = principals.getPrimaryPrincipal().toString();
        SimpleAuthorizationInfo authorizationInfo = new SimpleAuthorizationInfo();
        Set<String> role = userService.findRole(username);
        Set<String> permission = userService.findPermission(role);
        authorizationInfo.setRoles(role);
        authorizationInfo.setStringPermissions(permission);
        return authorizationInfo;
    }
}
