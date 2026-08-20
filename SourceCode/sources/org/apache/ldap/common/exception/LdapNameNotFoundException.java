package org.apache.ldap.common.exception;

import javax.naming.NameNotFoundException;
import org.apache.ldap.common.message.ResultCodeEnum;
/* loaded from: classes3.dex */
public class LdapNameNotFoundException extends NameNotFoundException implements LdapException {
    public LdapNameNotFoundException() {
    }

    public LdapNameNotFoundException(String str) {
        super(str);
    }

    @Override // org.apache.ldap.common.exception.LdapException
    public ResultCodeEnum getResultCode() {
        return ResultCodeEnum.NOSUCHOBJECT;
    }
}
