package org.apache.ldap.common.exception;

import javax.naming.ServiceUnavailableException;
import org.apache.ldap.common.message.ResultCodeEnum;
/* loaded from: classes3.dex */
public class LdapServiceUnavailableException extends ServiceUnavailableException implements LdapException {
    private final ResultCodeEnum resultCode;

    public LdapServiceUnavailableException(ResultCodeEnum resultCodeEnum) {
        checkResultCode(resultCodeEnum);
        this.resultCode = resultCodeEnum;
    }

    public LdapServiceUnavailableException(String str, ResultCodeEnum resultCodeEnum) {
        super(str);
        checkResultCode(resultCodeEnum);
        this.resultCode = resultCodeEnum;
    }

    private void checkResultCode(ResultCodeEnum resultCodeEnum) {
        if (!ResultCodeEnum.getServiceCodes().contains(resultCodeEnum)) {
            throw new IllegalArgumentException(new StringBuffer("Only the following LDAP result codes can be used: ").append(ResultCodeEnum.getSearchCodes()).toString());
        }
    }

    @Override // org.apache.ldap.common.exception.LdapException
    public final ResultCodeEnum getResultCode() {
        return this.resultCode;
    }
}
