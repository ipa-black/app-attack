package org.apache.ldap.common.exception;

import javax.naming.InvalidNameException;
import org.apache.ldap.common.message.ResultCodeEnum;
/* loaded from: classes3.dex */
public class LdapInvalidNameException extends InvalidNameException implements LdapException {
    private final ResultCodeEnum resultCode;

    public LdapInvalidNameException(ResultCodeEnum resultCodeEnum) {
        this.resultCode = resultCodeEnum;
    }

    public LdapInvalidNameException(String str, ResultCodeEnum resultCodeEnum) {
        super(str);
        this.resultCode = resultCodeEnum;
    }

    @Override // org.apache.ldap.common.exception.LdapException
    public ResultCodeEnum getResultCode() {
        return this.resultCode;
    }
}
