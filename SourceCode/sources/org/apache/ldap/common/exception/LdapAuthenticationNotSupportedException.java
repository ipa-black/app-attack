package org.apache.ldap.common.exception;

import javax.naming.AuthenticationNotSupportedException;
import org.apache.ldap.common.message.ResultCodeEnum;
/* loaded from: classes3.dex */
public class LdapAuthenticationNotSupportedException extends AuthenticationNotSupportedException implements LdapException {
    private final ResultCodeEnum resultCode;

    public LdapAuthenticationNotSupportedException(ResultCodeEnum resultCodeEnum) {
        this.resultCode = resultCodeEnum;
        checkResultCode();
    }

    public LdapAuthenticationNotSupportedException(String str, ResultCodeEnum resultCodeEnum) {
        super(str);
        this.resultCode = resultCodeEnum;
        checkResultCode();
    }

    @Override // org.apache.ldap.common.exception.LdapException
    public ResultCodeEnum getResultCode() {
        return this.resultCode;
    }

    private void checkResultCode() {
        int value = this.resultCode.getValue();
        if (value != 7 && value != 13 && value != 48) {
            throw new IllegalArgumentException(new StringBuffer("Unexceptable result code for this exception type: ").append(this.resultCode.getName()).toString());
        }
    }
}
