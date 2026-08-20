package org.apache.ldap.common.exception;

import javax.naming.NamingException;
import org.apache.ldap.common.message.ResultCodeEnum;
/* loaded from: classes3.dex */
public class LdapNamingException extends NamingException implements LdapException {
    private final ResultCodeEnum resultCode;

    public LdapNamingException(ResultCodeEnum resultCodeEnum) {
        this.resultCode = resultCodeEnum;
    }

    public LdapNamingException(String str, ResultCodeEnum resultCodeEnum) {
        super(str);
        this.resultCode = resultCodeEnum;
    }

    @Override // org.apache.ldap.common.exception.LdapException
    public ResultCodeEnum getResultCode() {
        return this.resultCode;
    }
}
