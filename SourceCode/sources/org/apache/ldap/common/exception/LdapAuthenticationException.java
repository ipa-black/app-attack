package org.apache.ldap.common.exception;

import javax.naming.AuthenticationException;
import org.apache.ldap.common.message.ResultCodeEnum;
/* loaded from: classes3.dex */
public class LdapAuthenticationException extends AuthenticationException implements LdapException {
    @Override // org.apache.ldap.common.exception.LdapException
    public ResultCodeEnum getResultCode() {
        return ResultCodeEnum.INVALIDCREDENTIALS;
    }
}
