package org.apache.ldap.common.exception;

import javax.naming.ContextNotEmptyException;
import org.apache.ldap.common.message.ResultCodeEnum;
/* loaded from: classes3.dex */
public class LdapContextNotEmptyException extends ContextNotEmptyException implements LdapException {
    public LdapContextNotEmptyException() {
    }

    public LdapContextNotEmptyException(String str) {
        super(str);
    }

    @Override // org.apache.ldap.common.exception.LdapException
    public ResultCodeEnum getResultCode() {
        return ResultCodeEnum.NOTALLOWEDONNONLEAF;
    }
}
