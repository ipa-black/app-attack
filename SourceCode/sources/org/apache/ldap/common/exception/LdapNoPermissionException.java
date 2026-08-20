package org.apache.ldap.common.exception;

import javax.naming.NoPermissionException;
import org.apache.ldap.common.message.ResultCodeEnum;
/* loaded from: classes3.dex */
public class LdapNoPermissionException extends NoPermissionException implements LdapException {
    public LdapNoPermissionException() {
    }

    public LdapNoPermissionException(String str) {
        super(str);
    }

    @Override // org.apache.ldap.common.exception.LdapException
    public ResultCodeEnum getResultCode() {
        return ResultCodeEnum.INSUFFICIENTACCESSRIGHTS;
    }
}
